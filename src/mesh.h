
#ifndef MESH_H
#define MESH_H

#define MESH_FULL_OPAQUE      0x00  // Fully opaque object (all polygons are opaque: all t.flags < 0x02)
#define MESH_HAS_TRANSPARENCY 0x01  // Fully transparency or has transparency and opaque polygon / object

#define ANIM_CMD_MOVE               0x01
#define ANIM_CMD_CHANGE_DIRECTION   0x02
#define ANIM_CMD_JUMP               0x04

#define COLLISION_NONE              (0x00)
#define COLLISION_TRIMESH           (0x01)
#define COLLISION_BOX               (0x02)
#define COLLISION_SPHERE            (0x03)
#define COLLISION_BASE_BOX          (0x04)


#include <SDL2/SDL_platform.h>
#include <SDL2/SDL_opengl.h>
#include <cstdint>
#include <bullet/LinearMath/btScalar.h>
#include "vertex_array.h"
#include "object.h"
#include <memory>
#include <vector>
#include "vmath.h"

class btCollisionShape;
class btRigidBody;
class btCollisionShape;

struct Polygon;
struct Room;
struct EngineContainer;
struct OBB;
struct Vertex;
struct Render;
struct Entity;

struct TransparentPolygonReference {
    const Polygon *polygon;
    vertex_array* used_vertex_array;
    size_t firstIndex;
    size_t count;
    bool isAnimated;
};

/*
 * Animated version of vertex. Does not contain texture coordinate, because that is in a different VBO.
 */
struct AnimatedVertex {
    btVector3 position;
    std::array<float,4> color;
    btVector3 normal;
};

/*
 * base mesh, uses everywhere
 */
struct BaseMesh
{
    uint32_t m_id;                                                   // mesh's ID
    bool m_usesVertexColors;                                   // does this mesh have prebaked vertex lighting

    std::vector<Polygon> m_polygons;                                             // polygons data

    std::vector<Polygon> m_transparencyPolygons;                                // transparency mesh's polygons list

    uint32_t              m_texturePageCount;                                    // face without structure wrapping
    std::vector<uint32_t> m_elementsPerTexture;                            //
    std::vector<uint32_t> m_elements;                                             //
    uint32_t m_alphaElements;

    std::vector<Vertex> m_vertices;
    
    size_t m_animatedElementCount;
    size_t m_alphaAnimatedElementCount;
    std::vector<uint32_t> m_allAnimatedElements;
    std::vector<AnimatedVertex> m_animatedVertices;
    
    std::vector<TransparentPolygonReference> m_transparentPolygons;

    btVector3 m_center;                                            // geometry centre of mesh
    btVector3 m_bbMin;                                            // AABB bounding volume
    btVector3 m_bbMax;                                            // AABB bounding volume
    btScalar m_radius;                                                    // radius of the bounding sphere
    struct MatrixIndex {
        int8_t i=0, j=0;
    };
    std::vector<MatrixIndex> m_matrixIndices;                                       // vertices map for skin mesh

    GLuint                m_vboVertexArray;
    GLuint                m_vboIndexArray;
    GLuint                m_vboSkinArray;
    vertex_array*        m_mainVertexArray;
    
    // Buffers for animated polygons
    // The first contains position, normal and color.
    // The second contains the texture coordinates. It gets updated every frame.
    GLuint                m_animatedVboVertexArray;
    GLuint                m_animatedVboTexCoordArray;
    GLuint                m_animatedVboIndexArray;
    vertex_array*        m_animatedVertexArray;

    ~BaseMesh() {
        clear();
    }

    void clear();
    void findBB();
    void genVBO(const Render *renderer);
    void genFaces();
    uint32_t addVertex(const Vertex& v);
    uint32_t addAnimatedVertex(const Vertex& v);
    void polySortInMesh();
};


/*
 * base sprite structure
 */
struct Sprite
{
    uint32_t            id;                                                     // object's ID
    uint32_t            texture;                                                // texture number
    GLfloat             tex_coord[8];                                           // texture coordinates
    uint32_t            flag;
    btScalar            left;                                                   // world sprite's gabarites
    btScalar            right;
    btScalar            top;
    btScalar            bottom;
};

/*
 * Structure for all the sprites in a room
 */
struct SpriteBuffer
{
    // Vertex data for the sprites
    vertex_array *data;
    
    // How many sub-ranges the element_array_buffer contains. It has one for each texture listed.
    uint32_t              num_texture_pages;
    // The element count for each sub-range.
    uint32_t             *element_count_per_texture;
};

/*
 * lights
 */
enum LightType
{
    LT_NULL,
    LT_POINT,
    LT_SPOTLIGHT,
    LT_SUN,
    LT_SHADOW
};


struct Light
{
    btVector3 pos;                                         // world position
    float                       colour[4];                                      // RGBA value

    float                       inner;
    float                       outer;
    float                       length;
    float                       cutoff;

    float                       falloff;

    LightType                   light_type;
};

/*
 *  Animated sequence. Used globally with animated textures to refer its parameters and frame numbers.
 */

struct TexFrame
{
    btScalar    mat[4];
    btScalar    move[2];
    uint16_t    tex_ind;
};

struct AnimSeq
{
    bool        uvrotate;               // UVRotate mode flag.
    bool        frame_lock;             // Single frame mode. Needed for TR4-5 compatible UVRotate.

    bool        blend;                  // Blend flag.  Reserved for future use!
    btScalar    blend_rate;             // Blend rate.  Reserved for future use!
    btScalar    blend_time;             // Blend value. Reserved for future use!

    int8_t      anim_type;              // 0 = normal, 1 = back, 2 = reverse.
    bool        reverse_direction;      // Used only with type 2 to identify current animation direction.
    btScalar    frame_time;             // Time passed since last frame update.
    uint16_t    current_frame;          // Current frame for this sequence.
    btScalar    frame_rate;             // For types 0-1, specifies framerate, for type 3, should specify rotation speed.

    btScalar    uvrotate_speed;         // Speed of UVRotation, in seconds.
    btScalar    uvrotate_max;           // Reference value used to restart rotation.
    btScalar    current_uvrotate;       // Current coordinate window position.

    std::vector<TexFrame> frames;
    std::vector<uint32_t> frame_list;       // Offset into anim textures frame list.
};


/*
 * room static mesh.
 */
struct StaticMesh : public Object
{
    uint32_t                    object_id;                                      //
    uint8_t                     was_rendered;                                   // 0 - was not rendered, 1 - opaque, 2 - transparency, 3 - full rendered
    uint8_t                     was_rendered_lines;
    bool hide;                                           // disable static mesh rendering
    btVector3 pos;                                         // model position
    btVector3 rot;                                         // model angles
    std::array<float,4> tint;                                        // model tint

    btVector3 vbb_min;                                     // visible bounding box
    btVector3 vbb_max;
    btVector3 cbb_min;                                     // collision bounding box
    btVector3 cbb_max;

    btTransform transform;                                  // gl transformation matrix
    OBB               *obb;
    EngineContainer  *self;

    std::shared_ptr<BaseMesh> mesh;                                           // base model
    btRigidBody                *bt_body;
};

/*
 * Animated skeletal model. Taken from openraider.
 * model -> animation -> frame -> bone
 * thanks to Terry 'Mongoose' Hendrix II
 */

/*
 * SMOOTHED ANIMATIONS STRUCTURES
 * stack matrices are needed for skinned mesh transformations.
 */
struct SSBoneTag
{
    SSBoneTag   *parent;
    uint16_t                index;
    std::shared_ptr<BaseMesh> mesh_base;                                          // base mesh - pointer to the first mesh in array
    std::shared_ptr<BaseMesh> mesh_skin;                                          // base skinned mesh for ТР4+
    std::shared_ptr<BaseMesh> mesh_slot;
    btVector3 offset;                                          // model position offset

    btQuaternion qrotate;                                         // quaternion rotation
    btTransform transform;    // 4x4 OpenGL matrix for stack usage
    btTransform full_transform;    // 4x4 OpenGL matrix for global usage

    uint32_t                body_part;                                          // flag: BODY, LEFT_LEG_1, RIGHT_HAND_2, HEAD...
};


struct SkeletalModel;

struct SSAnimation
{
    int16_t                     last_state;
    int16_t                     next_state;
    int16_t                     last_animation;
    int16_t                     current_animation;                              //
    int16_t                     next_animation;                                 //
    int16_t                     current_frame;                                  //
    int16_t                     next_frame;                                     //

    uint16_t                    anim_flags;                                     // additional animation control param

    btScalar                    period;                                         // one frame change period
    btScalar                    frame_time;                                     // current time
    btScalar                    lerp;

    void                      (*onFrame)(std::shared_ptr<Entity> ent, SSAnimation *ss_anim, int state);

    SkeletalModel    *model;                                          // pointer to the base model
    SSAnimation      *next;
};

/*
 * base frame of animated skeletal model
 */
struct SSBoneFrame
{
    std::vector<SSBoneTag> bone_tags;                                      // array of bones
    btVector3 pos;                                         // position (base offset)
    btVector3 bb_min;                                      // bounding box min coordinates
    btVector3 bb_max;                                      // bounding box max coordinates
    btVector3 centre;                                      // bounding box centre

    SSAnimation       animations;                                     // animations list
    
    bool hasSkin;                                       // whether any skinned meshes need rendering

    void fromModel(SkeletalModel* model);
};

/*
 * ORIGINAL ANIMATIONS
 */
struct BoneTag
{
    btVector3 offset;                                            // bone vector
    btQuaternion qrotate;                                           // rotation quaternion
};

/*
 * base frame of animated skeletal model
 */
struct BoneFrame
{
    uint16_t            command;                                                // & 0x01 - move need, &0x02 - 180 rotate need
    std::vector<BoneTag> bone_tags;                                              // bones data
    btVector3 pos;                                                 // position (base offset)
    btVector3 bb_min;                                              // bounding box min coordinates
    btVector3 bb_max;                                              // bounding box max coordinates
    btVector3 centre;                                              // bounding box centre
    btVector3 move;                                                // move command data
    btScalar            v_Vertical;                                             // jump command data
    btScalar            v_Horizontal;                                           // jump command data
};

/*
 * mesh tree base element structure
 */
struct MeshTreeTag
{
    std::shared_ptr<BaseMesh> mesh_base;                                      // base mesh - pointer to the first mesh in array
    std::shared_ptr<BaseMesh> mesh_skin;                                      // base skinned mesh for ТР4+
    btVector3 offset;                                      // model position offset
    uint16_t                    flag;                                           // 0x0001 = POP, 0x0002 = PUSH, 0x0003 = RESET
    uint32_t                    body_part;
    uint8_t                     replace_mesh;                                   // flag for shoot / guns animations (0x00, 0x01, 0x02, 0x03)
    uint8_t                     replace_anim;
};

/*
 * animation switching control structure
 */
struct AnimDispatch
{
    uint16_t    next_anim;                                                      // "switch to" animation
    uint16_t    next_frame;                                                     // "switch to" frame
    uint16_t    frame_low;                                                      // low border of state change condition
    uint16_t    frame_high;                                                     // high border of state change condition
};

struct StateChange
{
    uint32_t                    id;
    std::vector<AnimDispatch> anim_dispatch;
};

/*
 * one animation frame structure
 */
struct AnimationFrame
{
    uint32_t                    id;
    uint8_t                     original_frame_rate;
    btScalar                    speed_x;                // Forward-backward speed
    btScalar                    accel_x;                // Forward-backward accel
    btScalar                    speed_y;                // Left-right speed
    btScalar                    accel_y;                // Left-right accel
    uint32_t                    anim_command;
    uint32_t                    num_anim_commands;
    uint16_t                    state_id;
    std::vector<BoneFrame> frames;                 // Frame data

    std::vector<StateChange> state_change;           // Animation statechanges data

    AnimationFrame   *next_anim;              // Next default animation
    int                         next_frame;             // Next default frame
};

/*
 * skeletal model with animations data.
 */

struct SkeletalModel
{
    uint32_t                    id;                                             // ID
    uint8_t                     transparency_flags;                             // transparancy flags; 0 - opaque; 1 - alpha test; other - blending mode
    bool hide;                                           // do not render
    btVector3 bbox_min;                                    // bbox info
    btVector3 bbox_max;
    btVector3 centre;                                      // the centre of model

    std::vector<AnimationFrame> animations;                                     // animations data

    uint16_t                    mesh_count;                                     // number of model meshes
    std::vector<MeshTreeTag> mesh_tree;                                      // base mesh tree.
    std::vector<uint16_t> collision_map;

    void clear();
    void fillTransparency();
    void interpolateFrames();
    void fillSkinnedMeshMap();
};

struct room_sector_s;
struct sector_tween_s;

void BoneFrame_Copy(BoneFrame* dst, BoneFrame* src);
MeshTreeTag* SkeletonClone(MeshTreeTag* src, int tags_count);
void SkeletonCopyMeshes(MeshTreeTag* dst, MeshTreeTag* src, int tags_count);
void SkeletonCopyMeshes2(MeshTreeTag* dst, MeshTreeTag* src, int tags_count);

/* bullet collision model calculation */
btCollisionShape* BT_CSfromBBox(const btVector3 &bb_min, const btVector3 &bb_max, bool useCompression, bool buildBvh, bool is_static);
btCollisionShape* BT_CSfromMesh(const std::shared_ptr<BaseMesh> &mesh, bool useCompression, bool buildBvh, bool is_static = true);
btCollisionShape* BT_CSfromHeightmap(room_sector_s *heightmap, sector_tween_s *tweens, int tweens_size, bool useCompression, bool buildBvh);

#endif

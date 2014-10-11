-- OPENTOMB INVENTORY ITEM DESCRIPTOR
-- by TeslaRus, Sep 2014

--------------------------------------------------------------------------------
-- Assigns global pickups for each game version.
-- Global pickups are items that can be found anywhere in the game, i. e. it is
-- NOT quest items, keys, puzzles and other level-specific pickups.
--------------------------------------------------------------------------------

local ver = getGameVersion();

if(ver < TR_II) then
    createBaseItem(ITEM_PASSPORT, 71, 71, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_PASSPORT);
    createBaseItem(ITEM_VIDEO, 95, 95, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_VIDEO);
    createBaseItem(ITEM_AUDIO, 96, 96, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_AUDIO); 
    createBaseItem(ITEM_CONTROLS, 97, 97, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_CONTROLS);
    
    createBaseItem(ITEM_COMPASS, 72, 72, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_COMPASS);
    createBaseItem(ITEM_MAP, 82, 82, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_MAP);

    createBaseItem(ITEM_PISTOLS, 99, 99, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_PISTOLS);
    createBaseItem(ITEM_SHOTGUN, 100, 100, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_SHOTGUN);
    createBaseItem(ITEM_MAGNUMS, 101, 101, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_MAGNUMS);
    createBaseItem(ITEM_UZIS, 102, 102, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_UZIS);
    
    createBaseItem(ITEM_PISTOL_AMMO, 103, 103, ITEM_TYPE_SUPPLY, 40, ITEM_NAME_PISTOL_AMMO);
    createBaseItem(ITEM_SHOTGUN_NORMAL_AMMO, 104, 104, ITEM_TYPE_SUPPLY, 2, ITEM_NAME_SHOTGUN_AMMO);
    createBaseItem(ITEM_MAGNUM_AMMO, 105, 105, ITEM_TYPE_SUPPLY, 50, ITEM_NAME_MAGNUM_AMMO);
    createBaseItem(ITEM_UZI_AMMO, 106, 106, ITEM_TYPE_SUPPLY, 100, ITEM_NAME_UZI_AMMO);

    createBaseItem(ITEM_SMALL_MEDIPACK, 108, 108, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_SMALL_MEDIPACK);
    createBaseItem(ITEM_LARGE_MEDIPACK, 109, 109, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_LARGE_MEDIPACK);
    
    createBaseItem(ITEM_PUZZLE_1, 114, 114, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_2, 115, 115, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_3, 116, 116, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_4, 117, 117, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_1, 133, 133, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_2, 134, 134, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_3, 135, 135, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_4, 136, 136, ITEM_TYPE_QUEST, 1);
    
elseif(ver < TR_III) then
    createBaseItem(ITEM_PASSPORT, 120, 120, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_PASSPORT);
    createBaseItem(ITEM_VIDEO, 153, 153, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_VIDEO);
    createBaseItem(ITEM_AUDIO, 154, 154, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_AUDIO);
    createBaseItem(ITEM_CONTROLS, 155, 155, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_CONTROLS);

    createBaseItem(ITEM_COMPASS, 121, 121, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_COMPASS);
    createBaseItem(ITEM_MAP, 134, 134, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_MAP);
    
    createBaseItem(ITEM_PISTOLS, 157, 157, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_PISTOLS);
    createBaseItem(ITEM_SHOTGUN, 158, 158, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_SHOTGUN);
    createBaseItem(ITEM_MAGNUMS, 159, 159, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_AUTOMAGS);
    createBaseItem(ITEM_UZIS, 160, 160, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_UZIS);
    createBaseItem(ITEM_HARPOONGUN, 161, 161, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_HARPOONGUN);
    createBaseItem(ITEM_M16, 162, 162, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_M16);
    createBaseItem(ITEM_GRENADEGUN, 163, 163, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_GRENADEGUN);
    -- TR2 supplies fully checked
    createBaseItem(ITEM_PISTOL_AMMO, 164, 164, ITEM_TYPE_SUPPLY, 40, ITEM_NAME_PISTOL_AMMO);
    createBaseItem(ITEM_SHOTGUN_NORMAL_AMMO, 165, 165, ITEM_TYPE_SUPPLY, 2, ITEM_NAME_SHOTGUN_AMMO);
    createBaseItem(ITEM_MAGNUM_AMMO, 166, 166, ITEM_TYPE_SUPPLY, 40, ITEM_NAME_AUTOMAG_AMMO);
    createBaseItem(ITEM_UZI_AMMO, 167, 167, ITEM_TYPE_SUPPLY, 80, ITEM_NAME_UZI_AMMO);
    createBaseItem(ITEM_HARPOONGUN_AMMO, 168, 168, ITEM_TYPE_SUPPLY, 3, ITEM_NAME_HARPOONGUN_AMMO);
    createBaseItem(ITEM_M16_AMMO, 169, 169, ITEM_TYPE_SUPPLY, 40, ITEM_NAME_M16_AMMO);
    createBaseItem(ITEM_GRENADEGUN_AMMO, 170, 170, ITEM_TYPE_SUPPLY, 2, ITEM_NAME_GRENADEGUN_AMMO);

    createBaseItem(ITEM_SMALL_MEDIPACK, 171, 171, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_SMALL_MEDIPACK);
    createBaseItem(ITEM_LARGE_MEDIPACK, 172, 172, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_LARGE_MEDIPACK);
    createBaseItem(ITEM_FLARES, 173, 173, ITEM_TYPE_SUPPLY, 6, ITEM_NAME_FLARES);
    createBaseItem(ITEM_SINGLE_FLARE, 152, 152, ITEM_TYPE_SUPPLY, 1);
    
    createBaseItem(ITEM_PUZZLE_1, 178, 178, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_2, 179, 179, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_3, 180, 180, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_4, 181, 181, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_1, 197, 197, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_2, 198, 198, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_3, 199, 199, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_4, 200, 200, ITEM_TYPE_QUEST, 1);
    
elseif(ver < TR_IV) then
    createBaseItem(ITEM_PASSPORT, 145, 145, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_PASSPORT);
    createBaseItem(ITEM_VIDEO, 181, 181, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_VIDEO);
    createBaseItem(ITEM_AUDIO, 182, 182, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_AUDIO);
    createBaseItem(ITEM_CONTROLS, 183, 183, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_CONTROLS);
    
    createBaseItem(ITEM_COMPASS, 146, 146, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_COMPASS);
    createBaseItem(ITEM_MAP, 159, 159, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_MAP);
    
    createBaseItem(ITEM_PISTOLS, 185, 160, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_PISTOLS);
    createBaseItem(ITEM_SHOTGUN, 186, 161, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_SHOTGUN);
    createBaseItem(ITEM_MAGNUMS, 187, 162, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_DESERTEAGLE);
    createBaseItem(ITEM_UZIS, 188, 163, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_UZIS);
    createBaseItem(ITEM_HARPOONGUN, 189, 164, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_HARPOONGUN);
    createBaseItem(ITEM_M16, 190, 165, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_MP5);
    createBaseItem(ITEM_ROCKETGUN, 191, 166, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_ROCKETGUN);
    createBaseItem(ITEM_GRENADEGUN, 192, 167, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_GRENADEGUN);
    -- TR3 supplies fully checked
    createBaseItem(ITEM_PISTOL_AMMO, 193, 168, ITEM_TYPE_SUPPLY, 40, ITEM_NAME_PISTOL_AMMO);
    createBaseItem(ITEM_SHOTGUN_NORMAL_AMMO, 194, 169, ITEM_TYPE_SUPPLY, 2, ITEM_NAME_SHOTGUN_AMMO);
    createBaseItem(ITEM_MAGNUM_AMMO, 195, 170, ITEM_TYPE_SUPPLY, 10, ITEM_NAME_DESERTEAGLE_AMMO);
    createBaseItem(ITEM_UZI_AMMO, 196, 171, ITEM_TYPE_SUPPLY, 40, ITEM_NAME_UZI_AMMO);
    createBaseItem(ITEM_HARPOONGUN_AMMO, 197, 172, ITEM_TYPE_SUPPLY, 3, ITEM_NAME_HARPOONGUN_AMMO);
    createBaseItem(ITEM_M16_AMMO, 198, 173, ITEM_TYPE_SUPPLY, 60, ITEM_NAME_MP5_AMMO);
    createBaseItem(ITEM_ROCKETGUN_AMMO, 199, 174, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_ROCKETGUN_AMMO);
    createBaseItem(ITEM_GRENADEGUN_AMMO, 200, 175, ITEM_TYPE_SUPPLY, 2, ITEM_NAME_GRENADEGUN_AMMO);

    createBaseItem(ITEM_SMALL_MEDIPACK, 201, 176, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_SMALL_MEDIPACK);
    createBaseItem(ITEM_LARGE_MEDIPACK, 202, 177, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_LARGE_MEDIPACK);
    createBaseItem(ITEM_FLARES, 203, 178, ITEM_TYPE_SUPPLY, 8, ITEM_NAME_FLARES);
    createBaseItem(ITEM_SINGLE_FLARE, 179, 179, ITEM_TYPE_SUPPLY, 1);
    
    createBaseItem(ITEM_KEY_1, 224, 224, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_2, 225, 225, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_3, 226, 226, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_4, 227, 227, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_1, 205, 205, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_2, 206, 206, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_3, 207, 207, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_4, 208, 208, ITEM_TYPE_QUEST, 1);
    
elseif(ver < TR_V) then
    createBaseItem(ITEM_COMPASS, 375, 375, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_COMPASS);
    createBaseItem(ITEM_LOAD, 376, 376, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_LOAD);
    createBaseItem(ITEM_SAVE, 377, 377, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_SAVE);

    createBaseItem(ITEM_PISTOLS, 349, 349, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_PISTOLS);
    createBaseItem(ITEM_MAGNUMS, 366, 366, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_REVOLVER);
    createBaseItem(ITEM_UZIS, 351, 351, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_UZIS);
    createBaseItem(ITEM_SHOTGUN, 353, 353, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_SHOTGUN);
    createBaseItem(ITEM_CROSSBOW, 356, 356, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_CROSSBOW);
    createBaseItem(ITEM_GRENADEGUN, 361, 361, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_GRENADEGUN);
    
    createBaseItem(ITEM_PISTOL_AMMO, 350, 350, ITEM_TYPE_SUPPLY, 40, ITEM_NAME_PISTOL_AMMO);
    createBaseItem(ITEM_MAGNUM_AMMO, 367, 367, ITEM_TYPE_SUPPLY, 6, ITEM_NAME_REVOLVER_AMMO);
    createBaseItem(ITEM_UZI_AMMO, 352, 352, ITEM_TYPE_SUPPLY, 30, ITEM_NAME_UZI_AMMO);
    createBaseItem(ITEM_SHOTGUN_NORMAL_AMMO, 354, 354, ITEM_TYPE_SUPPLY, 6, ITEM_NAME_SHOTGUN_NORMAL_AMMO);
    createBaseItem(ITEM_SHOTGUN_WIDESHOT_AMMO, 355, 355, ITEM_TYPE_SUPPLY, 6, ITEM_NAME_SHOTGUN_WIDESHOT_AMMO);
    createBaseItem(ITEM_CROSSBOW_NORMAL_AMMO, 357, 357, ITEM_TYPE_SUPPLY, 10, ITEM_NAME_CROSSBOW_NORMAL_AMMO);
    createBaseItem(ITEM_CROSSBOW_POISON_AMMO, 358, 358, ITEM_TYPE_SUPPLY, 10, ITEM_NAME_CROSSBOW_POISON_AMMO);
    createBaseItem(ITEM_CROSSBOW_EXPLOSIVE_AMMO, 359, 359, ITEM_TYPE_SUPPLY, 10, ITEM_NAME_CROSSBOW_EXPLOSIVE_AMMO);
    createBaseItem(ITEM_GRENADEGUN_NORMAL_AMMO, 362, 362, ITEM_TYPE_SUPPLY, 4, ITEM_NAME_GRENADEGUN_NORMAL_AMMO);
    createBaseItem(ITEM_GRENADEGUN_SUPER_AMMO, 363, 363, ITEM_TYPE_SUPPLY, 4, ITEM_NAME_GRENADEGUN_SUPER_AMMO);
    createBaseItem(ITEM_GRENADEGUN_FLASH_AMMO, 364, 364, ITEM_TYPE_SUPPLY, 4, ITEM_NAME_GRENADEGUN_FLASH_AMMO);
    
    createBaseItem(ITEM_MAGNUMS_LASERSIGHT, 366, 366, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_REVOLVER_LASERSIGHT);
    createBaseItem(ITEM_CROSSBOW_LASERSIGHT, 356, 356, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_CROSSBOW_LASERSIGHT);
    
    createBaseItem(ITEM_LASERSIGHT, 370, 370, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_LASERSIGHT);
    createBaseItem(ITEM_BINOCULARS, 371, 371, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_BINOCULARS);

    createBaseItem(ITEM_LARGE_MEDIPACK, 368, 368, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_LARGE_MEDIPACK);
    createBaseItem(ITEM_SMALL_MEDIPACK, 369, 369, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_SMALL_MEDIPACK);
    createBaseItem(ITEM_FLARES, 373, 373, ITEM_TYPE_SUPPLY, 12, ITEM_NAME_FLARES);
    createBaseItem(ITEM_SINGLE_FLARE, 372, 372, ITEM_TYPE_SUPPLY, 1);
    createBaseItem(ITEM_TORCH, 247, 247, ITEM_TYPE_SUPPLY, 1);
    
    createBaseItem(ITEM_KEY_1, 203, 203, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_2, 204, 204, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_3, 205, 205, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_4, 206, 206, ITEM_TYPE_QUEST, 1);    
    createBaseItem(ITEM_KEY_5, 207, 207, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_6, 208, 208, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_7, 209, 209, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_8, 210, 210, ITEM_TYPE_QUEST, 1);    
    createBaseItem(ITEM_KEY_9, 211, 211, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_10, 212, 212, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_11, 213, 213, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_12, 214, 214, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_1, 175, 175, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_2, 176, 176, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_3, 177, 177, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_4, 178, 178, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_5, 179, 179, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_6, 180, 180, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_7, 181, 181, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_8, 182, 182, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_9, 183, 183, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_10, 184, 184, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_11, 185, 185, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_12, 186, 186, ITEM_TYPE_QUEST, 1);
    
    createBaseItem(ITEM_PUZZLE_1_COMBO_A, 187, 187, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_1_COMBO_B, 188, 188, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_2_COMBO_A, 189, 189, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_2_COMBO_B, 190, 190, ITEM_TYPE_QUEST, 1);    
    createBaseItem(ITEM_PUZZLE_3_COMBO_A, 191, 191, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_3_COMBO_B, 192, 192, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_4_COMBO_A, 193, 193, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_4_COMBO_B, 194, 194, ITEM_TYPE_QUEST, 1);    
    createBaseItem(ITEM_PUZZLE_5_COMBO_A, 195, 195, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_5_COMBO_B, 196, 196, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_6_COMBO_A, 197, 197, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_6_COMBO_B, 198, 198, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_7_COMBO_A, 199, 199, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_7_COMBO_B, 200, 200, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_8_COMBO_A, 201, 201, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PUZZLE_8_COMBO_B, 202, 202, ITEM_TYPE_QUEST, 1);
    
    createBaseItem(ITEM_KEY_1_COMBO_A, 215, 215, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_1_COMBO_B, 216, 216, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_2_COMBO_A, 217, 217, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_2_COMBO_B, 218, 218, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_3_COMBO_A, 219, 219, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_3_COMBO_B, 220, 220, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_4_COMBO_A, 221, 221, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_4_COMBO_B, 222, 222, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_5_COMBO_A, 223, 223, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_5_COMBO_B, 224, 224, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_6_COMBO_A, 225, 225, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_6_COMBO_B, 226, 226, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_7_COMBO_A, 227, 227, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_7_COMBO_B, 228, 228, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_8_COMBO_A, 229, 229, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_KEY_8_COMBO_B, 230, 230, ITEM_TYPE_QUEST, 1);

    createBaseItem(ITEM_PICKUP_1_COMBO_A, 235, 235, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PICKUP_1_COMBO_B, 236, 236, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PICKUP_2_COMBO_A, 237, 237, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PICKUP_2_COMBO_B, 238, 238, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PICKUP_3_COMBO_A, 239, 239, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PICKUP_3_COMBO_B, 240, 240, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PICKUP_4_COMBO_A, 241, 241, ITEM_TYPE_QUEST, 1);
    createBaseItem(ITEM_PICKUP_4_COMBO_B, 242, 242, ITEM_TYPE_QUEST, 1);
    
elseif(ver == TR_V) then
    createBaseItem(ITEM_COMPASS, 356, 356, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_COMPASS);
    createBaseItem(ITEM_LOAD, 357, 357, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_LOAD);
    createBaseItem(ITEM_SAVE, 358, 358, ITEM_TYPE_SYSTEM, 1, ITEM_NAME_SAVE);

    createBaseItem(ITEM_PISTOLS, 334, 334, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_PISTOLS);
    createBaseItem(ITEM_UZIS, 336, 336, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_UZIS);
    createBaseItem(ITEM_SHOTGUN, 338, 338, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_SHOTGUN);
    createBaseItem(ITEM_M16, 345, 345, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_HK);
    createBaseItem(ITEM_GRAPPLEGUN, 341, 341, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_GRAPPLEGUN);
    
    createBaseItem(ITEM_PISTOL_AMMO, 335, 335, ITEM_TYPE_SUPPLY, 40, ITEM_NAME_PISTOL_AMMO);
    createBaseItem(ITEM_UZI_AMMO, 337, 337, ITEM_TYPE_SUPPLY, 30, ITEM_NAME_UZI_AMMO);
    createBaseItem(ITEM_SHOTGUN_NORMAL_AMMO, 339, 339, ITEM_TYPE_SUPPLY, 6, ITEM_NAME_SHOTGUN_NORMAL_AMMO);
    createBaseItem(ITEM_SHOTGUN_WIDESHOT_AMMO, 340, 340, ITEM_TYPE_SUPPLY, 6, ITEM_NAME_SHOTGUN_WIDESHOT_AMMO);
    createBaseItem(ITEM_M16_AMMO, 346, 346, ITEM_TYPE_SUPPLY, 30, ITEM_NAME_HK_AMMO);
    createBaseItem(ITEM_GRAPPLEGUN_AMMO, 342, 342, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_GRAPPLEGUN_AMMO);
    
    -- Magnum slot is shared between Revolver and Desert Eagle in Rome/Russia levels,
    -- so we just left the name uninitialized until level script is used.
    createBaseItem(ITEM_MAGNUMS, 347, 347, ITEM_TYPE_SUPPLY, 1);
    createBaseItem(ITEM_MAGNUM_AMMO, 348, 348, ITEM_TYPE_SUPPLY, 6);
    
    createBaseItem(ITEM_LASERSIGHT, 351, 351, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_LASERSIGHT);
    createBaseItem(ITEM_BINOCULARS, 352, 352, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_BINOCULARS);

    createBaseItem(ITEM_MAGNUMS_LASERSIGHT, 366, 366, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_REVOLVER_LASERSIGHT);
    createBaseItem(ITEM_M16_LASERSIGHT, 356, 356, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_HK_LASERSIGHT);

    createBaseItem(ITEM_LARGE_MEDIPACK, 349, 349, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_LARGE_MEDIPACK);
    createBaseItem(ITEM_SMALL_MEDIPACK, 350, 350, ITEM_TYPE_SUPPLY, 1, ITEM_NAME_SMALL_MEDIPACK);
    createBaseItem(ITEM_FLARES, 355, 355, ITEM_TYPE_SUPPLY, 6, ITEM_NAME_FLARES);
    createBaseItem(ITEM_SINGLE_FLARE, 354, 354, ITEM_TYPE_SUPPLY, 1);
    createBaseItem(ITEM_TORCH, 241, 241, ITEM_TYPE_SUPPLY, 1);
    
end

-- test TR_ITEMS

addItem(player, ITEM_COMPASS, 1);
addItem(player, ITEM_SMALL_MEDIPACK, 3);
addItem(player, ITEM_LARGE_MEDIPACK, 1);

--[[
addItem(player, ITEM_VIDEO, 1);
addItem(player, ITEM_AUDIO, 1);
addItem(player, ITEM_CONTROLS, 1);
addItem(player, ITEM_LOAD, 1);
addItem(player, ITEM_SAVE, 1);

addItem(player, ITEM_PISTOLS, 1);
addItem(player, ITEM_SHOTGUN, 1);
addItem(player, ITEM_MAGNUMS, 1);
addItem(player, ITEM_UZIS, 1);
addItem(player, ITEM_M16, 1);
addItem(player, ITEM_GRENADEGUN, 1);
addItem(player, ITEM_ROCKETGUN, 1);
addItem(player, ITEM_HARPOONGUN, 1);
addItem(player, ITEM_CROSSBOW, 1);
addItem(player, ITEM_GRAPPLEGUN, 1);
addItem(player, ITEM_LASERSIGHT, 1);
addItem(player, ITEM_BINOCULARS, 1);

addItem(player, ITEM_PISTOL_AMMO, 1);
addItem(player, ITEM_SHOTGUN_NORMAL_AMMO, 1);
addItem(player, ITEM_SHOTGUN_WIDESHOT_AMMO, 1);
addItem(player, ITEM_MAGNUM_AMMO, 1);
addItem(player, ITEM_UZI_AMMO, 1);
addItem(player, ITEM_M16_AMMO, 1);
addItem(player, ITEM_GRENADEGUN_NORMAL_AMMO, 1);
addItem(player, ITEM_GRENADEGUN_SUPER_AMMO, 1);
addItem(player, ITEM_GRENADEGUN_FLASH_AMMO, 1);
addItem(player, ITEM_ROCKETGUN_AMMO, 1);
addItem(player, ITEM_HARPOONGUN_AMMO, 1);
addItem(player, ITEM_CROSSBOW_NORMAL_AMMO, 1);
addItem(player, ITEM_CROSSBOW_POISON_AMMO, 1);
addItem(player, ITEM_CROSSBOW_EXPLOSIVE_AMMO, 1);
addItem(player, ITEM_GRAPPLEGUN_AMMO, 1);

addItem(player, ITEM_FLARES, 1);
addItem(player, ITEM_SINGLE_FLARE, 1);
--]]
print("items script loaded");

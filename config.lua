Config = {}

Config.Objects = {
    ["cone"] = {model = `prop_roadcone02a`, freeze = false},
    ["barrier"] = {model = `prop_barrier_work06a`, freeze = true},
    ["roadsign"] = {model = `prop_snow_sign_road_06g`, freeze = true},
    ["tent"] = {model = `prop_gazebo_03`, freeze = true},
    ["light"] = {model = `prop_worklight_03b`, freeze = true},
}

Config.MaxSpikes = 5

Config.HandCuffItem = 'handcuffs'
Config.CuffKeyItem = "cuffkeys"
Config.TieItem = 'ziptie'
Config.CutTieItem = 'flush_cutter'
Config.CutCuffItem = 'bolt_cutter'
Config.BrokenCuffItem = 'broken_handcuffs'
Config.BreakOutCuffing = true               -- Enable cuff breaking
Config.BreakOutAttempts = 3                 -- Max number of attempts to break cuffs
Config.BreakOutTimeToReset = 30             -- Time in minutes to reset 1 attempt

Config.AllowWashGunpowder = true

Config.UseDutyBlips = false
-- itemname = name of the item
-- propname = the prop used for cuffing
-- needkey = does the cuff needs a key to uncuff ? It will give a key when true
-- keyitem = what is the item used to uncuff
-- cufftype = the animation type. 19 - ped is freezed / 49 - ped can move with cuffs
Config.CuffItems = {
    ['handcuffs'] = {itemname = "handcuffs", propname = "p_cs_cuffs_02_s", needkey = true, keyitem = "cuffkeys", cufftype = 19 },
    ['ziptie'] = {itemname = "ziptie", propname = "ba_prop_battle_cuffs", needkey = false, keyitem = "flush_cutter", cufftype = 49}
}

Config.LicenseRank = 2
Config.BlockWallThermals = true -- true/false; lowers thermal cam intensity to stop penetration through walls or tunnels
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.Locations = {
    ["duty"] = {
        [1] = vector3(442.0, -982.07, 30.48),
        [2] = vector3(-449.14, 6012.68, 31.71),
    },
    ["vehicle"] = {
        [1] = vector4(441.43, -984.61, 25.7, 355.55), -- MRPD
        [2] = vector4(-458.86, 6031.5, 31.34, 139.15), --BCSO
        [3] = vector4(1858.95, 3681.95, 33.83, 219.83), -- Sandy
    },
    ["vehspawn"] = { -- The numbers [1] must match the numbers in [vehicle]
        [1] = vector4(440.62, -981.27, 25.7, 87.73), -- MRPD
        [2] = vector4(-474.63, 6030.38, 30.95, 226.12), -- BCSO
        [3] = vector4(1850.89, 3673.04, 33.37, 211.26), -- Sandy
    },
    ["stash"] = {
        [1] = vector3(462.05, -1000.01, 30.9),
        [2] = vector3(-440.39, 5996.86, 31.71),
    },
    ["impound"] = {
        [1] = vector3(463.2174, -1016.8426, 28.0814),
        [2] = vector3(-436.14, 5982.63, 31.34),
    },
    ["helicopter"] = {
        [1] = vector4(460.24, -980.18, 43.69, 181.43), -- LSPD
        [2] = vector4(-462.15, 5994.77, 31.25, 134.84), -- BCSO
    },
    ["helispawn"] = { -- The numbers [1] must match the numbers in [helicopter]
        [1] = vector4(449.16, -981.23, 43.69, 165.79), -- LSPD
        [2] = vector4(-475.18, 5988.43, 31.72, 317.27), -- BCSO
    },
    ["armory"] = {
        [1] =vector3(482.5, -996.34, 30.69),
        [2] =vector3(-437.72, 5988.52, 31.71),
    },
    ["fridge"] = {
        [1] = vector3(463.35, -980.21, 30.76), -- MRPD
        [2] = vector3(-450.06, 6009.91, 31.61), -- BCSO
    },
    ["trash"] = {
        [1] = vector3(469.71, -996.21, 26.27),
        [2] = vector3(-451.20, 6011.73, 31.71),
    },
    ["fingerprint"] = {
        [1] = vector3(473.53, -1007.46, 26.27),
        [2] = vector3(-432.16, 5995.56, 31.71),
    },
    ["evidence"] = {
        [1] = vector3(475.0, -996.52, 26.27),
        [2] = vector3(-442.18, 5987.13, 31.71),
    },
    ["stations"] = {
        [1] = {label = "Mission Row Police Station", coords = vector4(474.59, -996.08, 26.27, 35.55)},
        [2] = {label = "Prison", coords = vector4(1845.903, 2585.873, 45.672, 272.249)},
        [3] = {label = "Police Station Paleto", coords = vector4(-436.0913, 6000.7959, 32.6414, 25.8832)},
    },
}

Config.PoliceHelicopter = "POLMAV"

Config.SecurityCameras = {
    hideradar = false,
    cameras = {
        [1] = {label = "Pacific Bank CAM#1", coords = vector3(257.45, 210.07, 109.08), r = {x = -25.0, y = 0.0, z = 28.05}, canRotate = false, isOnline = true},
        [2] = {label = "Pacific Bank CAM#2", coords = vector3(232.86, 221.46, 107.83), r = {x = -25.0, y = 0.0, z = -140.91}, canRotate = false, isOnline = true},
        [3] = {label = "Pacific Bank CAM#3", coords = vector3(252.27, 225.52, 103.99), r = {x = -35.0, y = 0.0, z = -74.87}, canRotate = false, isOnline = true},
        [4] = {label = "Limited Ltd Grove St. CAM#1", coords = vector3(-53.1433, -1746.714, 31.546), r = {x = -35.0, y = 0.0, z = -168.9182}, canRotate = false, isOnline = true},
        [5] = {label = "Rob's Liqour Prosperity St. CAM#1", coords = vector3(-1482.9, -380.463, 42.363), r = {x = -35.0, y = 0.0, z = 79.53281}, canRotate = false, isOnline = true},
        [6] = {label = "Rob's Liqour San Andreas Ave. CAM#1", coords = vector3(-1224.874, -911.094, 14.401), r = {x = -35.0, y = 0.0, z = -6.778894}, canRotate = false, isOnline = true},
        [7] = {label = "Limited Ltd Ginger St. CAM#1", coords = vector3(-718.153, -909.211, 21.49), r = {x = -35.0, y = 0.0, z = -137.1431}, canRotate = false, isOnline = true},
        [8] = {label = "24/7 Supermarkt Innocence Blvd. CAM#1", coords = vector3(23.885, -1342.441, 31.672), r = {x = -35.0, y = 0.0, z = -142.9191}, canRotate = false, isOnline = true},
        [9] = {label = "Rob's Liqour El Rancho Blvd. CAM#1", coords = vector3(1133.024, -978.712, 48.515), r = {x = -35.0, y = 0.0, z = -137.302}, canRotate = false, isOnline = true},
        [10] = {label = "Limited Ltd West Mirror Drive CAM#1", coords = vector3(1151.93, -320.389, 71.33), r = {x = -35.0, y = 0.0, z = -119.4468}, canRotate = false, isOnline = true},
        [11] = {label = "24/7 Supermarkt Clinton Ave CAM#1", coords = vector3(383.402, 328.915, 105.541), r = {x = -35.0, y = 0.0, z = 118.585}, canRotate = false, isOnline = true},
        [12] = {label = "Limited Ltd Banham Canyon Dr CAM#1", coords = vector3(-1832.057, 789.389, 140.436), r = {x = -35.0, y = 0.0, z = -91.481}, canRotate = false, isOnline = true},
        [13] = {label = "Rob's Liqour Great Ocean Hwy CAM#1", coords = vector3(-2966.15, 387.067, 17.393), r = {x = -35.0, y = 0.0, z = 32.92229}, canRotate = false, isOnline = true},
        [14] = {label = "24/7 Supermarkt Ineseno Road CAM#1", coords = vector3(-3046.749, 592.491, 9.808), r = {x = -35.0, y = 0.0, z = -116.673}, canRotate = false, isOnline = true},
        [15] = {label = "24/7 Supermarkt Barbareno Rd. CAM#1", coords = vector3(-3246.489, 1010.408, 14.705), r = {x = -35.0, y = 0.0, z = -135.2151}, canRotate = false, isOnline = true},
        [16] = {label = "24/7 Supermarkt Route 68 CAM#1", coords = vector3(539.773, 2664.904, 44.056), r = {x = -35.0, y = 0.0, z = -42.947}, canRotate = false, isOnline = true},
        [17] = {label = "Rob's Liqour Route 68 CAM#1", coords = vector3(1169.855, 2711.493, 40.432), r = {x = -35.0, y = 0.0, z = 127.17}, canRotate = false, isOnline = true},
        [18] = {label = "24/7 Supermarkt Senora Fwy CAM#1", coords = vector3(2673.579, 3281.265, 57.541), r = {x = -35.0, y = 0.0, z = -80.242}, canRotate = false, isOnline = true},
        [19] = {label = "24/7 Supermarkt Alhambra Dr. CAM#1", coords = vector3(1966.24, 3749.545, 34.143), r = {x = -35.0, y = 0.0, z = 163.065}, canRotate = false, isOnline = true},
        [20] = {label = "24/7 Supermarkt Senora Fwy CAM#2", coords = vector3(1729.522, 6419.87, 37.262), r = {x = -35.0, y = 0.0, z = -160.089}, canRotate = false, isOnline = true},
        [21] = {label = "Fleeca Bank Hawick Ave CAM#1", coords = vector3(309.341, -281.439, 55.88), r = {x = -35.0, y = 0.0, z = -146.1595}, canRotate = false, isOnline = true},
        [22] = {label = "Fleeca Bank Legion Square CAM#1", coords = vector3(144.871, -1043.044, 31.017), r = {x = -35.0, y = 0.0, z = -143.9796}, canRotate = false, isOnline = true},
        [23] = {label = "Fleeca Bank Hawick Ave CAM#2", coords = vector3(-355.7643, -52.506, 50.746), r = {x = -35.0, y = 0.0, z = -143.8711}, canRotate = false, isOnline = true},
        [24] = {label = "Fleeca Bank Del Perro Blvd CAM#1", coords = vector3(-1214.226, -335.86, 39.515), r = {x = -35.0, y = 0.0, z = -97.862}, canRotate = false, isOnline = true},
        [25] = {label = "Fleeca Bank Great Ocean Hwy CAM#1", coords = vector3(-2958.885, 478.983, 17.406), r = {x = -35.0, y = 0.0, z = -34.69595}, canRotate = false, isOnline = true},
        [26] = {label = "Paleto Bank CAM#1", coords = vector3(-102.939, 6467.668, 33.424), r = {x = -35.0, y = 0.0, z = 24.66}, canRotate = false, isOnline = true},
        [27] = {label = "Del Vecchio Liquor Paleto Bay", coords = vector3(-163.75, 6323.45, 33.424), r = {x = -35.0, y = 0.0, z = 260.00}, canRotate = false, isOnline = true},
        [28] = {label = "Don's Country Store Paleto Bay CAM#1", coords = vector3(166.42, 6634.4, 33.69), r = {x = -35.0, y = 0.0, z = 32.00}, canRotate = false, isOnline = true},
        [29] = {label = "Don's Country Store Paleto Bay CAM#2", coords = vector3(163.74, 6644.34, 33.69), r = {x = -35.0, y = 0.0, z = 168.00}, canRotate = false, isOnline = true},
        [30] = {label = "Don's Country Store Paleto Bay CAM#3", coords = vector3(169.54, 6640.89, 33.69), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = false, isOnline = true},
        [31] = {label = "Vangelico Jewelery CAM#1", coords = vector3(-627.54, -239.74, 40.33), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
        [32] = {label = "Vangelico Jewelery CAM#2", coords = vector3(-627.51, -229.51, 40.24), r = {x = -35.0, y = 0.0, z = -95.78}, canRotate = true, isOnline = true},
        [33] = {label = "Vangelico Jewelery CAM#3", coords = vector3(-620.3, -224.31, 40.23), r = {x = -35.0, y = 0.0, z = 165.78}, canRotate = true, isOnline = true},
        [34] = {label = "Vangelico Jewelery CAM#4", coords = vector3(-622.57, -236.3, 40.31), r = {x = -35.0, y = 0.0, z = 5.78}, canRotate = true, isOnline = true},
    },
}

Config.UseGarage = false -- Set to True to use script vehicles, false if you have a separate job garage script (ex: cd_garage)
Config.GaragePedModel = "s_m_y_hwaycop_01"

Config.EnableMods = true -- Enable the mods below to be applied
Config.CarMods = { -- Mods to be enabled / disabled for vehicles
    engine = true,
    brakes = true,
    gearbox = true,
    armour = false,
    turbo = true,
}
Config.EnableExtras = true
Config.CarExtras = { -- Extra options to be enabled / disabled
    ["extras"] = {
        ["1"] = true, -- on/off
        ["2"] = true,
        ["3"] = true,
        ["4"] = true,
        ["5"] = true,
        ["6"] = true,
        ["7"] = true,
        ["8"] = true,
        ["9"] = true,
        ["10"] = true,
        ["11"] = true,
        ["12"] = true,
        ["13"] = true,
    }
}
Config.AuthorizedVehicles = {
    -- Garage 1 vehicles (LSPD)
    [1] = {
        ["police"] = {label = "Police Car 1", ranks = {1,2}, livery = 1, price = 10},
        ["police2"] = {label = "Police Car 2", ranks = {1,2}, livery = 1, price = 10},
        ["police3"] = {label = "Police Car 3", ranks = {3}, livery = 1, price = 10},
        ["police4"] = {label = "Police Car 4", ranks = {3}, livery = 1, price = 10},
        ["policeb"] = {label = "Police Car 5", ranks = {3,4}, livery = 1, price = 10},
        ["policet"] = {label = "Police Car 6", ranks = {3,4}, livery = 1, price = nil},
        ["fbi"] = {label = "Unmarked FBI", ranks = {3,4}, livery = 1, price = 15},
        ["fbi2"] = {label = "Unmarked FBI2", ranks = {3,4}, livery = 1, price = nil},
    },
    -- Garage 2 vehicles (BCSO)
    [2] = {
        ["sheriff"] = {label = "Sheriff Car 1", ranks = {1,2}, livery = 1, price = 10},
        ["sheriff2"] = {label = "Sheriff Car 2", ranks = {2,3,4}, livery = 1, price = 10},
        ["fbi"] = {label = "Unmarked FBI", ranks = {3,4}, livery = 1, price = 10},
        ["fbi2"] = {label = "Unmarked FBI2", ranks = {3,4}, livery = 1, price = nil},
    },
    -- Garage 1 vehicles (Sandy)
    [3] = {
        ["sheriff"] = {label = "Sheriff Car 1", ranks = {1,2}, livery = 1, price = 10},
        ["sheriff2"] = {label = "Sheriff Car 2", ranks = {2,3,4}, livery = 1, price = 10},
        ["fbi"] = {label = "Unmarked FBI", ranks = {3,4}, livery = 1, price = 10},
        ["fbi2"] = {label = "Unmarked FBI2", ranks = {3,4}, livery = 1, price = nil},
    },
}

Config.AmmoLabels = {
    ["AMMO_PISTOL"] = "9x19mm parabellum bullet",
    ["AMMO_SMG"] = "9x19mm parabellum bullet",
    ["AMMO_RIFLE"] = "7.62x39mm bullet",
    ["AMMO_MG"] = "7.92x57mm mauser bullet",
    ["AMMO_SHOTGUN"] = "12-gauge bullet",
    ["AMMO_SNIPER"] = "Large caliber bullet",
}

Config.Radars = {
	vector4(-623.44421386719, -823.08361816406, 25.25704574585, 145.0),
	vector4(-652.44421386719, -854.08361816406, 24.55704574585, 325.0),
	vector4(1623.0114746094, 1068.9924316406, 80.903594970703, 84.0),
	vector4(-2604.8994140625, 2996.3391113281, 27.528566360474, 175.0),
	vector4(2136.65234375, -591.81469726563, 94.272926330566, 318.0),
	vector4(2117.5764160156, -558.51013183594, 95.683128356934, 158.0),
	vector4(406.89505004883, -969.06286621094, 29.436267852783, 33.0),
	vector4(657.315, -218.819, 44.06, 320.0),
	vector4(2118.287, 6040.027, 50.928, 172.0),
	vector4(-106.304, -1127.5530, 30.778, 230.0),
	vector4(-823.3688, -1146.980, 8.0, 300.0),
}

Config.CarItems = {
    [1] = {name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1,},
    [2] = {name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2,},
    [3] = {name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3,},
}

Config.Items = {
    label = "Police Armory",
    slots = 30,
    items = {
        [1] = {
            name = "weapon_combatpistol",
            price = 2000,
            amount = 20,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_PI_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 1,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [2] = {
            name = "weapon_glock17",
            price = 3000,
            amount = 20,
            info = {
                attachments = {
                    {component = "COMPONENT_AT_PI_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 2,
            authorizedJobGrades = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [3] = {
            name = "weapon_stungun",
            price = 2500,
            amount = 20,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 3,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [4] = {
            name = "weapon_remington",
            price = 4000,
            amount = 20,
            info = {
                serie = "",
                attachments = {
                }
            },
            type = "weapon",
            slot = 4,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [5] = {
            name = "weapon_smg",
            price = 5000,
            amount = 20,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_SCOPE_MACRO_02", label = "1x Scope"},
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                }
            },
            type = "weapon",
            slot = 5,
            authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11, 12}
        },
        [6] = {
            name = "weapon_ar15",
            price = 7000,
            amount = 20,
            info = {
                serie = "",
                attachments = {
                    {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
                    {component = "COMPONENT_AT_SCOPE_MEDIUM", label = "3x Scope"},
                    {component = "COMPONENT_CARBINERIFLE_CLIP_02", label = "EXT Clip"},
                    {component = "COMPONENT_AT_AR_AFGRIP", label = "Grip"},
                }
            },
            type = "weapon",
            slot = 6,
            authorizedJobGrades = {6, 7, 8, 9, 10, 11, 12}
        },
        [7] = {
            name = "weapon_nightstick",
            price = 1000,
            amount = 20,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 7,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [8] = {
            name = "pistol_ammo",
            price = 50,
            amount = 500,
            info = {},
            type = "item",
            slot = 8,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [9] = {
            name = "smg_ammo",
            price = 150,
            amount = 500,
            info = {},
            type = "item",
            slot = 9,
            authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11, 12}
        },
        [10] = {
            name = "shotgun_ammo",
            price = 225,
            amount = 500,
            info = {},
            type = "item",
            slot = 10,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [11] = {
            name = "rifle_ammo",
            price = 375,
            amount = 500,
            info = {},
            type = "item",
            slot = 11,
            authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11, 12}
        },
        [12] = {
            name = "handcuffs",
            price = 100,
            amount = 50,
            info = {},
            type = "item",
            slot = 12,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [13] = {
            name = "weapon_flashlight",
            price = 100,
            amount = 50,
            info = {
                serie = "",
            },
            type = "weapon",
            slot = 13,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [14] = {
            name = "empty_evidence_bag",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 14,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [15] = {
            name = "ifaks",
            price = 100,
            amount = 250,
            info = {},
            type = "item",
            slot = 15,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [16] = {
            name = "armor",
            price = 150,
            amount = 500,
            info = {},
            type = "item",
            slot = 16,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [17] = {
            name = "radio",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 17,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [18] = {
            name = "heavyarmor",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 18,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [19] = {
            name = "drone",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 19,
            authorizedJobGrades = {6, 7, 8, 9, 10, 11, 12}
        },
        [20] = {
            name = "policegunrack",
            price = 25,
            amount = 100,
            info = {},
            type = "item",
            slot = 20,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [21] = {
            name = "police_stormram",
            price = 5000,
            amount = 20,
            info = {},
            type = "item",
            slot = 21,
            authorizedJobGrades = {8, 9, 10, 11, 12}
        },
        [22] = {
            name = "gas_mask",
            price = 2000,
            amount = 20,
            info = {},
            type = "item",
            slot = 22,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [23] = {
            name = "diving_gear",
            price = 2000,
            amount = 20,
            info = {},
            type = "item",
            slot = 23,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [24] = {
            name = "taser_cartridge",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 24,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [25] = {
            name = "spray_remover",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 25,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [26] = {
            name = "spikespack",
            price = 0,
            amount = 100,
            info = {},
            type = "item",
            slot = 26,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [27] = {
            name = "slimjim",
            price = 150,
            amount = 100,
            info = {},
            type = "item",
            slot = 27,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [28] = {
            name = "ziptie",
            price = 250,
            amount = 100,
            info = {},
            type = "item",
            slot = 28,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [29] = {
            name = "flush_cutter",
            price = 2500,
            amount = 100,
            info = {},
            type = "item",
            slot = 29,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        [30] = {
            name = "cuffkeys",
            price = 50,
            amount = 100,
            info = {},
            type = "item",
            slot = 30,
            authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
        },
        --[7] = {
        --    name = "weapon_m4",
        --    price = 12,
        --    amount = 1,
        --    info = {
        --        attachments = {
        --            {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
        --        }
        --    },
        --    type = "weapon",
        --    slot = 19,
        --    authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        --},
        --[8] = {
        --    name = "weapon_ar15",
        --    price = 12,
        --    amount = 1,
        --    info = {
        --        attachments = {
        --            {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
        --            {component = "COMPONENT_AT_SCOPE_MEDIUM", label = "Scope"},
        --            {component = "COMPONENT_AT_AR_AFGRIP", label = "AF-Grip"},
        --        }
        --    },
        --    type = "weapon",
        --    slot = 20,
        --    authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        --},
        --[9] = {
        --    name = "weapon_remington",
        --    price = 12,
        --    amount = 1,
        --    info = {
        --        attachments = {
        --            {component = "COMPONENT_AT_SG_FLSH", label = "Flashlight"},
        --        }
        --    },
        --    type = "weapon",
        --    slot = 21,
        --    authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        --},
        --[10] = {
        --    name = "weapon_scarh",
        --    price = 12,
        --    amount = 1,
        --    info = {
        --        attachments = {
        --            {component = "COMPONENT_AT_AR_FLSH", label = "Flashlight"},
        --        }
        --    },
        --    type = "weapon",
        --    slot = 24,
        --    authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        --},
        --[11] = {
        --    name = "weapon_mk14",
        --    price = 12,
        --    amount = 1,
        --    info = {
        --        attachments = {
        --            {component = "COMPONENT_AT_SCOPE_LARGE", label = "Scope"},
        --        }
        --    },
        --    type = "weapon",
        --    slot = 25,
        --    authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14}
        --},
    }
}

Config.Food = {
    label = 'Police Fridge',
    slots = 5,
    items = {
        [1] = {
            name = "protein_bar",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "vita_water",
            price = 0,
            amount = 500,
            info = {},
            type = "item",
            slot = 2,
        },
    }
}

Config.NoGloves = {
    --[GetHashKey('mp_m_freemode_01')] = {        -- Male arm numbers without gloves
    [`mp_m_freemode_01`] = {        -- Male arm numbers without gloves
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 101, 102, 116, 117, 118, 122, 129, 136, 188, 192, 200, 201, 202, 206, 214, 215
    },
    --[GetHashKey('mp_f_freemode_01')] = {        -- Female arm numbers without gloves
    [`mp_f_freemode_01`] = {        -- Female arm numbers without gloves
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 23, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 116, 117, 133, 134, 135, 139, 146, 153, 161, 165, 169, 233, 237
    }
}
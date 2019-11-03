DATA {
    type = "autoplace-control",
    category = "resource",
    name = "ore-barite",
    richness = true,
    order = "b-e"
}

DATA {
    type = "noise-layer",
    name = "ore-barite"
}

ENTITY {
    type = "resource",
    name = "ore-barite",
    --category = "ore-barite",
    icon = "__Realfact__/graphics/icons/ore-default.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    order = "a-b-a",
    map_color = {r = 1, g = 0.709, b = 0.286},
    minable = {
        hardness = 1,
        -- mining_particle = "barite-ore-particle",
        mining_time = 2,
        results = {
            {"ore-barite", 1}
        },
        --fluid_amount = 100,
        --required_fluid = "coal-gas"
    },
    starting_area = true,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = {
        control = "ore-barite",
        sharpness = 15/16,
        richness_multiplier = 1500,
        richness_multiplier_distance_bonus = 20,
        richness_base = 10,
        coverage = 0.0003,
        peaks = {
            {
                noise_layer = "ore-barite",
                noise_octaves_difference = -0.85,
                noise_persistence = 0.4
            }
        }
    },
    stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
    stages = {
        sheet = {
            filename = "__Realfact__/graphics/entity/ores/barite/barite.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = "__Realfact__/graphics/entity/ores/barite/hr-barite.png",
                priority = "extra-high",
                width = 128,
                height = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
            }
        }
    }
}

Realfact.ores.gems =
{
  name = "gem-ore",
  map_color = {r = 0, g = 1, b = 0},
  mining_time = 2.5,
  enabled = false,
  icon = "__Realfact__/graphics/icons/gem-ore.png",
  stage_mult = 2,
  particle = "gem-ore-particle",
  sprite =
  {
    filename = "__Realfact__/graphics/entity/gem-ore/gem-ore.png",
    width = 38,
    height = 38,
    frame_count = 4,
    variation_count = 8,
-- hr_version can now be specified as a table within sprite, which uses the same table values as sprite.
  },
--[[
  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 0.01,
    size = 1
  }
]]--
  autoplace = "control-only",
}

function Realfact.ores.gems.create_autoplace()
  if resource_generator then
    resource_generator.setup_resource_autoplace_data("gem-ore", {
      name = "gem-ore",
      order = "c",
      base_density = 0.1,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
    }
    )
  else
    data.raw.resource["gem-ore"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "gem-ore",
      order = "c",
      base_density = 0.1,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
    }
  end
  Realfact.ores.gems.enabled = true
end

data:extend(
{
  {
    type = "particle",
    name = "gem-ore-particle",
    flags = {"not-on-map"},
    life_time = 180,
    pictures =
    {
      {
        filename = "__Realfact__/graphics/entity/gem-ore/gem-ore-particle-1.png",
        priority = "extra-high",
        width = 4,
        height = 3,
        frame_count = 1
      },
      {
        filename = "__Realfact__/graphics/entity/gem-ore/gem-ore-particle-2.png",
        priority = "extra-high",
        width = 3,
        height = 3,
        frame_count = 1
      },
      {
        filename = "__Realfact__/graphics/entity/gem-ore/gem-ore-particle-3.png",
        priority = "extra-high",
        width = 4,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__Realfact__/graphics/entity/gem-ore/gem-ore-particle-4.png",
        priority = "extra-high",
        width = 6,
        height = 6,
        frame_count = 1
      }
    },
    shadows =
    {
      {
        filename = "__Realfact__/graphics/entity/gem-ore/gem-ore-particle-shadow-1.png",
        priority = "extra-high",
        width = 4,
        height = 3,
        frame_count = 1
      },
      {
        filename = "__Realfact__/graphics/entity/gem-ore/gem-ore-particle-shadow-2.png",
        priority = "extra-high",
        width = 3,
        height = 3,
        frame_count = 1
      },
      {
        filename = "__Realfact__/graphics/entity/gem-ore/gem-ore-particle-shadow-3.png",
        priority = "extra-high",
        width = 4,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__Realfact__/graphics/entity/gem-ore/gem-ore-particle-shadow-4.png",
        priority = "extra-high",
        width = 6,
        height = 6,
        frame_count = 1
      }
    }
  }
}
)

Realfact.ores.lanthanides =
{
  name = "lanthanides-ore",
  tint = {r=0.777, g=0.7, b=0.333},
  map_color = {r=0.777, g=0.7, b=0.333},
  mining_time = 1.5,
  enabled = false,
  icon = "__Realfact__/graphics/icons/default-ore.png",
  stage_mult = 100,
  item =
  {
    create = true,
    create_variations = true,
    subgroup = "Realfact-ores",
  },
  sprite =
  {
    sheet = 1
  },
--[[  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 0.8,
    size = 1.5
  }
]]--
  autoplace = "control-only",
}

function Realfact.ores.lanthanides.create_autoplace()
  if resource_generator then
    resource_generator.setup_resource_autoplace_data("lanthanides-ore", {
      name = "lanthanides-ore",
      order = "c",
      base_density = 8,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
    }
    )
  else
    data.raw.resource["lanthanides-ore"].autoplace = resource_autoplace.resource_autoplace_settings{
      name = "lanthanides-ore",
      order = "c",
      base_density = 8,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1,
    }
  end
  Realfact.ores.lanthanides.enabled = true
end

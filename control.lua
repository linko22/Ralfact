require("functions")
--require("defines")
--require("config")

--if smeltingtinyequipment.value == true then
script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
--	player.insert({name="steel-axe", count = 2})
	player.insert({name="coal", count = 50})
	player.insert({name="assembling-machine-2", count = 10})
	player.insert({name="transport-belt", count = 200})
	player.insert({name="inserter", count = 20})
	player.insert({name="electric-mining-drill", count = 10})
	player.insert({name="steam-engine", count = 2})
	player.insert({name="boiler", count = 1})
	player.insert({name="pipe", count = 50})
	player.insert({name="offshore-pump", count = 1})
	player.insert({name="medium-electric-pole", count = 10})
--	player.insert({name="blast-furnace", count = 4})
--	player.insert({name="induction-furnace", count = 3})
--	player.insert({name="casting-machine", count = 6})
--	player.insert({name="ore-crusher", count = 6})
	player.insert({name="iron-plate", count = 200})
	player.insert({name="copper-plate", count = 100})
end)
--end

--local function disable_all_recipe(event)
--  for _, recipe in pairs(data.raw.recipe) do
--    recipe.enabled = false
--  end
--end

--script.on_event(defines.events.disable_all_recipe, function(event)
--    disable_all_recipe(event)
--end
--)

--if smeltingstartresearch.value == true then
--	--event.player.force.technologies["angels-iron-smelting-1"].researched = true
--	--event.player.force.technologies["angels-copper-smelting-1"].researched = true
--	--event.player.force.technologies["angels-metallurgy-1"].researched = true
--	onlysmelting.giveresearch = function(force)
--	local techs = {
--	'angels-iron-smelting-1',
--	'angels-copper-smelting-1',
--	'angels-metallurgy-1',
--	'angels-steel-smelting-1',
--	}
--	for _,v in ipairs(techs) do
--	force.technologies[v].researched = true
--	end
--	end
--	
--	script.on_event(defines.events.on_player_joined_game, function(e)
--	onlysmelting.giveresearch(game.players[e.player_index].force)
--	end)
--
--	script.on_event(defines.events.on_force_created, function(e)
--	onlysmelting.giveresearch(e.force)
--	end)
--	
--end

--/c game.player.force.recipes["tin-plate"].enabled = false

local function regenerate_entity(ore)
  if game.entity_prototypes[ore] and game.entity_prototypes[ore].autoplace_specification then
    game.regenerate_entity(ore)
  end
end

remote.add_interface("Relfact",
{
  Regenerate = function()
--    for i, player in ipairs(game.players) do
--      player.print("Regenerating all ores now, this may take some time...")
--    end
    regenerate_entity("barite-ore")
    for i, player in ipairs(game.players) do
      player.print("All ores successfully regenerated!")
    end
  end
}
)

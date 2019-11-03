require("__stdlib__/stdlib/data/data").Util.create_data_globals()

if not Realfact then Realfact = {} end
--if not Realfact.ores then Realfact.ores = {} end
--f not Realfact.ores.settings then Realfact.ores.settings = {} end
--if not Realfact.lib then Realfact.lib = {} end

require('bootstrap/data')

--require("ore-functions")
--require("ore-icon-variations")

require("prototypes/item-groups")
require('prototypes/items/items')

-- #### RESOURCES ####
-- #### BEGIN ORES
require("prototypes.ores.barite")
--require("prototypes.barite")
--require("prototypes.chrome")
--require("prototypes.copper")
--require("prototypes.lanthanides")
--require("prototypes.lead-zinc")
--require("prototypes.magnesium")
--require("prototypes.manganese")
--require("prototypes.metallic")
--require("prototypes.niobium")
--require("prototypes.platinum")
--require("prototypes.pollucide")
--require("prototypes.rare-earth")
--require("prototypes.sulfide")
--require("prototypes.vanadium")
--require("prototypes.gem-ore")
-- #### END ORES

--for i, ore in pairs(Realfact.ores) do
--  Realfact.lib.resource.generate_data_stage(ore)
--end

--if settings.startup["Realfact-ores-enablbarite"].value == true then
--  Realfact.ores.bauxite.create_autoplace()
--end

--for _,recipe in pairs(data.raw.recipe) do
--  recipe.enabled = false
--end

--for i, prot_type in pairs (data.raw) do
--  prot_type = nil
--end

---PROCESSING RECIPES---

--RECIPE {
--    type = "recipe",
--    name = "barite-plate-3",
--    category = "casting",
--    enabled = false,
--    energy_required = 4,
--    ingredients = {
--        {type = "fluid", name = "molten-aluminium", amount = 100},
--        {type = "item", name = "sand-casting", amount = 1}
--    },
--    results = {
--        {type = "item", name = "aluminium-plate", amount = 50}
--    },
--    main_product = "aluminium-plate",
--    subgroup = "py-rawores-plates",
--    order = "c"
--}:add_unlock("aluminium-mk01")

---INITIAL PLATE---

RECIPE {
    type = "recipe",
    name = "barite-plate-1",
    category = "smelting",
    enabled = true,
    energy_required = 60,
    ingredients = {
        {type = "item", name = "ore-barite", amount = 40}
    },
    results = {
        {type = "item", name = "barite-plate", amount = 4}
    },
    main_product = "barite-plate",
    subgroup = "Realfact-rawores-plates",
    order = "a"
}

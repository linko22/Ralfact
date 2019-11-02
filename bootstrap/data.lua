local ignoredRecipies = {
    'rail', 'locomotive', 'cargo-wagon', 'train-stop', 'rail-signal', 'rail-chain-signal',
    'roboport', 'logistic-chest-passive-provider', 'logistic-chest-storage', 'construction-robot',
    'exoskeleton-equipment', 'personal-roboport-equipment',
    'storage-tank', 'pump', 'empty-barrel',
    'pumpjack', 'oil-refinery', 'chemical-plant', 'basic-oil-processing', 'solid-fuel-from-petroleum-gas',
    'advanced-oil-processing', 'sulfuric-acid', 'coal-liquefaction', 'heavy-oil-cracking', 'light-oil-cracking',
    'solid-fuel-from-light-oil', 'solid-fuel-from-heavy-oil', 'lubricant',
    'iron-plate', 'copper-plate', 'steel-plate', 'stone-brick', 'sulfur', 'plastic-bar',
    'copper-cable', 'iron-stick', 'iron-gear-wheel', 'electronic-circuit', 'advanced-circuit',
    'processing-unit', 'engine-unit', 'electric-engine-unit',
    'uranium-processing', 'uranium-fuel-cell', 'kovarex-enrichment-process',
    'explosives', 'battery', 'flying-robot-frame', 'low-density-structure',
    'rocket-part', 'rocket-fuel', 'rocket-control-unit',
    'automation-science-pack', 'logistic-science-pack', 'chemical-science-pack', 'military-science-pack',
    'production-science-pack', 'utility-science-pack',
    --[[ Exception for Time-Tool mod ]] 'red-wire', 'green-wire', 'arithmetic-combinator', 'decider-combinator',
    --[[ Exception for Time-Tool mod ]] 'constant-combinator', 'power-switch', 'programmable-speaker'
}

local ignoredTechnologies = {
    'construction-robotics', 'personal-roboport-equipment', 'exoskeleton-equipment', 'character-logistic-slots-1',
    'fluid-handling', 'oil-processing', 'railway', 'automated-rail-transportation', 'rail-signals',
    --[[ Exception for Time-Tool mod ]] 'circuit-network'
}

-- Turn-off and remove all recipies
for k, v_recp in pairs( data.raw.recipe ) do
    if v_recp.normal then
        v_recp.normal.enabled    = false
        v_recp.expensive.enabled = false
    else
        v_recp.enabled =  false
    end
end

local skipList = {}
for _, v in pairs( ignoredRecipies ) do skipList[ v ] = true end

for k, v_recp in pairs( data.raw.recipe ) do
    if not skipList[ v_recp.name ] then
        data.raw.recipe[ k ] = nil
    end
end

-- Turn-off and remove all technologies
for k, v_tech in pairs( data.raw.technology ) do
    v_tech.enabled       = false
    v_tech.hidden        = true
    v_tech.prerequisites = nil
end

local skipList = {}
for _, v in pairs( ignoredTechnologies ) do skipList[ v ] = true end

for k, v_tech in pairs( data.raw.technology ) do
    if not skipList[ v_tech.name ] then
        data.raw.technology [ k ] = nil
    end
end

data.raw["map-gen-presets"].default["ProjectFactorioIslands"] = {};
local target_preset = data.raw["map-gen-presets"].default["ProjectFactorioIslands"];
target_preset.order = "a";

-- --------------------------------------------------------------------------------
-- Init
-- --------------------------------------------------------------------------------

target_preset.basic_settings = {};
target_preset.basic_settings.property_expression_names = {};

-- --------------------------------------------------------------------------------
-- Basic Settings
-- --------------------------------------------------------------------------------

-- Ore distribution as in Railworld settings
target_preset.basic_settings.autoplace_controls = {
    ["iron-ore"] = { richness = 1, size = 3, frequency=0.33 },
    ["copper-ore"] = { richness = 1, size = 3, frequency=0.33 },
    ["uranium-ore"] = { richness = 1, size = 3, frequency=0.33 },
    ["stone"] = { richness = 1, size = 3, frequency=0.33 },
    ["coal"] = { richness = 1, size = 3, frequency=0.33 },
    ["crude-oil"] = { richness = 1, size = 3, frequency=0.33 },
}

-- --------------------------------------------------------------------------------
-- IslandStart Mod
-- --------------------------------------------------------------------------------
if( mods["IslandStart"] ) then
  target_preset.basic_settings.property_expression_names = {
    elevation = "IS_0_17-islands+continents"
  }
end

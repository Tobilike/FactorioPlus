-- Data updates for other mods


------------------ ALL MODS (Including Factorioplus) ------------------

-- Remove 'object' layer from walls so that shotguns can shoot over them. 
local wall_collision_mask_new = {layers={item=true, meltable=true,  wall=true, player=true, water_tile=true, is_lower_object=true}}

for k, v in pairs(data.raw["wall"]) do
  v.collision_mask = wall_collision_mask_new
end

------------------ INDIVIDUAL MODS ------------------
  
-- aai-industry
if mods["aai-industry"] then
	-- Do glass stuff
	switchrecipeingredient("glass","glass-plate")
	data.raw["recipe"]["glass"].hidden = true
	data.raw["item"]["glass"].hidden = true
	table.removetablewithmatchingentry(data.raw["technology"]["glass-processing"].effects,"recipe", "glass") 
	 
	 -- Do sand stuff
	switchrecipeingredient("sand","sand-ore")
	data.raw["recipe"]["sand"].hidden = true
	data.raw["item"]["sand"].hidden = true
end

-- Dectorio
if mods["Dectorio"] then
	-- do this
end

-- Flow Control
if mods["Flow Control"] then
	-- Place all new pipes into the F+ fluid handling subgroups
	if data.raw.item["pipe-junction"] then
	data.raw.item["pipe-junction"].subgroup = "pipes"
	end
	if data.raw.item["pipe-elbow"] then
	data.raw.item["pipe-elbow"].subgroup = "pipes"
	end
	if data.raw.item["pipe-straight"] then
	data.raw.item["pipe-straight"].subgroup = "pipes"
	end
end

-- FluidMustFlow
if mods["FluidMustFlow"] then
	-- Make a subgroup for Fluidmustflow objects in the F+ fluid handling category
	data:extend({
		{
		type = "item-subgroup",
		name = "FluidMustFlow",
		group = "fluid-handling",
		order = "z"
		}
	})

	-- List of FMF items
	local fluidMustFlowItems = {
	"duct", 
	"duct-cross", 
	"duct-curve", 
	"duct-exhaust",
	"duct-intake", 
	"duct-long", 
	"duct-small", 
	"duct-t-junction",
	"duct-underground", 
	"non-return-duct"
	}

	for _, itemName in pairs(fluidMustFlowItems) do
		if data.raw.item[itemName] then
		data.raw.item[itemName].subgroup = "FluidMustFlow"
		end
	end
end
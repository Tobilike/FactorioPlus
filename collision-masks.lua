data:extend({

	-- layer is for all wall protoypes
	{
	  type = "collision-layer",
	  name = "wall",
	}, 

	-- layer is for all flooring tiles (stone/concrete etc)
	{
	  type = "collision-layer",
	  name = "flooring_tile",
	}, 
	
})


-- Create a flooring tile mask, so that waterfill won't place over these floors.

local flooring_tiles = {
data.raw["tile"]["stone-path"],
data.raw["tile"]["concrete"],
data.raw["tile"]["hazard-concrete-left"],
data.raw["tile"]["hazard-concrete-right"],
data.raw["tile"]["refined-concrete"],
data.raw["tile"]["refined-hazard-concrete-left"],
data.raw["tile"]["refined-hazard-concrete-right"],
}

for k, v in ipairs(flooring_tiles) do
  v.collision_mask.layers.flooring_tile=true
end

-- Remove 'object' layer from walls so that shotguns can shoot over them. 

data.raw["wall"]["basic-wall"].collision_mask = {layers={item=true, meltable=true,  wall = true, player=true, water_tile=true, is_lower_object=true}}
data.raw["wall"]["stone-wall"].collision_mask = {layers={item=true, meltable=true,  wall = true, player=true, water_tile=true, is_lower_object=true}}



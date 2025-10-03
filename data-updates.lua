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

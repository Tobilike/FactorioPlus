function table.contains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

-- if a table has this entry, then delete it.
function table.removetablewithmatchingentry(t, key, value) 
    for i,v in pairs(t) do
		if (v[key] == value) then	
			table.remove(t,i)
			break
		end
    end
end

function table.removeentry(t, e) 
    for i,v in pairs(t) do
        if v == e then
            table.remove(t,i)
            break
        end
    end
end

function switchrecipeingredient(old_item,new_item)
	for k, v in pairs(data.raw["recipe"]) do
		if (v.ingredients ~= nil) then
			for i, w in pairs(v.ingredients) do
				if w.name==old_item then
					w.name=new_item
				end
			end
		end
	end
end


local tableMod = {}

tableMod.find = function(array, value)
	if value and array and type(array) == "table" then
		for index, needle in ipairs(array) do
			if needle and needle == value then
				return index
			end
		end
	end
	return nil
end

tableMod.findv = function(array, value)
	if value and array and type(array) == "table" then
		for _, needle in pairs(array) do
			if needle and needle == value then
				return needle
			end
		end
	end
	return nil
end

tableMod.findk = function(array, key)
	if key and array and type(array) == "table" then
		for needle, _ in pairs(array) do
			if needle and needle == key then
				return needle
			end
		end
	end
	return nil
end

tableMod.remove = function(array, index)
	if index and array and type(array) == "table" then
		for needle, _ in ipairs(array) do
			if needle and needle == index then
				array[needle] = nil
			end
		end
		return array
	end
	return nil
end

tableMod.removev = function(array, value, maxr)
	local removalCount = 0
	if value and array and type(array) == "table" then
		for key, needle in pairs(array) do
			if maxr then
				if needle == value and removalCount < maxr then
					removalCount = removalCount + 1
					array[key] = nil
				end
				if removalCount >= maxr then
					break
				end
			else
				if needle == value then
					array[key] = nil
				end
			end
		end
		return array
	end
	return nil
end

tableMod.insert = function(array, item, pos)
	if item and array and type(array) == "table" then
		if not pos or pos and type(pos) ~= "number" then
			array[#array+1] = item
		elseif pos and type(pos) == "number" then
			array[pos] = item
		end
		return array
	end
	return nil
end

tableMod.insertk = function(array, item, key)
	if item and key and array and type(array) == "table" then
		array[key] = item
	end
	return nil
end

return tableMod

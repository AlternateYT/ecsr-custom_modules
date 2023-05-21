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

return tableMod

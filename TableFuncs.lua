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

tableMod.create = function(count, item)
	if count and type(count) == "number" then
		local array = {}
		for i = 1, count do
			array[#array+1] = item or ""
		end
		return array
	end
	return nil
end

tableMod.clear = function(array)
	if array and type(array) == "table" then
		array = {}
		return array
	end
	return nil
end

tableMod.clone = function(array)
	if array and type(array) == "table" then
		local newArray = {}
		local count = 0
		for key, value in pairs(array) do
			count = count + 1
			if key then
				newArray[key] = value
			else
				newArray[count] = value
			end
		end
		return newArray
	end
	return nil
end

tableMod.concat = function(array, sep, i, j)
	if array and type(array) == "table" then
		local arrayString = ""
		if not sep or sep and type(sep) ~= "string" then sep = "" end 
		if not i or i and type(i) ~= "number" then i = 1 end
		if not j or j and type(j) ~= "number" then j = #array end
		for index, value in ipairs(array) do
			if index >= i and index <= j then
				value = tostring(value)
				if value and type(value) == "string" then
					if index < j then
						arrayString = arrayString..(value..sep)
					else
						arrayString = arrayString..value
					end
				end
			end
		end
		return arrayString
	end
	return nil
end

tableMod.unpack = function(array, i, j)
	if array and type(array) == "table" then
		local arrayString = ""
		if not i or i and type(i) ~= "number" then i = 1 end
		if not j or j and type(j) ~= "number" then j = #array end
		for index, value in ipairs(array) do
			if index >= i and index <= j then
				value = tostring(value)
				if value and type(value) == "string" then
					arrayString = arrayString..(value.." ")
				end
			end
		end
		return arrayString
	end
	return nil
end

tableMod.maxn = function(array)
	if array and type(array) == "table" then
		local highestN = 0
		for index, _ in ipairs(array) do
			if index and type(index) == "number" then
				if index > highestN then
					highestN = index
				end
			end
		end
		return highestN
	end
	return nil
end

tableMod.getn = function(array)
	if array and type(array) == "table" then
		local count = 0
		for _, _ in pairs(array) do
			count = count + 1
		end
		return count
	end
	return nil
end

tableMod.move = function(array, a, b, t, dst)
	if array and type(array) == "table" then
		if not a or a and type(a) ~= "number" then a = 1 end
		if not b or b and type(b) ~= "number" then b = #array end
		if not t or t and type(t) ~= "number" then t = 1 end
		if not dst or dst and type(dst) ~= "table" then dst = {} end
		for index, value in ipairs(array) do
			if index >= a and index <= b then
				dst[t] = value
				t = t + 1
			end
		end
		return dst
	end
	return nil
end

tableMod.pack = function(...)
	local array = {}
	local params = {...}
	for _, param in pairs(params) do
		array[#array+1] = param
	end
	return array
end

return tableMod

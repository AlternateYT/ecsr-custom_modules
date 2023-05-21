Insert raw code into ReplicatedStorage as a ModuleScript and rename them according to their file name on GitHub.

# FUNCTIONALITIES
## table
table.find ✅  
table.findk ✅ [CUSTOM]  
table.findv ✅ [CUSTOM]  
table.remove ✅  
table.removev ✅ [CUSTOM]  
table.insert ✅  
table.insertk ✅ [CUSTOM]  
table.create ✅  
table.clear ✅  
table.clone ✅  
table.concat ✅  
table.unpack ✅  
table.maxn ✅  
table.getn ✅  
table.move ✅  
table.pack ✅

# DOCUMENTATION
## table.find
Finds the value given inside an array, returns nil if it couldn't find it, and returns the index if its found  
`module.find(table, Variant)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {156, 1}

local finding = table_.find(info, 156)
if finding then
	print(finding.." - FOUND!")
else
	print("nil - NOT FOUND!")
end
```
## table.findv
Similar to table.find, but is operable outside of arrays and also returns the value if it's found instead.  
`module.findv(table, Variant)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {
	["builderman"] = 156,
	["ROBLOX"] = 1
}

local finding = table_.findv(info, 1)
if finding then
	print(finding.." - FOUND!")
else
	print("nil - NOT FOUND!")
end
```
## table.findk
Similar to table.find but instead finds the key given inside a dictionary.  
`module.findk(table, Variant)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {
	["builderman"] = 156,
	["ROBLOX"] = 1
}

local finding = table_.findk(info, "ROBLOX")
if finding then
	print(finding.." - FOUND!")
else
	print("nil - NOT FOUND!")
end
```
## table.remove
Removes an item from the array which is associated with the given index.  
`module.remove(table, Variant)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {156, 1}

table_.remove(info, 2)
for _, val in pairs(info) do
	print(val)
end
```
## table.removev
Similar to table.remove but is operable outside of an array and searches for the given value optionally until the maximum amount of searches set.  
`module.removev(table, Variant, number?)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {
	["builderman"] = 156, 
	["builderman2"] = 156, 
	["builderman3"] = 156, 
	["ROBLOX"] = 1, 
	["ROBLOX2"] = 1
}

table_.removev(info, 156, 2)
table_.removev(info, 1)
for key, _ in pairs(info) do
	print(key)
end
```
## table.insert
Adds the given value to a table at it's given position or index. If no position is given, it'll append the given value instead.  
`module.insert(table, Variant, number?`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {156, 156, 156, 1, 1}

table_.insert(info, 9999, 7)
table_.insert(info, 45436)
for index, val in pairs(info) do
	print("Index: "..index..", Value: "..val)
end
```
## table.insertk
Similar to table.insert, but assigns the value to a key instead of a position or index, and the key must be given.  
`module.insertk(table, Variant, Variant)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {
	["builderman"] = 156, 
	["builderman2"] = 156, 
	["builderman3"] = 156, 
	["ROBLOX"] = 1, 
	["ROBLOX2"] = 1
}

table_.insertk(info, 727419, "uhoh")
for index, val in pairs(info) do
	print("Key: "..index..", Value: "..val)
end
```
## table.create
Creates an array with as many of the given value that is specified. If no value is specified, the value will default to an empty string; "".  
`module.create(number, Variant?)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)

local array = tableMod.create(3, "builderman")
for index, val in ipairs(array) do
	print("Index: "..index..", Value: "..val)
end

local array2 = tableMod.create(3)
for index, val in ipairs(array2) do
	print("Index: "..index..", Value: "..val)
end
```
## table.clear
Removes all items or clears the table given.  
`module.clear(table)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {
	["builderman"] = 156,
	["ROBLOX"] = 1
}

for _, value in pairs(info) do
	print(value)
end
print("Clearing..")
info = tableMod.clear(info)
for _, value in pairs(info) do
	print(value)
end
```
## table.concat
Transforms the array given into a string, optionally along with a seperator and starting and ending position.  
`module.concat(table, string?, number?, number?)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {156, 1, 2, 3, 4, 5}
local infoString = ""

infoString = tableMod.concat(info, ", ", 2, 3)
print(infoString)
```
## table.clone
Returns a duplicate of the table given.  
`module.clone(table)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local infoarray = {156, 1}
local infoarray2 = {}
local infodict = {
	["builderman"] = 156,
	["ROBLOX"] = 1
}
local infodict2 = {}
local infoString = ""

infoarray2 = tableMod.clone(infoarray)
for _, value in pairs(infoarray2) do
	print("Array; "..value)
end

infodict2 = tableMod.clone(infodict)
for key, value in pairs(infodict2) do
	print('Dictionary; ["'..key..'"] = '..value)
end
```
## table.unpack
Similar to table.concat except the seperator is always " ".  
`module.unpack(table, number?, number?)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {156, 1, 2, 3, 3, 2, 1}
local infoString = ""

infoString = tableMod.unpack(info, 3, 5)
print(infoString)
```
## table.maxn
Returns the highest index found in the given array.  
`module.maxn(table)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {156, 1, 2, 3, 3, 2, 1}

print(tableMod.maxn(info))
```
## table.getn
Similar to table.maxn, returns however many items are found in the given array.  
`module.getn(table)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {156, 1, 2, 3, 3, 2, 1, 7, 2, 8, 1}

print(tableMod.getn(info))
```
## table.move
Moves the given array optionally from a specified starting position to ending position pasted at a specified array's specified position.  
`module.move(table, number?, number?, number?, table?)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {156, 1, 2, 3, 3, 2, 1, 7, 2, 8, 1}
local info2 = {}

tableMod.move(info, 2, 4, 5, info2)
for index, value in pairs(info2) do
	print("Index: "..index..", Value: "..value)
end
```
## table.pack
Inserts any given parameters into a new table and returns it.  
`module.pack(...)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {}

info = tableMod.pack(1, 2, 3, 4, 5)
for index, value in pairs(info) do
	print("Index: "..index..", Value: "..value)
end
```

Insert the raw code into ReplicatedStorage as a ModuleScript and rename them according to their file name on GitHub.

# FUNCTIONALITIES
## table
table.find ✅  
table.findk ✅ [CUSTOM]  
table.findv ✅ [CUSTOM]  
table.remove ✅  
table.removev ✅ [CUSTOM]  
table.insert ✅  
table.create 🕒  
table.clear 🕒  
table.clone 🕒  
table.concat 🕒  
table.unpack 🕒  
table.maxn 🕒  
table.getn 🕒  
table.move 🕒  
table.pack 🕒

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

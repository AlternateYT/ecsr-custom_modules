Insert the code into ReplicatedStorage as a ModuleScript and rename them according to their file name on GitHub.

# FUNCTIONALITIES
## table
table.find ✅  
table.findk ✅ [CUSTOM]  
table.findv ✅ [CUSTOM]  
table.remove ✅  
table.removev ✅ [CUSTOM]  
table.insert 🕒  
table.create 🕒  
table.clear 🕒  
table.clone 🕒  
table.concat 🕒  
table.unpack 🕒  
table.maxn 🕒  
table.move 🕒  
table.pack 🕒

# DOCUMENTATION
## table.find
Finds the value given inside an array, returns nil if it couldn't find it, and returns the index if its found  
`module.find(table, any)`
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
`module.findv(table, any)`
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
`module.findk(table, any)`
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
`module.remove(table, any)`
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
local info = {156, 1}

tableMod.remove(info, 2)
for _, val in pairs(info) do
	print(val)
end
```
## table.removev
Similar to table.remove but is operable outside of an array and searches for the given value optionally until the maximum amount of searches set.  
`module.remove(table, any, number)`
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

tableMod.removev(info, 156, 2)
tableMod.removev(info, 1)
for key, _ in pairs(info) do
	print(key)
end
```

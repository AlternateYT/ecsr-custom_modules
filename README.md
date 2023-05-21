Insert the code into ReplicatedStorage as a ModuleScript and rename them according to their file name on GitHub.

# FUNCTIONALITIES
## table
table.find ✅  
table.findk ✅ [CUSTOM]  
table.remove 🕒  
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
table.find(table, any)
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
Similar to table.find, but is operable outside of arrays and also returns the value if its found instead.  
table.findv(table, any)
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
table.findk(table, any)
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

You can view the documentation [here](https://sleepdeprived.gitbook.io/ecsr-custom_modules/).

# Setup
Insert code via the raw files into **ReplicatedStorage** as a **ModuleScript** and rename them according to their file name on GitHub.  
Heres how you'd use the [table](https://raw.githubusercontent.com/AlternateYT/ecsr-custom_modules/main/TableFuncs.lua) module inside of your scripts:
```lua
local rs = game:GetService("ReplicatedStorage")
local table_ = require(rs.TableFuncs)
```

# Status
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
table.sort ❌

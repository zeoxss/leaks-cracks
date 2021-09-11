local hwids = loadstring(game:HttpGet("https://raw.githubusercontent.com/Emptiness1337/cracks/main/nanohub/nanohubhwids.lua", true))()
local hwidUsed = hwids[1]
hookfunction(game:GetService("RbxAnalyticsService").GetClientId, function()
    return hwidUsed
end)


loadstring(game:HttpGet('https://raw.githubusercontent.com/MrAntiMatteryAlt/No/main/Loader.lua'))()
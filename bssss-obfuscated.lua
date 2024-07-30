
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()


local function Notify(v)
    Fluent:Notify({
        Title = "ELGATO HUB",
        Content = v,
        Duration = 5
    })
end

Notify("join discord to get update")

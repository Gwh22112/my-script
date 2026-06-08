return function()

    local base = "https://raw.githubusercontent.com/Gwh22112/my-script/main/"

    local State = {
        AntiAFK = true,

        IngredientFilter = {
            Enabled = false,
            Name = "",
            Rarity = "Any"
        }
    }

    local UI = loadstring(game:HttpGet(base .. "ui.lua"))()()
    local Systems = loadstring(game:HttpGet(base .. "systems.lua"))()()
    local Features = loadstring(game:HttpGet(base .. "features.lua"))()()
    local Filter = loadstring(game:HttpGet(base .. "filter.lua"))()()
    local AntiAFK = loadstring(game:HttpGet(base .. "antiafk.lua"))()()

    Systems(State)
    AntiAFK(State)
    Features(State, Filter)
    UI(State)

end

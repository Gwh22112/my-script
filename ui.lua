return function()
    return function(State)

        print("UI Loaded")

        -- DEFAULTS
        State.IngredientFilter.Enabled = false
        State.IngredientFilter.Name = ""
        State.IngredientFilter.Rarity = "Any"

        -- 🔥 FAKE UI (for now using variables)

        -- TURN FILTER ON
        task.spawn(function()
            wait(3)

            State.IngredientFilter.Enabled = true
            print("Filter Enabled")

            State.IngredientFilter.Name = "" -- example: "apple"
            State.IngredientFilter.Rarity = "Any" -- Common / Rare / etc
        end)

        -- DEBUG
        task.spawn(function()
            while true do
                task.wait(5)

                print("----- FILTER STATE -----")
                print("Enabled:", State.IngredientFilter.Enabled)
                print("Name:", State.IngredientFilter.Name)
                print("Rarity:", State.IngredientFilter.Rarity)
            end
        end)

    end
end

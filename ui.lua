return function()
    return function(State)

        print("UI Loaded")

        -- 🔥 SIMPLE TEST CONTROLS (you can remove later)

        task.spawn(function()
            while true do
                task.wait(5)

                print("AntiAFK:", State.AntiAFK)
                print("Filter Enabled:", State.IngredientFilter.Enabled)
                print("Filter Name:", State.IngredientFilter.Name)
                print("Filter Rarity:", State.IngredientFilter.Rarity)
            end
        end)

        -- Example toggles (you can hook to real UI later)
        State.IngredientFilter.Enabled = true
        State.IngredientFilter.Name = ""
        State.IngredientFilter.Rarity = "Any"

    end
end

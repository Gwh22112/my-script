return function()
    return function(State, Filter)

        -- 🔥 REPLACE THIS WITH YOUR REAL GAME LOGIC
        local function GetIngredients()
            return {
                {Name = "Apple", Rarity = "Common"},
                {Name = "Golden Apple", Rarity = "Legendary"},
                {Name = "Berry", Rarity = "Rare"}
            }
        end

        local function AutoFarm()
            while true do
                task.wait(1)

                for _, ingredient in pairs(GetIngredients()) do
                    if Filter(State)(ingredient) then
                        print("Collected:", ingredient.Name, "-", ingredient.Rarity)

                        -- 👉 PUT YOUR PICKUP / BUY / FARM CODE HERE
                    end
                end
            end
        end

        task.spawn(AutoFarm)

    end
end

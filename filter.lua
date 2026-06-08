return function()
    return function(State)

        return function(itemName)

            if not State.IngredientFilter.Enabled then
                return true
            end

            local data = Ingredients[itemName]
            if not data then return false end

            -- NAME FILTER
            if State.IngredientFilter.Name ~= "" then
                if not string.find(
                    string.lower(itemName),
                    string.lower(State.IngredientFilter.Name)
                ) then
                    return false
                end
            end

            -- RARITY FILTER
            if State.IngredientFilter.Rarity ~= "Any" then
                if data.Rarity ~= State.IngredientFilter.Rarity then
                    return false
                end
            end

            return true
        end

    end
end

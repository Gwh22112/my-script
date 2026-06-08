return function()
    return function(State)

        return function(item)

            if not State.IngredientFilter.Enabled then
                return true
            end

            -- NAME FILTER
            if State.IngredientFilter.Name ~= "" then
                if not string.find(
                    string.lower(item.Name),
                    string.lower(State.IngredientFilter.Name)
                ) then
                    return false
                end
            end

            -- RARITY FILTER
            if State.IngredientFilter.Rarity ~= "Any" then
                if item.Rarity ~= State.IngredientFilter.Rarity then
                    return false
                end
            end

            return true
        end

    end
end

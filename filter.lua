return function()
    return function(State)

        return function(ingredient)

            if not State.IngredientFilter.Enabled then
                return true
            end

            if State.IngredientFilter.Name ~= "" then
                if not string.find(
                    string.lower(ingredient.Name),
                    string.lower(State.IngredientFilter.Name)
                ) then
                    return false
                end
            end

            if State.IngredientFilter.Rarity ~= "Any" then
                if ingredient.Rarity ~= State.IngredientFilter.Rarity then
                    return false
                end
            end

            return true
        end

    end
end

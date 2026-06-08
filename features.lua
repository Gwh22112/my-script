return function()
    return function(State, Filter)

        local passes = Filter(State)

        -- 🔥 PUT YOUR REAL GAME FUNCTION HERE
        local function GetIngredients()
            -- YOU MUST REPLACE THIS WITH YOUR GAME'S ACTUAL METHOD
            return workspace:GetDescendants() -- example fallback
        end

        local function IsIngredient(obj)
            return obj:IsA("Tool") or obj:FindFirstChild("Rarity")
        end

        local function GetData(obj)
            return {
                Name = obj.Name,
                Rarity = obj:FindFirstChild("Rarity") and obj.Rarity.Value or "Common"
            }
        end

        local function Collect(obj)
            -- 🔥 PUT YOUR PICKUP / BUY CODE HERE
            print("Collecting:", obj.Name)
        end

        local function AutoFarm()
            while true do
                task.wait(1)

                for _, obj in pairs(GetIngredients()) do
                    if IsIngredient(obj) then
                        local data = GetData(obj)

                        if passes(data) then
                            Collect(obj)
                        end
                    end
                end
            end
        end

        task.spawn(AutoFarm)

    end
end

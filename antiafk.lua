return function()
    return function(State)

        local Players = game:GetService("Players")
        local VirtualUser = game:GetService("VirtualUser")

        Players.LocalPlayer.Idled:Connect(function()
            if State.AntiAFK then
                VirtualUser:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                task.wait(1)
                VirtualUser:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
            end
        end)

    end
end

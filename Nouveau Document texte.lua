local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

while true do
    for _, bag in ipairs(workspace.Bags:GetChildren()) do
        if bag:IsA("Model") then
            local primaryPart = bag.PrimaryPart or bag:FindFirstChild("PrimaryPart")
            if primaryPart then
                bag:SetPrimaryPartCFrame(humanoidRootPart.CFrame * CFrame.new(0, 2, 0))
            end
        end
    end
    wait(1)  -- Wait for 1 second before repeating
end

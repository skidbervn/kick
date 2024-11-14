local ReplicatedStorage = game:GetService("ReplicatedStorage")
local helloEvent = ReplicatedStorage:WaitForChild("HelloEvent")
local Players = game:GetService("Players")

-- Khi sự kiện được kích hoạt, kick người chơi với lý do "Hello"
helloEvent.OnClientEvent:Connect(function()
    local player = Players.LocalPlayer
    player:Kick("Hello")  -- Người chơi sẽ bị kick với lý do "Hello"
end)

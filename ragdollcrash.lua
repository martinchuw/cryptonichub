game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':UnequipTools()
pcall(function()
	game:GetService("Players").LocalPlayer.Backpack:WaitForChild("potion").Parent = game:GetService("Players").LocalPlayer.Character
end)
game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':UnequipTools()

local function tween(...)
    game:GetService("TweenService"):Create(...):Play()
end

game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()
local loading = Instance.new("ScreenGui")
local background = Instance.new("Frame")
local gradient = Instance.new("UIGradient")
local status = Instance.new("TextLabel")

loading.Name = "loading"
loading.Parent = game:GetService("CoreGui")
loading.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

background.Name = "background"
background.Parent = loading
background.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
background.Position = UDim2.new(0, 0, -0.100000001, 0)
background.Size = UDim2.new(1, 0, 1.10000002, 0)

gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.45, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(76, 76, 76))}
gradient.Rotation = 90
gradient.Name = "gradient"
gradient.Parent = background

status.Name = "status"
status.Parent = loading
status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
status.BackgroundTransparency = 1.000
status.Position = UDim2.new(0, 0, 0.893442631, 0)
status.Size = UDim2.new(1, 0, 0.0355480109, 0)
status.Font = Enum.Font.SourceSansItalic
status.Text = "< Loading >"
status.TextColor3 = Color3.fromRGB(255, 255, 255)
status.TextScaled = true
status.TextSize = 14.000
status.TextStrokeColor3 = Color3.fromRGB(52, 52, 52)
status.TextStrokeTransparency = 0.000
status.TextWrapped = true
if syn then syn.protect_gui(loading) end

repeat wait() until game:GetService("Players").LocalPlayer
status.Text = "< Loading Crash omnilocua... >"

if not game:IsLoaded() then
    game.Loaded:wait()
end
local baseplate = Instance.new("Part")
baseplate.Parent = workspace
baseplate.Size = Vector3.new(40000,100,40000)
baseplate.Anchored = true
baseplate.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,1500,0) -- higher number for it to spawn higher
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = baseplate.CFrame + Vector3.new(0,10,0)
wait(1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/hat%20%2B%20head%20resize'))()
wait(65)
local tool = "potion"

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") and v.Name == tool then
v.Parent = game:GetService("Players").LocalPlayer.Character
end
end
wait(.2)
local LocalPlayer = game:GetService("Players").LocalPlayer
LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
wait(2)
loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/hat%20resize%20%2B%20drop'))()
game.CoreGui.loading:Destroy()

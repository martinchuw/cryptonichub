--[[
	credits for HexR#5961
    this will be opensource because it is not my code, if you want to modify it to have your "custom cmdbar" you are welcome to do so
	if you make your version please do not obfuscate the script
    here is the roblox model <3
	https://www.roblox.com/library/11116914831/Cryptonic-cmdbar
]]


local Cryptonic = Instance.new("ScreenGui")
local bar = Instance.new("Frame")
local icon = Instance.new("ImageLabel")
local textcmd = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local UIScale = Instance.new("UIScale")
local back = Instance.new("ImageLabel")
Cryptonic.Name = "Cryptonic"
Cryptonic.Parent = game.CoreGui
Cryptonic.ResetOnSpawn = false
bar.Name = "bar"
bar.Parent = Cryptonic
bar.AnchorPoint = Vector2.new(0.5, 0.5)
bar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
bar.BorderSizePixel = 0
bar.Position = UDim2.new(0.501219511, 0, 0.848813295, 0)
bar.Size = UDim2.new(0, 248, 0, 41)
icon.Name = "icon"
icon.Parent = bar
icon.AnchorPoint = Vector2.new(0.5, 0.5)
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.BackgroundTransparency = 1.000
icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
icon.BorderSizePixel = 0
icon.Position = UDim2.new(0.074000001, -1, 0.519999981, 0)
icon.Size = UDim2.new(0.0719999969, 6, 0.391241461, 6)
icon.ZIndex = 5
icon.Image = "rbxassetid://7072707704"
icon.ImageColor3 = Color3.fromRGB(185, 185, 185)
icon.ScaleType = Enum.ScaleType.Fit
textcmd.Name = "textcmd"
textcmd.Parent = bar
textcmd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textcmd.BackgroundTransparency = 1.000
textcmd.Position = UDim2.new(0.138838619, 0, 0, 0)
textcmd.Size = UDim2.new(0.841000199, 0, 0.0256090853, 40)
textcmd.ZIndex = 2
textcmd.Font = Enum.Font.Gotham
textcmd.PlaceholderColor3 = Color3.fromRGB(115, 115, 115)
textcmd.PlaceholderText = "Command Bar"
textcmd.Text = ""
textcmd.TextColor3 = Color3.fromRGB(175, 175, 175)
textcmd.TextSize = 14.000
textcmd.TextStrokeColor3 = Color3.fromRGB(175, 175, 175)
textcmd.TextXAlignment = Enum.TextXAlignment.Left
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = bar
UIScale.Parent = bar
back.Name = "back"
back.Parent = bar
back.Active = true
back.AnchorPoint = Vector2.new(0.5, 0.5)
back.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
back.BackgroundTransparency = 1.000
back.Position = UDim2.new(0.504000008, 0, 0.497351646, 0)
back.Size = UDim2.new(1.05600011, 48, 1.31773901, 48)
back.ZIndex = -2
back.Image = "rbxassetid://6049668989"
back.ImageColor3 = Color3.fromRGB(0, 0, 0)
back.ScaleType = Enum.ScaleType.Slice
back.SliceCenter = Rect.new(128, 128, 128, 128)
back.SliceScale = 0.350
game:GetService("UserInputService").InputBegan:Connect(function(btn, typ)
	if typ then return end
	if tbn.KeyCode.Name == "Semicolon" then
		textcmd.Text = ""
		wait()
		textcmd:CaptureFocus()
	end
 end)
 textcmd.FocusLost:Connect(function(Foc)
	if Foc == true then
		 if string.sub(textcmd.Text,1,0) == ("")  then
			 local l_cmd = string.sub(textcmd.Text,1)
			 game.GetService(game, "Players"):Chat("c!"..l_cmd)
		 end
		 textcmd.Text = ""
	 end
 end)

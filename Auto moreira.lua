--// Player
local player = game.Players.LocalPlayer

--// ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "MoreiraV2Gui"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

--// Main Frame
local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(420,200)
main.Position = UDim2.new(0.5,-210,0.5,-100)
main.BackgroundColor3 = Color3.fromRGB(0,0,0)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true
main.Parent = gui

Instance.new("UICorner", main).CornerRadius = UDim.new(0,16)

--// Title (slightly smaller)
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,60)
title.Position = UDim2.new(0,0,0.05,0)
title.BackgroundTransparency = 1
title.Text = "MOREIRA V7 By ZeroScripts!"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Font = Enum.Font.Arcade
title.TextScaled = true
title.Parent = main

--// Button (CENTERED)
local button = Instance.new("TextButton")
button.Size = UDim2.new(0.75,0,0,65)
button.Position = UDim2.new(0.5,0,0.6,0)
button.AnchorPoint = Vector2.new(0.5,0.5) -- centers perfectly
button.Text = "FIND BOTS.."
button.TextColor3 = Color3.fromRGB(255,0,255)
button.Font = Enum.Font.Arcade
button.TextScaled = true
button.BorderSizePixel = 0
button.Parent = main

--// Gradient
local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(120,0,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255,0,255))
}
gradient.Parent = button

Instance.new("UICorner", button).CornerRadius = UDim.new(0,20)

--// Fullscreen Overlay
local overlay = Instance.new("Frame")
overlay.Size = UDim2.new(1,0,1,0)
overlay.Position = UDim2.new(0,0,0,0)
overlay.BackgroundColor3 = Color3.new(0,0,0)
overlay.BorderSizePixel = 0
overlay.Visible = false
overlay.ZIndex = 100
overlay.Parent = gui

--// Loading Text
local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1,0,0.12,0)
loadingText.Position = UDim2.new(0,0,0.44,0)
loadingText.BackgroundTransparency = 1
loadingText.Text = "FINDING BOTS..."
loadingText.TextColor3 = Color3.fromRGB(255,255,255)
loadingText.Font = Enum.Font.Arcade
loadingText.TextScaled = true
loadingText.ZIndex = 101
loadingText.Parent = overlay

--// Click
button.MouseButton1Click:Connect(function()
	overlay.Visible = true
end)

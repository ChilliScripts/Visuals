-- LocalScript inside StarterGui
local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ChilliDuperCompact"
ScreenGui.Parent = PlayerGui

-- Main Frame with 25% Opacity (0.75 Transparency)
local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 320, 0, 160)
Main.Position = UDim2.new(0.5, -160, 0.5, -80)
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.BackgroundTransparency = 0.75 -- 25% Opaque
Main.Active = true
Main.Draggable = true 
Main.Parent = ScreenGui

-- Purple Border and Corners
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 8)
local Stroke = Instance.new("UIStroke", Main)
Stroke.Color = Color3.fromRGB(160, 32, 240)
Stroke.Thickness = 2

-- Title updated to "DUPER TOOL"
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Text = "🌶️ CHILLI's DUPER TOOL v2.1"
Title.TextColor3 = Color3.fromRGB(80, 200, 255)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.TextSize = 14
Title.Parent = Main

-- The Button
local Btn = Instance.new("TextButton")
Btn.Size = UDim2.new(0.85, 0, 0, 40)
Btn.Position = UDim2.new(0.075, 0, 0.25, 0)
Btn.BackgroundColor3 = Color3.fromRGB(170, 60, 240)
Btn.BackgroundTransparency = 0.2
Btn.Text = "DUPER 50M+ BRAINROTS"
Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
Btn.Font = Enum.Font.GothamBold
Btn.TextSize = 14
Btn.Parent = Main
Instance.new("UICorner", Btn)

-- Status Text
local Status = Instance.new("TextLabel")
Status.Size = UDim2.new(1, 0, 0, 20)
Status.Position = UDim2.new(0, 0, 0.55, 0)
Status.Text = "Awaiting user input..."
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1
Status.Font = Enum.Font.Code
Status.TextSize = 11
Status.Parent = Main

-- Progress Bar
local BarBg = Instance.new("Frame")
BarBg.Size = UDim2.new(0.9, 0, 0, 8)
BarBg.Position = UDim2.new(0.05, 0, 0.75, 0)
BarBg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BarBg.BackgroundTransparency = 0.5
BarBg.Parent = Main

local Fill = Instance.new("Frame")
Fill.Size = UDim2.new(0, 0, 1, 0)
Fill.BackgroundColor3 = Color3.fromRGB(160, 32, 240)
Fill.BorderSizePixel = 0
Fill.Parent = BarBg

-- Logic
Btn.MouseButton1Click:Connect(function()
    Btn.Visible = false
    
    Status.Text = "Allocating memory for new instances..."
    Fill:TweenSize(UDim2.new(0.4, 0, 1, 0), "Out", "Quad", 1.5)
    task.wait(2)
    
    -- Never-ending loop on memory writing
    while true do
        Status.Text = "Writing cloned entities to memory..."
        Fill:TweenSize(UDim2.new(0.98, 0, 1, 0), "Out", "Quad", 12)
        task.wait(6)
        -- Small jitter to look active
        Fill:TweenSize(UDim2.new(0.96, 0, 1, 0), "In", "Quad", 0.5)
        task.wait(0.5)
    end
end)

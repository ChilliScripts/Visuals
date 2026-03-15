local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Main Container
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "VisualMockupUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Styling Constants
local BG_COLOR = Color3.fromRGB(25, 15, 35) -- Deep dark purple
local STROKE_COLOR = Color3.fromRGB(110, 60, 180) -- Neon purple outline
local TEXT_COLOR = Color3.fromRGB(230, 210, 255)

-- Function to create the specific "Hub" style buttons
local function createButton(name, pos, size)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Text = name
    btn.Size = size or UDim2.new(0, 140, 0, 32)
    btn.Position = pos
    btn.BackgroundColor3 = BG_COLOR
    btn.TextColor3 = TEXT_COLOR
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 13
    btn.Parent = screenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0) -- Makes it a pill shape
    corner.Parent = btn

    local stroke = Instance.new("UIStroke")
    stroke.Color = STROKE_COLOR
    stroke.Thickness = 1.5
    stroke.Parent = btn

    -- Visual feedback only
    btn.MouseButton1Down:Connect(function()
        stroke.Color = Color3.new(1, 1, 1)
    end)
    btn.MouseButton1Up:Connect(function()
        stroke.Color = STROKE_COLOR
    end)

    return btn
end

-- --- UI LAYOUT (Matching the Image) ---

-- Center Title
local mainTitle = createButton("Nine Hub Duels", UDim2.new(0.5, -90, 0.35, 0), UDim2.new(0, 180, 0, 40))
mainTitle.TextSize = 16
mainTitle.TextColor3 = Color3.fromRGB(180, 100, 255)

-- Right Side Buttons
createButton("Float", UDim2.new(0.5, 100, 0.28, 0), UDim2.new(0, 110, 0, 30))
createButton("Bat Aimbot", UDim2.new(0.5, 40, 0.45, 0), UDim2.new(0, 140, 0, 35))
createButton("TP", UDim2.new(0.5, 190, 0.45, 0), UDim2.new(0, 140, 0, 35))
createButton("Auto Left", UDim2.new(0.5, 40, 0.58, 0), UDim2.new(0, 140, 0, 35))
createButton("Auto Right", UDim2.new(0.5, 190, 0.58, 0), UDim2.new(0, 140, 0, 35))

-- Left Side Buttons
createButton("MENU", UDim2.new(0.05, 0, 0.45, 0), UDim2.new(0, 80, 0, 40))
createButton("TAUNT", UDim2.new(0.05, 0, 0.55, 0), UDim2.new(0, 80, 0, 40))

-- Top Left Status
local readyLabel = createButton("READY", UDim2.new(0.05, 0, 0.35, 0), UDim2.new(0, 250, 0, 25))
readyLabel.TextXAlignment = Enum.TextXAlignment.Left
readyLabel.Text = "  READY"

print("Visual mockup of UI layout complete.")

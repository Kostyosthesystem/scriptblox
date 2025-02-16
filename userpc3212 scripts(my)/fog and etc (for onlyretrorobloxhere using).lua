local hint = Instance.new("Hint")
hint.Parent = game.Workspace
hint.Text = "3x2x6x8 was hack this place"

local decalId = "http://www.roblox.com/asset/?id=117403818661220"
local spamRate = 0.1
local maxDecals = 100

local function spamDecals()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character then return end
    
    local targetPart = character:FindFirstChild("Torso") or character:FindFirstChild("Head")
    if not targetPart then return end
    
    for i = 1, maxDecals do
        for _, face in ipairs({"Front", "Back", "Left", "Right", "Top", "Bottom"}) do
            local decal = Instance.new("Decal")
            decal.Texture = decalId
            decal.Face = face
            decal.Parent = targetPart
        end
        wait(spamRate)
    end
end

local lighting = game:GetService("Lighting")
lighting.FogStart = 80
lighting.FogEnd = 100

local function rainbowFog()
    local colors = {
        BrickColor.Red(),
        BrickColor.new("Bright orange"),
        BrickColor.Yellow(),
        BrickColor.Green(),
        BrickColor.new("Bright blue"),
        BrickColor.new("Bright purple"),
        BrickColor.new("Violet"),
    }

    while true do
        for _, color in ipairs(colors) do
            lighting.FogColor = color.Color
            wait(0.15)
        end
    end
end

rainbowFog()
spamDecals()

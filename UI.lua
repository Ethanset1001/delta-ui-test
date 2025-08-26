local tweenservice = game:GetService("TweenService")
local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "deltagui"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = frame

local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
local goal = {}
goal.Size = UDim2.new(0, 600, 0, 300)

local tween = tweenservice:Create(frame, tweeninfo, goal)
tween:Play()

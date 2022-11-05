if game.CoreGui:FindFirstChild("ScreenGui") then
	game.CoreGui["ScreenGui"]:Destroy()
end

local function Dragify(Frame, dragSpeed)
	local dragToggle, dragInput, dragStart, dragPos, startPos
	local dragSpeed = dragSpeed or 0.15

	local function updateInput(input)
		local Delta = input.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if (input == dragInput and dragToggle) then
			updateInput(input)
		end
	end)
end

local interface = {}

function interface:create(title)
	local ScreenGui = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local Line = Instance.new("Frame")
	local Icon = Instance.new("ImageButton")
	local Scrolling = Instance.new("ScrollingFrame")
	local Section = Instance.new("TextLabel")
	local UIPadding = Instance.new("UIPadding")
	local UIListLayout = Instance.new("UIListLayout")
	local Toggle = Instance.new("Frame")
	local FunctionTitle = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")
	local Description = Instance.new("TextLabel")
	local UIPadding_3 = Instance.new("UIPadding")
	local CallbackContainer = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Circle = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local ToggleCallback = Instance.new("TextButton")
	local Button = Instance.new("Frame")
	local ButtonLayer = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local ButtonFunction = Instance.new("TextButton")



	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = ScreenGui
	Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Main.Position = UDim2.new(0.506578982, 0, 0.390274316, 0)
	Main.Size = UDim2.new(0, 270, 0, 220)

	Dragify(Main)

	Title.Name = "Title"
	Title.Parent = Main
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Size = UDim2.new(0, 270, 0, 25)
	Title.Font = Enum.Font.GothamMedium
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000
	Title.Text = title
	Title.TextYAlignment = Enum.TextYAlignment.Bottom

	Line.Name = "Line"
	Line.Parent = Main
	Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Line.Position = UDim2.new(0, 50, 0, 35)
	Line.Size = UDim2.new(0, 170, 0, 1)

	Icon.Name = "Icon"
	Icon.Parent = Main
	Icon.BackgroundTransparency = 1.000
	Icon.Position = UDim2.new(0, 12, 0, 7)
	Icon.Rotation = 180.000
	Icon.Size = UDim2.new(0, 25, 0, 25)
	Icon.ZIndex = 2
	Icon.Image = "rbxassetid://3926305904"
	Icon.ImageRectOffset = Vector2.new(804, 564)
	Icon.ImageRectSize = Vector2.new(36, 36)

	Scrolling.Name = "Scrolling"
	Scrolling.Parent = Main
	Scrolling.Active = true
	Scrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Scrolling.BackgroundTransparency = 1.000
	Scrolling.BorderSizePixel = 0
	Scrolling.Position = UDim2.new(0, 0, 0, 40)
	Scrolling.Size = UDim2.new(0, 270, 0, 180)
	Scrolling.ScrollBarThickness = 3

	Section.Name = "Section"
	Section.Parent = nil
	Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Section.BackgroundTransparency = 1.000
	Section.BorderSizePixel = 0
	Section.Size = UDim2.new(0, 270, 0, 25)
	Section.Font = Enum.Font.GothamBold
	Section.TextColor3 = Color3.fromRGB(255, 255, 255)
	Section.TextSize = 12.000
	Section.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding.Parent = Section
	UIPadding.PaddingLeft = UDim.new(0, 5)
	UIPadding.PaddingTop = UDim.new(0, 10)

	UIListLayout.Parent = Scrolling
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)

	Toggle.Name = "Toggle"
	Toggle.Parent = nil
	Toggle.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0, 0, 0.176470593, 0)
	Toggle.Size = UDim2.new(0, 270, 0, 50)

	FunctionTitle.Name = "FunctionTitle"
	FunctionTitle.Parent = Toggle
	FunctionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FunctionTitle.BackgroundTransparency = 1.000
	FunctionTitle.BorderSizePixel = 0
	FunctionTitle.Size = UDim2.new(0, 270, 0, 25)
	FunctionTitle.Font = Enum.Font.GothamMedium
	FunctionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	FunctionTitle.TextSize = 14.000
	FunctionTitle.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_2.Parent = FunctionTitle
	UIPadding_2.PaddingLeft = UDim.new(0, 5)
	UIPadding_2.PaddingTop = UDim.new(0, 5)

	Description.Name = "Description"
	Description.Parent = Toggle
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.BorderSizePixel = 0
	Description.Position = UDim2.new(0, 0, 0, 25)
	Description.Size = UDim2.new(0, 270, 0, 25)
	Description.Font = Enum.Font.Gotham
	Description.TextColor3 = Color3.fromRGB(138, 138, 138)
	Description.TextSize = 14.000
	Description.TextXAlignment = Enum.TextXAlignment.Left
	Description.TextYAlignment = Enum.TextYAlignment.Top

	UIPadding_3.Parent = Description
	UIPadding_3.PaddingLeft = UDim.new(0, 5)
	UIPadding_3.PaddingTop = UDim.new(0, 5)

	CallbackContainer.Name = "CallbackContainer"
	CallbackContainer.Parent = Toggle
	CallbackContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CallbackContainer.Position = UDim2.new(0, 210, 0, 20)
	CallbackContainer.Size = UDim2.new(0, 50, 0, 25)

	UICorner.CornerRadius = UDim.new(0, 50)
	UICorner.Parent = CallbackContainer

	Circle.Name = "Circle"
	Circle.Parent = CallbackContainer
	Circle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Circle.Size = UDim2.new(0, 25, 0, 25)

	UICorner_2.CornerRadius = UDim.new(0, 50)
	UICorner_2.Parent = Circle

	ToggleCallback.Name = "ToggleCallback"
	ToggleCallback.Parent = Circle
	ToggleCallback.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleCallback.BackgroundTransparency = 1.000
	ToggleCallback.BorderSizePixel = 0
	ToggleCallback.Text = ""
	ToggleCallback.Size = UDim2.new(0, 50, 0, 25)
	ToggleCallback.Font = Enum.Font.SourceSans
	ToggleCallback.TextColor3 = Color3.fromRGB(0, 0, 0)
	ToggleCallback.TextSize = 14.000

	Button.Name = "Button"
	Button.Parent = nil
	Button.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
	Button.BorderSizePixel = 0
	Button.Position = UDim2.new(0, 0, 0.176470593, 0)
	Button.Size = UDim2.new(0, 270, 0, 50)

	ButtonLayer.Name = "ButtonLayer"
	ButtonLayer.Parent = Button
	ButtonLayer.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	ButtonLayer.Position = UDim2.new(0, 15, 0, 10)
	ButtonLayer.Size = UDim2.new(0, 235, 0, 30)

	UICorner_3.Parent = ButtonLayer

	ButtonFunction.Name = "ButtonFunction"
	ButtonFunction.Parent = ButtonLayer
	ButtonFunction.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonFunction.BackgroundTransparency = 1.000
	ButtonFunction.BorderSizePixel = 0
	ButtonFunction.Size = UDim2.new(0, 235, 0, 30)
	ButtonFunction.Font = Enum.Font.Gotham
	ButtonFunction.TextColor3 = Color3.fromRGB(255, 255, 255)
	ButtonFunction.TextSize = 14.000

	local createSection = {}

	function createSection(string)
		local addSection = Section:Clone()
		addSection.Parent = Scrolling
		addSection.Text = string
		addSection.Name = string
	end
    return createSection;
end

return interface;

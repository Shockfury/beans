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

function interface:importColor(R, G, B)
	redValue, greenValue, blueValue = tonumber(R), tonumber(G), tonumber(B)
end

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
	local Pattern = Instance.new("ImageLabel")
	local ToggleInterface = Instance.new("TextButton")

	local Slider = Instance.new("Frame")
	local Outline = Instance.new("Frame")
	local UICorner3 = Instance.new("UICorner")
	local SliderFrame = Instance.new("Frame")
	local UICorner4 = Instance.new("UICorner")
	local SliderTitle = Instance.new("TextLabel")
	local UIPadding8 = Instance.new("UIPadding")
	local ChangingValue = Instance.new("TextLabel")
	local UIPadding7 = Instance.new("UIPadding")
	local SliderButton = Instance.new("TextButton")
	local OuterSlider = Instance.new("Frame")
	local UICorner2 = Instance.new("UICorner")

	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = ScreenGui
	Main.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
	Main.BorderColor3 = Color3.fromRGB(redValue, greenValue, blueValue)
	Main.Position = UDim2.new(0.506578982, 0, 0.390274316, 0)
	Main.Size = UDim2.new(0, 270, 0, 230)
	Main.ClipsDescendants = true

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
	Icon.Position = UDim2.new(0, 12, 0, 5)
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
	Scrolling.Size = UDim2.new(0, 270, 0, 190)
	Scrolling.ScrollBarThickness = 3


	Section.Name = "Section"
	Section.Parent = nil
	Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Section.BackgroundTransparency = 1.000
	Section.BorderSizePixel = 0
	Section.Size = UDim2.new(0, 270, 0, 25)
	Section.Font = Enum.Font.GothamBold
	Section.TextColor3 = Color3.fromRGB(redValue, greenValue, blueValue)
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
	CallbackContainer.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
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

	Pattern.Name = "Pattern"
	Pattern.Parent = Main
	Pattern.AnchorPoint = Vector2.new(0.5, 0.5)
	Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pattern.BackgroundTransparency = 1.000
	Pattern.Position = UDim2.new(0.499073833, 0, 0.5, 0)
	Pattern.Size = UDim2.new(0, 270, 0, 230)
	Pattern.ZIndex = 0
	Pattern.Image = "rbxassetid://2151782136"
	Pattern.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Pattern.ImageTransparency = 0.600
	Pattern.ScaleType = Enum.ScaleType.Tile
	Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
	Pattern.TileSize = UDim2.new(0, 30, 0, 50)

	Slider.Name = "Slider"
	Slider.Parent = nil
	Slider.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0, 0, 0.176470593, 0)
	Slider.Size = UDim2.new(0, 270, 0, 50)

	Outline.Name = "Outline"
	Outline.Parent = Slider
	Outline.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
	Outline.Position = UDim2.new(0, 5, 0, 27)
	Outline.Size = UDim2.new(0, 258, 0, 20)

	UICorner3.CornerRadius = UDim.new(0, 7)
	UICorner3.Name = "UICorner3"
	UICorner3.Parent = Outline

	SliderFrame.Name = "SliderFrame"
	SliderFrame.Parent = Slider
	SliderFrame.BackgroundColor3 = Color3.fromRGB(redValue, greenValue, blueValue)
	SliderFrame.Position = UDim2.new(0, 8, 0, 29)
	SliderFrame.Size = UDim2.new(0, 0, 0, 16)
	SliderFrame.ZIndex = 2

	UICorner4.CornerRadius = UDim.new(0, 7)
	UICorner4.Name = "UICorner4"
	UICorner4.Parent = SliderFrame

	SliderTitle.Name = "SliderTitle"
	SliderTitle.Parent = Slider
	SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderTitle.BackgroundTransparency = 1.000
	SliderTitle.BorderSizePixel = 0
	SliderTitle.Size = UDim2.new(0, 270, 0, 25)
	SliderTitle.Font = Enum.Font.GothamMedium
	SliderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	SliderTitle.TextSize = 14.000
	SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding8.Name = "UIPadding8"
	UIPadding8.Parent = SliderTitle
	UIPadding8.PaddingLeft = UDim.new(0, 5)
	UIPadding8.PaddingTop = UDim.new(0, 5)

	ChangingValue.Name = "ChangingValue"
	ChangingValue.Parent = Slider
	ChangingValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChangingValue.BackgroundTransparency = 1.000
	ChangingValue.BorderSizePixel = 0
	ChangingValue.Position = UDim2.new(0, 225, 0, 0)
	ChangingValue.Size = UDim2.new(0, 45, 0, 25)
	ChangingValue.Font = Enum.Font.Gotham
	ChangingValue.TextColor3 = Color3.fromRGB(138, 138, 138)
	ChangingValue.TextSize = 14.000
    ChangingValue.Text = ""

	UIPadding7.Name = "UIPadding7"
	UIPadding7.Parent = ChangingValue
	UIPadding7.PaddingLeft = UDim.new(0, 5)
	UIPadding7.PaddingTop = UDim.new(0, 5)

	SliderButton.Name = "SliderButton"
	SliderButton.Parent = Slider
	SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SliderButton.BackgroundTransparency = 1.000
	SliderButton.BorderSizePixel = 0
	SliderButton.Position = UDim2.new(0, 5, 0, 27)
	SliderButton.Size = UDim2.new(0, 255, 0, 20)
	SliderButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
	SliderButton.Font = Enum.Font.SourceSans
	SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	SliderButton.TextSize = 14.000
	SliderButton.Text = ""

	OuterSlider.Name = "OuterSlider"
	OuterSlider.Parent = Slider
	OuterSlider.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	OuterSlider.BorderSizePixel = 0
	OuterSlider.Position = UDim2.new(0, 8, 0, 29)
	OuterSlider.Size = UDim2.new(0, 252, 0, 16)

	UICorner2.CornerRadius = UDim.new(0, 7)
	UICorner2.Name = "UICorner2"
	UICorner2.Parent = OuterSlider

	ToggleInterface.Name = "ToggleInterface"
	ToggleInterface.Parent = Icon
	ToggleInterface.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleInterface.BackgroundTransparency = 1.000
	ToggleInterface.BorderSizePixel = 0
	ToggleInterface.Size = UDim2.new(0, 25, 0, 25)
	ToggleInterface.ZIndex = 2
	ToggleInterface.Font = Enum.Font.SourceSans
	ToggleInterface.Text = ""
	ToggleInterface.TextColor3 = Color3.fromRGB(0, 0, 0)
	ToggleInterface.TextSize = 14.000

	ToggleInterface.MouseButton1Down:Connect(function()

		local tweenService = game:GetService("TweenService")

		local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)

		local debounceTime = false

		if debounceTime == false then
			if Main.Size == UDim2.new(0, 270, 0, 230) then
				debounceTime = true

				Main:TweenSize(UDim2.new(0, 270, 0, 35), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, false)
				tweenService:Create(Icon, tweenInfo, {Rotation = 90}):Play()
				
				task.wait(0.5)

				debounceTime = false
			elseif Main.Size == UDim2.new(0, 270, 0, 35) then
				debounceTime = true

				Main:TweenSize(UDim2.new(0, 270, 0, 230), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, false)
				tweenService:Create(Icon, tweenInfo, {Rotation = 180}):Play()

				task.wait(0.5)

				debounceTime = false
			end
		end
	end)

	ToggleInterface.MouseEnter:Connect(function()
		local tweenService = game:GetService("TweenService")

		local Info = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)

		local Goal = {}
		Goal.ImageColor3 = Color3.fromRGB(redValue, greenValue, blueValue)

		tweenService:Create(Icon, Info, Goal):Play()
	end) 

	ToggleInterface.MouseLeave:Connect(function()
		local tweenService = game:GetService("TweenService")

		local Info = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)

		local Goal = {}
		Goal.ImageColor3 = Color3.fromRGB(255, 255, 255)

		tweenService:Create(Icon, Info, Goal):Play()
	end) 

    function scaleScrolling()
        local sizeThing = UIListLayout.AbsoluteContentSize

        Scrolling.CanvasSize = UDim2.new(0, 0, 0, sizeThing.Y)
    end

    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(scaleScrolling)

	local objectInputed = {}

    function objectInputed:createSection(string)
		local addSection = Section:Clone()
        
		addSection.Parent = Scrolling
		addSection.Text = string
		addSection.Name = string
	end

	function objectInputed:createToggle(title, desc, callback)
        callback = callback or function() end

        local toggleCallback = true
        local debounceTime = false

		local addToggle = Toggle:Clone()
		
		addToggle.Parent = Scrolling
		addToggle.FunctionTitle.Text = title
		addToggle.Description.Text = desc
    
        addToggle.CallbackContainer.Circle.ToggleCallback.MouseButton1Down:Connect(function()
            if debounceTime == false then
                if toggleCallback == true then
                    debounceTime = true

                    local tweenService = game:GetService("TweenService")

					local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)

                    local tweeningTable = {}
                    tweeningTable.AnchorPoint = Vector2.new(1,0)
                    tweeningTable.Position = UDim2.new(1,0,0,0)

                    tweenService:Create(addToggle.CallbackContainer.Circle, tweenInfo, tweeningTable):Play()

                    local tweeningTable = {}
                    tweeningTable.BackgroundColor3 = Color3.fromRGB(redValue, greenValue, blueValue)

                    tweenService:Create(addToggle.CallbackContainer, tweenInfo, tweeningTable):Play()

                    task.wait(0.1)

                    debounceTime = false
                    toggleCallback = false

                    pcall(callback, true) 

                elseif toggleCallback == false then 
                    debounceTime = true

					local tweenService = game:GetService("TweenService")

					local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)

                    local tweeningTable = {}
                    tweeningTable.AnchorPoint = Vector2.new(0,0)
                    tweeningTable.Position = UDim2.new(0,0,0,0)

                    tweenService:Create(addToggle.CallbackContainer.Circle, tweenInfo, tweeningTable):Play()

                    local tweeningTable = {}
                    tweeningTable.BackgroundColor3 =Color3.fromRGB(37, 37, 37)

                    tweenService:Create(addToggle.CallbackContainer, tweenInfo, tweeningTable):Play()

                    task.wait(0.1)

                    debounceTime = false
                    toggleCallback = true

                    pcall(callback, false)
                end
            end
        end)
    end

	function objectInputed:createSlider(title, minvalue, maxvalue, callback)
		local mouse = game.Players.LocalPlayer:GetMouse()
		local uis = game:GetService("UserInputService")
		local Value;

		local addSlider = Slider:Clone()

		addSlider.Parent = Scrolling
		addSlider.SliderTitle.Text = title

		minvalue = minvalue or 0
		maxvalue = maxvalue or 100

		callback = callback or function() end

		addSlider.SliderButton.MouseButton1Down:Connect(function()
			Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 252) * addSlider.SliderFrame.AbsoluteSize.X) + tonumber(minvalue)) or 0
			pcall(function()
				callback(Value)
				addSlider.ChangingValue.Text = Value
			end)
			addSlider.SliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - addSlider.SliderFrame.AbsolutePosition.X, 0, 252), 0, 16), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.1, false)
			moveconnection = mouse.Move:Connect(function()
				addSlider.ChangingValue.Text = Value
				Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 252) * addSlider.SliderFrame.AbsoluteSize.X) + tonumber(minvalue))
				pcall(callback, Value)
				addSlider.SliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - addSlider.SliderFrame.AbsolutePosition.X, 0, 252), 0, 16), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.1, false)
			end)
			releaseconnection = uis.InputEnded:Connect(function(Mouse)
				if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
					Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 252) * addSlider.SliderFrame.AbsoluteSize.X) + tonumber(minvalue))
                    pcall(callback, Value)
					addSlider.SliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - addSlider.SliderFrame.AbsolutePosition.X, 0, 252), 0, 16), Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.1, false)
					moveconnection:Disconnect()
					releaseconnection:Disconnect()
				end
			end)
		end)
	end

    function objectInputed:createButton(title, func)
        local addButton = Button:Clone()

        addButton.Parent = Scrolling
        addButton.ButtonLayer.ButtonFunction.Text = title
        addButton.ButtonLayer.ButtonFunction.MouseButton1Down:Connect(func)
    end

    return objectInputed;
end

return interface;

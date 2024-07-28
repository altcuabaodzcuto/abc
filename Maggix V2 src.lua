local function Create(Name, Properties, Children)
    local Object = Instance.new(Name)
    for i, v in next, Properties or {} do
        Object[i] = v
    end
    for i, v in next, Children or {} do
        v.Parent = Object
    end
    return Object
end

if not isfolder("ELGATO HUB") then
    makefolder("ELGATO HUB")
end
Module = {}
function Module:Notif(title, content, seconds)
    local TweenService = game:GetService("TweenService")
    local tweenInfo = TweenInfo.new(1.5, Enum.EasingStyle.Back)
    local screengui = Instance.new("ScreenGui")
    screengui.Parent = gethui() or game.CoreGui
    screengui.Name = "GQ4YG 13F3FQEWF7B2TT4"
    local Frame = Instance.new("Frame", screengui)
    local tween = TweenService:Create(Frame, tweenInfo, { Position = UDim2.new(0, 600, 0, 220) })
    Frame.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.113725)
    Frame.Position = UDim2.new(0, 800, 0, 220)
    Frame.Size = UDim2.new(0, 150, 0, 100)
    local UICorner = Instance.new("UICorner", Frame)
    local UIPadding = Instance.new("UIPadding", Frame)
    local Content = Instance.new("TextLabel", Frame)
    Content.Name = "Content"
    Content.BackgroundTransparency = 1
    Content.Position = UDim2.new(0, 0, 0, 30)
    Content.Size = UDim2.new(0, 150, 0, 68)
    Content.Text = content
    Content.TextColor3 = Color3.new(1, 1, 1)
    local Title = Instance.new("TextLabel", Frame)
    Title.Name = "Title"
    Title.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.192157)
    Title.Size = UDim2.new(0, 150, 0, 30)
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.TextSize = 10
    Title.Text = title
    local UICornerTitle = Instance.new("UICorner", Title)
    tween:Play()
    tween.Completed:Connect(
        function()
            task.wait(seconds)
            local tweenOut = TweenService:Create(Frame, tweenInfo, { Position = UDim2.new(0, 800, 0, 220) })
            tweenOut:Play()
            tweenOut.Completed:Connect(
                function()
                    screengui:Destroy()
                end
            )
        end
    )
end

local function k(co)
    local ca = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+×÷=/_<>[]!@#$%^&*()-']"
    local function g()
        local i = math.random(1, #ca)
        return ca:sub(i, i)
    end
    local st = ""
    for i = 1, co do
        st = st .. g()
    end
    return st
end

Module = {}

--// Instances
function Module:CreateGui(Properties)
    if not isfolder("ELGATO HUB/" .. Properties.Data.HubName) then
        makefolder("ELGATO HUB/" .. Properties.Data.HubName)
    end
    if Properties.Blur == true then
        local Blur = Instance.new("BlurEffect",game.Lighting)
    end
    local screen_gui = Instance.new("ScreenGui")
    screen_gui.IgnoreGuiInset = false
    screen_gui.ResetOnSpawn = false
    screen_gui.Name = tostring(k(10))
    screen_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screen_gui.Parent = gethui() or game.CoreGui
    
    local key = Create("Frame", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundColor3 = Color3.fromRGB(9, 9, 11),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(0, 600, 0, 400),
        Visible = true,
        ZIndex = 109,
        Parent = screen_gui,
    })

    local radius = Create("UICorner", {
        CornerRadius = UDim.new(0, 6),
        Parent = key,
    })

    local hold = Create("Frame", {
        AnchorPoint = Vector2.new(0.5, 0.5),
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Position = UDim2.new(0.5, 0, 0.5, 0),
        Size = UDim2.new(0, 380, 0, 0),
        Visible = true,
        ZIndex = 111,
        Parent = key,
    })

    local uilist_layout = Create("UIListLayout", {
        HorizontalFlex = Enum.UIFlexAlignment.Fill,
        Padding = UDim.new(0, 24),
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = hold,
    })

    local top = Create("Frame", {
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Color3.fromRGB(0, 0, 0),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 0),
        Visible = true,
        Parent = hold,
    })

    local uilist_layout_2 = Create("UIListLayout", {
        Padding = UDim.new(0, 6),
        HorizontalAlignment = Enum.HorizontalAlignment.Center,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = top,
    })

    local title = Create("TextLabel", {
        Font = Enum.Font.GothamMedium,
        Text = "Check Your Key",
        TextColor3 = Color3.fromRGB(240, 240, 240),
        TextSize = 30,
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 0),
        Visible = true,
        Parent = top,
    })

    local desc = Create("TextLabel", {
        Font = Enum.Font.Gotham,
        Text = "Enter your key to access exclusive features.",
        TextColor3 = Color3.fromRGB(156, 156, 165),
        TextSize = 16,
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 0),
        Visible = true,
        Parent = top,
    })

    local keyinput = Create("Frame", {
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 0),
        Visible = true,
        Parent = hold,
    })

    local uilist_layout_3 = Create("UIListLayout", {
        Padding = UDim.new(0, 16),
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = keyinput,
    })

    local boxinput = Create("Frame", {
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 0),
        Visible = true,
        Parent = keyinput,
    })

    local uilist_layout_4 = Create("UIListLayout", {
        Padding = UDim.new(0, 8),
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = boxinput,
    })

    local tag = Create("TextLabel", {
        Font = Enum.Font.GothamMedium,
        Text = "Key",
        TextColor3 = Color3.fromRGB(240, 240, 240),
        TextSize = 14,
        TextStrokeColor3 = Color3.fromRGB(255, 255, 255),
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 14),
        Visible = true,
        Parent = boxinput,
    })

    local text_box = Create("TextBox", {
        Font = Enum.Font.Gotham,
        LineHeight = 0,
        PlaceholderColor3 = Color3.fromRGB(240, 240, 240),
        PlaceholderText = "Enter your key",
        Text = "",
        TextColor3 = Color3.fromRGB(156, 156, 165),
        TextSize = 14,
        TextXAlignment = Enum.TextXAlignment.Left,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 40),
        Visible = true,
        Parent = boxinput,
    })

    if isfile("ELGATO HUB/" .. Properties.Data.HubName) then
        text_box.Text = readfile("ELGATO HUB/" .. Properties.Data.HubName)
    end

    function Properties:GetData(data)
        return readfile("ELGATO HUB/" .. Properties.Data.HubName .. "/" .. data)
    end

    local uicorner = Create("UICorner", {
        CornerRadius = UDim.new(0, 6),
        Parent = text_box,
    })

    local uipadding = Create("UIPadding", {
        PaddingBottom = UDim.new(0, 8),
        PaddingLeft = UDim.new(0, 12),
        PaddingRight = UDim.new(0, 12),
        PaddingTop = UDim.new(0, 8),
        Parent = text_box,
    })

    local uistroke = Create("UIStroke", {
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        Color = Color3.fromRGB(21, 21, 24),
        Parent = text_box,
    })

    local tagdesc = Create("TextLabel", {
        Font = Enum.Font.Gotham,
        Text = "Don't have a key? You can get one by joining our Discord community.",
        TextColor3 = Color3.fromRGB(240, 240, 240),
        TextSize = 14,
        TextStrokeColor3 = Color3.fromRGB(255, 255, 255),
        TextWrapped = true,
        TextXAlignment = Enum.TextXAlignment.Left,
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 14),
        Visible = true,
        Parent = boxinput,
    })

    local btnshold = Create("Frame", {
        AutomaticSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(1, 0, 0, 40),
        Visible = true,
        Parent = hold,
    })

    local uilist_layout_5 = Create("UIListLayout", {
        HorizontalFlex = Enum.UIFlexAlignment.Fill,
        Padding = UDim.new(0, 8),
        FillDirection = Enum.FillDirection.Horizontal,
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = btnshold,
    })

    local check_key = Create("TextButton", {
        Font = Enum.Font.Gotham,
        Text = "Check Key",
        TextColor3 = Color3.fromRGB(9, 9, 11),
        TextSize = 14,
        BackgroundColor3 = Color3.fromRGB(250, 250, 250),
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        LayoutOrder = 1,
        Size = UDim2.new(0, 121, 0, 40),
        Visible = true,
        Parent = btnshold,
    })

    local uicorner = Create("UICorner", {
        CornerRadius = UDim.new(0, 6),
        Parent = check_key,
    })

    local uipadding = Create("UIPadding", {
        PaddingBottom = UDim.new(0, 8),
        PaddingLeft = UDim.new(0, 16),
        PaddingRight = UDim.new(0, 16),
        PaddingTop = UDim.new(0, 8),
        Parent = check_key,
    })

    local get_key = Create("TextButton", {
        Font = Enum.Font.Gotham,
        Text = "Get Key",
        TextColor3 = Color3.fromRGB(240, 240, 240),
        TextSize = 14,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        LayoutOrder = 3,
        Size = UDim2.new(0, 121, 0, 40),
        Visible = true,
        Parent = btnshold,
    })

    local uicorner_2 = Create("UICorner", {
        CornerRadius = UDim.new(0, 6),
        Parent = get_key,
    })

    local uistroke = Create("UIStroke", {
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        Color = Color3.fromRGB(21, 21, 24),
        Parent = get_key,
    })

    local uipadding_2 = Create("UIPadding", {
        PaddingBottom = UDim.new(0, 8),
        PaddingLeft = UDim.new(0, 16),
        PaddingRight = UDim.new(0, 16),
        PaddingTop = UDim.new(0, 8),
        Parent = get_key,
    })

    local join_discord = Create("TextButton", {
        Font = Enum.Font.Gotham,
        Text = "Join Discord",
        TextColor3 = Color3.fromRGB(240, 240, 240),
        TextSize = 14,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderColor3 = Color3.fromRGB(0, 0, 0),
        BorderSizePixel = 0,
        Size = UDim2.new(0, 121, 0, 40),
        Visible = true,
        Parent = btnshold,
    })

    local uicorner_3 = Create("UICorner", {
        CornerRadius = UDim.new(0, 6),
        Parent = join_discord,
    })

    local uistroke_2 = Create("UIStroke", {
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
        Color = Color3.fromRGB(21, 21, 24),
        Parent = join_discord,
    })

    local uipadding_3 = Create("UIPadding", {
        PaddingBottom = UDim.new(0, 8),
        PaddingLeft = UDim.new(0, 16),
        PaddingRight = UDim.new(0, 16),
        PaddingTop = UDim.new(0, 8),
        Parent = join_discord,
    })

    --// Scripts

    function Properties:SetCheckKey(func)
        check_key.MouseButton1Click:Connect(
            function()
                func(text_box.Text)
                print("Checking key: " .. text_box.Text)
            end
        )
    end

    function Properties:SetGetKey(func)
        get_key.MouseButton1Click:Connect(function()
            func()
       end)
    end

    join_discord.MouseButton1Click:Connect(function()
        setclipboard(Properties.Discord)
        print("Copying Discord link to clipboard")
    end)

    function Properties:DestroyGui()
        screen_gui:ClearAllChildren()
        local TS = game:GetService("TweenService")
        local TI = TweenInfo.new(2, Enum.EasingStyle.Linear)
        local Tween = TS:Create(key, TI, { Size = UDim2.new(0, 0, 0, 0) })
        Tween:Play()
        Tween.Completed:Connect(
            function()
                screen_gui:Destroy()
                if Properties.Blur == true then
                    Blur:Destroy()
                end
            end
        )
    end

    return Properties
end

return Module

local a = {}
getgenv().collision = {cam, workspace.Ray_Ignore, workspace.Debris}
local function b(c, d, e)
    local f, g = math.max(c, d, e), math.min(c, d, e)
    local h, i, j
    j = f
    local k = f - g
    if f == 0 then
        i = 0
    else
        i = k / f
    end
    if f == g then
        h = 0
    else
        if f == c then
            h = (d - e) / k
            if d < e then
                h = h + 6
            end
        elseif f == d then
            h = (e - c) / k + 2
        elseif f == e then
            h = (c - d) / k + 4
        end
        h = h / 6
    end
    return h, i, j
end
getgenv().color = function(l)
    return Color3.fromRGB(l.R * 255, l.G * 255, l.B * 255)
end
getgenv().tocolor = function(l)
    return b(l.R, l.G, l.B)
end
getgenv().fromcolor = function(l)
    return {R = l.R, G = l.G, B = l.B}
end
function a:Tween(...)
    game:GetService("TweenService"):Create(...):Play()
end
function a:New()
    local m = {}
    local n = Instance.new("ScreenGui")
    local o = Instance.new("ImageLabel")
    local p = Instance.new("Frame")
    local q = Instance.new("UIListLayout")
    local r = Instance.new("Frame")
    local s = Instance.new("Folder")
    local t = Instance.new("TextButton")
    local u = Instance.new("TextLabel")
    local v = Instance.new("Frame")
    local w = Instance.new("TextButton")
    w.Modal = true
    local x = Instance.new("Frame")
    local y = Instance.new("Frame")
    local z = Instance.new("Frame")
    local A = Instance.new("Frame")
    local B = Instance.new("Frame")
    local C = Instance.new("Frame")
    local D = Instance.new("Frame")
    local E = Instance.new("UIListLayout")
    local F = Instance.new("Frame")
    F.Name = "Fix"
    F.Parent = C
    F.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    F.BackgroundTransparency = 1.000
    F.Position = UDim2.new(0, 0, 0, 1)
    F.Size = UDim2.new(0, 456, 0, 328)
    n.DisplayOrder = 1000
    n.ResetOnSpawn = false
    n.ZIndexBehavior = Enum.ZIndexBehavior.Global
    getgenv().uiopen = true
    game:GetService("UserInputService").InputBegan:Connect(
        function(G)
            if G.KeyCode == Enum.KeyCode.Insert then
                n.Enabled = not n.Enabled
                getgenv().uiopen = n.Enabled
            end
        end
    )
    local H = Instance.new("ImageLabel")
    H.Name = "cursor"
    H.Parent = n
    H.BackgroundTransparency = 1
    H.Size = UDim2.new(0, 17, 0, 17)
    H.Image = "rbxassetid://518398610"
    H.ZIndex = 1000
    H.ImageColor3 = Color3.fromRGB(255, 0, 255)
    function zigzag(I)
        return math.acos(math.cos(I * math.pi)) / math.pi
    end
    counter = 0
    local J = Instance.new("ScreenGui")
    function m:Watermark(K)
        J.Enabled = K
    end
    m.Keylist = {}
    function m.Keylist:SetVisible(j)
        m.Keylist.Frame.Enabled = j
    end
    function m.Keylist:Add(L)
        local M = m.Keylist.Frame.Loader.List
        if not M:FindFirstChild(L) then
            local N = m.Keylist.Frame.Example:Clone()
            N.Name = L
            N.KeyText.Text = L
            N.Visible = true
            N.Parent = M
        end
    end
    function m.Keylist:Remove(L)
        local M = m.Keylist.Frame.Loader.List
        if M:FindFirstChild(L) then
            M:FindFirstChild(L):Destroy()
        end
    end
    do
        local O = Instance.new("ScreenGui")
        m.Keylist.Frame = O
        local P = Instance.new("Frame")
        local Q = Instance.new("UIGradient")
        local x = Instance.new("Frame")
        local v = Instance.new("Frame")
        local z = Instance.new("Frame")
        local D = Instance.new("Frame")
        local R = Instance.new("UIGradient")
        local S = Instance.new("TextLabel")
        local T = Instance.new("Frame")
        local q = Instance.new("UIListLayout")
        local U = Instance.new("Frame")
        local u = Instance.new("TextLabel")
        local V = Instance.new("TextLabel")
        O.Name = "keybind"
        O.Parent = game.CoreGui
        O.Enabled = false
        P.Name = "Loader"
        P.Parent = O
        P.Active = true
        P.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        P.BorderColor3 = Color3.fromRGB(0, 0, 0)
        P.Position = UDim2.new(0.5, -125, 0.5, -81)
        P.Size = UDim2.new(0, 153, 0, 29)
        local W = game:GetService("UserInputService")
        local X = P
        local Y
        local Z
        local _
        local a0
        local function a1(a2)
            local a3 = a2.Position - _
            X.Position = UDim2.new(a0.X.Scale, a0.X.Offset + a3.X, a0.Y.Scale, a0.Y.Offset + a3.Y)
        end
        X.InputBegan:Connect(
            function(a2)
                if a2.UserInputType == Enum.UserInputType.MouseButton1 or a2.UserInputType == Enum.UserInputType.Touch then
                    Y = true
                    _ = a2.Position
                    a0 = X.Position
                    a2.Changed:Connect(
                        function()
                            if a2.UserInputState == Enum.UserInputState.End then
                                Y = false
                            end
                        end
                    )
                end
            end
        )
        X.InputChanged:Connect(
            function(a2)
                if a2.UserInputType == Enum.UserInputType.MouseMovement or a2.UserInputType == Enum.UserInputType.Touch then
                    Z = a2
                end
            end
        )
        W.InputChanged:Connect(
            function(a2)
                if a2 == Z and Y then
                    a1(a2)
                end
            end
        )
        Q.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 24)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(13, 13, 13))
        }
        Q.Rotation = 90
        Q.Parent = P
        x.Name = "Decoration"
        x.Parent = P
        x.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
        x.BorderSizePixel = 0
        x.Position = UDim2.new(0, -1, 0, -1)
        x.Size = UDim2.new(1, 2, 0, 1)
        v.Parent = P
        v.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        v.BorderSizePixel = 0
        v.Position = UDim2.new(0, 2, 0, 4)
        v.Size = UDim2.new(1, -4, 1, -7)
        z.Parent = v
        z.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        z.BorderSizePixel = 0
        z.Position = UDim2.new(0, 1, 0, 1)
        z.Size = UDim2.new(1, -2, 1, -2)
        D.Parent = z
        D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        D.BorderSizePixel = 0
        D.Position = UDim2.new(0, 1, 0, 1)
        D.Size = UDim2.new(1, -2, 1, -2)
        R.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 24)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(13, 13, 13))
        }
        R.Rotation = 90
        R.Parent = D
        S.Name = "Title"
        S.Parent = v
        S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        S.BackgroundTransparency = 1.000
        S.Position = UDim2.new(0, 0, 0, 5)
        S.Size = UDim2.new(1, 0, 0, 12)
        S.Font = Enum.Font.Code
        S.Text = "Keybinds"
        S.TextColor3 = Color3.fromRGB(255, 255, 255)
        S.TextSize = 14.000
        S.TextStrokeTransparency = 0.000
        T.Name = "List"
        T.Parent = P
        T.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        T.BackgroundTransparency = 1.000
        T.Position = UDim2.new(-0.00531914877, 0, 1.06896555, 0)
        T.Size = UDim2.new(1, 0, 5, 0)
        q.Parent = T
        q.HorizontalAlignment = Enum.HorizontalAlignment.Center
        q.SortOrder = Enum.SortOrder.LayoutOrder
        U.Name = "Example"
        U.Parent = O
        U.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        U.BackgroundTransparency = 1.000
        U.Size = UDim2.new(1, 0, 0, 15)
        U.Visible = false
        u.Parent = U
        u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        u.BackgroundTransparency = 1.000
        u.Position = UDim2.new(0.00531921396, 0, 0, 0)
        u.Size = UDim2.new(0.707446814, 0, 1, 0)
        u.Font = Enum.Font.SourceSans
        u.Text = "Third Person"
        u.TextColor3 = Color3.fromRGB(255, 255, 255)
        u.TextSize = 14.000
        u.TextStrokeTransparency = 0.000
        u.TextXAlignment = Enum.TextXAlignment.Left
        u.Name = "KeyText"
        V.Parent = U
        V.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        V.BackgroundTransparency = 1.000
        V.Position = UDim2.new(0.382978737, 0, 0, 0)
        V.Size = UDim2.new(0.622340441, 0, 1, 0)
        V.Font = Enum.Font.SourceSans
        V.Text = "(on)"
        V.TextColor3 = Color3.fromRGB(255, 255, 255)
        V.TextSize = 14.000
        V.TextStrokeTransparency = 0.000
        V.TextXAlignment = Enum.TextXAlignment.Right
    end
    do
        local P = Instance.new("Frame")
        local Q = Instance.new("UIGradient")
        local x = Instance.new("Frame")
        local v = Instance.new("Frame")
        local z = Instance.new("Frame")
        local D = Instance.new("Frame")
        local R = Instance.new("UIGradient")
        local S = Instance.new("TextLabel")
        J.Name = "Watermark"
        P.Name = "Loader"
        P.Parent = J
        P.Active = true
        P.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        P.BorderColor3 = Color3.fromRGB(0, 0, 0)
        P.Position = UDim2.new(1, -6, 0, -29)
        P.Size = UDim2.new(0, 203, 0, 25)
        Q.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 24)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(13, 13, 13))
        }
        Q.Rotation = 90
        Q.Parent = P
        x.Name = "Decoration"
        x.Parent = P
        x.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
        x.BorderSizePixel = 0
        x.Position = UDim2.new(0, -1, 0, -1)
        x.Size = UDim2.new(1, 2, 0, 1)
        v.Parent = P
        v.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
        v.BorderSizePixel = 0
        v.Position = UDim2.new(0, 2, 0, 4)
        v.Size = UDim2.new(1, -4, 1, -7)
        z.Parent = v
        z.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        z.BorderSizePixel = 0
        z.Position = UDim2.new(0, 1, 0, 1)
        z.Size = UDim2.new(1, -2, 1, -2)
        D.Parent = z
        D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        D.BorderSizePixel = 0
        D.Position = UDim2.new(0, 1, 0, 1)
        D.Size = UDim2.new(1, -2, 1, -2)
        R.Color =
            ColorSequence.new {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 24, 24)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(13, 13, 13))
        }
        R.Rotation = 90
        R.Parent = D
        S.Name = "Title"
        S.Parent = v
        S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        S.BackgroundTransparency = 1.000
        S.Position = UDim2.new(0, 0, 0, 3)
        S.Size = UDim2.new(1, 0, 0, 12)
        S.Font = Enum.Font.Code
        S.Text = "millionblox | FPS: 60 | BUILD: BETA"
        S.TextColor3 = Color3.fromRGB(255, 255, 255)
        S.TextSize = 14.000
        S.TextStrokeTransparency = 0.000
        game:GetService("RunService").RenderStepped:Connect(
            function(a4)
                local a5 = math.ceil(1 / a4)
                local a6 =
                    game:GetService("TextService"):GetTextSize(
                    "millionblox | FPS:" .. a5 .. " | BUILD: BETA",
                    14,
                    Enum.Font.Code,
                    Vector2.new(700, S.AbsoluteSize.Y)
                ).X
                P.Size = UDim2.new(0, -a6 - 12, 0, 25)
                S.Text = "millionblox | FPS:" .. a5 .. " | BUILD: BETA"
            end
        )
        J.Parent = game.CoreGui
    end
    o.Name = "Main"
    o.Parent = n
    o.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    o.BackgroundTransparency = 1.000
    o.BorderColor3 = Color3.fromRGB(0, 0, 0)
    o.Position = UDim2.new(0.5, -305, 0.5, -200)
    o.Size = UDim2.new(0, 610, 0, 400)
    o.Image = "rbxassetid://6115686715"
    o.Active = true
    local a7 = game:GetService("Players")
    local a8 = a7.LocalPlayer
    local a9 = a8:GetMouse()
    game:GetService("RunService").RenderStepped:connect(
        function()
            H.Visible = n.Enabled
            H.Position = UDim2.new(0, a9.X - 3, 0, a9.Y + 1)
        end
    )
    local W = game:GetService("UserInputService")
    local X = o
    local Y
    local Z
    local _
    local a0
    local function a1(a2)
        local a3 = a2.Position - _
        X.Position = UDim2.new(a0.X.Scale, a0.X.Offset + a3.X, a0.Y.Scale, a0.Y.Offset + a3.Y)
    end
    X.InputBegan:Connect(
        function(a2)
            if a2.UserInputType == Enum.UserInputType.MouseButton1 or a2.UserInputType == Enum.UserInputType.Touch then
                Y = true
                _ = a2.Position
                a0 = X.Position
                a2.Changed:Connect(
                    function()
                        if a2.UserInputState == Enum.UserInputState.End then
                            Y = false
                        end
                    end
                )
            end
        end
    )
    X.InputChanged:Connect(
        function(a2)
            if a2.UserInputType == Enum.UserInputType.MouseMovement or a2.UserInputType == Enum.UserInputType.Touch then
                Z = a2
            end
        end
    )
    W.InputChanged:Connect(
        function(a2)
            if a2 == Z and Y then
                a1(a2)
            end
        end
    )
    p.Name = "TabButtons"
    p.Parent = o
    p.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    p.BackgroundTransparency = 1.000
    p.Position = UDim2.new(0, 13, 0, 115)
    p.Size = UDim2.new(0, 123, 0, 250)
    q.Parent = p
    q.HorizontalAlignment = Enum.HorizontalAlignment.Center
    q.SortOrder = Enum.SortOrder.LayoutOrder
    q.Padding = UDim.new(0, 3)
    r.Name = "Tabs"
    r.Parent = o
    r.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    r.BackgroundTransparency = 1.000
    r.BorderSizePixel = 0
    r.Position = UDim2.new(0, 139, 0, 35)
    r.Size = UDim2.new(0, 456, 0, 350)
    s.Name = "Examples"
    s.Parent = n
    t.Name = "TabButtonExample"
    t.Parent = s
    t.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    t.BorderColor3 = Color3.fromRGB(0, 0, 0)
    t.Size = UDim2.new(1, 0, 0, 30)
    t.Visible = false
    t.AutoButtonColor = false
    t.Font = Enum.Font.SourceSans
    t.Text = ""
    t.TextColor3 = Color3.fromRGB(0, 0, 0)
    t.TextSize = 14.000
    u.Parent = t
    u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    u.BackgroundTransparency = 1.000
    u.Position = UDim2.new(0.088902168, 0, 0.0934814438, 0)
    u.Size = UDim2.new(0.887102187, 0, 0.813037097, 0)
    u.Font = Enum.Font.Code
    u.Text = "Aimbot"
    u.TextColor3 = Color3.fromRGB(255, 255, 255)
    u.TextSize = 14.000
    u.TextStrokeTransparency = 0.000
    u.TextXAlignment = Enum.TextXAlignment.Left
    v.Parent = t
    v.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
    v.BorderSizePixel = 0
    v.Position = UDim2.new(0, 1, 0, 0)
    v.Size = UDim2.new(0, 2, 1, 0)
    w.Name = "InnerTabExample"
    w.Parent = s
    w.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    w.BackgroundTransparency = 1.000
    w.BorderColor3 = Color3.fromRGB(0, 0, 0)
    w.Size = UDim2.new(1, 0, 1, 0)
    w.Visible = false
    w.AutoButtonColor = false
    w.Font = Enum.Font.SourceSans
    w.Text = "Main"
    w.TextColor3 = Color3.fromRGB(255, 255, 255)
    w.TextSize = 14.000
    w.TextStrokeTransparency = 0.000
    x.Name = "Decoration"
    x.Parent = w
    x.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
    x.BorderSizePixel = 0
    x.Position = UDim2.new(0, 1, 1, -1)
    x.Size = UDim2.new(1, 0, 0, 1)
    y.Name = "Divider"
    y.Parent = w
    y.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    y.BorderSizePixel = 0
    y.Position = UDim2.new(1, 0, 0, 0)
    y.Size = UDim2.new(0, 1, 1, 0)
    z.Parent = w
    z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    z.BackgroundTransparency = 1.000
    z.BorderSizePixel = 0
    z.Position = UDim2.new(0, -1, 0, 20)
    z.Size = UDim2.new(0, 456, 0, 328)
    A.Name = "Left"
    A.Parent = z
    A.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    A.BackgroundTransparency = 1.000
    A.Position = UDim2.new(0, 5, 0, 11)
    A.Size = UDim2.new(0, 220, 0, 317)
    B.Name = "Right"
    B.Parent = z
    B.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    B.BackgroundTransparency = 1.000
    B.Position = UDim2.new(0, 232, 0, 11)
    B.Size = UDim2.new(0, 220, 0, 317)
    C.Name = "TabExample"
    C.Parent = s
    C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    C.BackgroundTransparency = 1.000
    C.BorderSizePixel = 0
    C.Size = UDim2.new(0, 456, 0, 350)
    C.Visible = false
    D.Parent = C
    D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    D.BackgroundTransparency = 1.000
    D.Size = UDim2.new(1, 0, 0, 21)
    E.Parent = D
    E.FillDirection = Enum.FillDirection.Horizontal
    E.HorizontalAlignment = Enum.HorizontalAlignment.Center
    E.SortOrder = Enum.SortOrder.LayoutOrder
    E.VerticalAlignment = Enum.VerticalAlignment.Center
    local q = Instance.new("UIListLayout")
    q.Parent = A
    q.HorizontalAlignment = Enum.HorizontalAlignment.Center
    q.SortOrder = Enum.SortOrder.LayoutOrder
    q.Padding = UDim.new(0, 9)
    local q = Instance.new("UIListLayout")
    q.Parent = B
    q.HorizontalAlignment = Enum.HorizontalAlignment.Center
    q.SortOrder = Enum.SortOrder.LayoutOrder
    q.Padding = UDim.new(0, 9)
    local aa = true
    local ab
    function m:Tab(L)
        local ac = {}
        local ad = t:Clone()
        local ae = C:Clone()
        ae.Frame.ClipsDescendants = true
        ae.Name = L
        ad.Visible = true
        ad.Name = L
        ad.TextLabel.Text = L
        if aa then
            ae.Visible = true
            aa = false
            ab = L
        else
            ad.Frame.BackgroundTransparency = 1
            ad.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        end
        ad.MouseButton1Down:Connect(
            function()
                ab = L
                ae.Visible = true
                a:Tween(
                    ad.Frame,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0}
                )
                a:Tween(
                    ad,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = Color3.fromRGB(23, 23, 23)}
                )
                for af, ag in pairs(p:GetChildren()) do
                    if ag:IsA("TextButton") and ag.Name ~= ab then
                        a:Tween(
                            ag.Frame,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1}
                        )
                        a:Tween(
                            ag,
                            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundColor3 = Color3.fromRGB(15, 15, 15)}
                        )
                    end
                end
                for af, ag in pairs(r:GetChildren()) do
                    if ag:IsA("Frame") and ag.Name ~= ab then
                        ag.Visible = false
                    end
                end
            end
        )
        local ah = true
        local ai = 0
        local aj
        function ac:Tab(L)
            local ak = {}
            ai = ai + 1
            local al = w:Clone()
            al.Text = L
            al.Name = L
            al.Visible = true
            if ah then
                ah = false
                aj = L
            else
                al.Decoration.BackgroundTransparency = 1
                al.Frame.Visible = false
            end
            al.Frame.Name = L
            al.MouseButton1Down:Connect(
                function()
                    aj = L
                    ae.Fix[L].Visible = true
                    a:Tween(
                        al.Decoration,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundTransparency = 0}
                    )
                    for af, ag in pairs(ae.Frame:GetChildren()) do
                        if ag:IsA("TextButton") and ag.Name ~= L then
                            a:Tween(
                                ag.Decoration,
                                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                {BackgroundTransparency = 1}
                            )
                            ae.Fix[ag.Name].Visible = false
                        end
                    end
                end
            )
            al[L].Parent = ae.Fix
            al.Parent = ae.Frame
            for af, ag in pairs(ae.Frame:GetChildren()) do
                if ag:IsA("TextButton") then
                    ag.Size = UDim2.new(1 / ai, 0, 1, 0)
                end
            end
            function ak:Section(L, am)
                local an = {}
                local ao = Instance.new("Frame")
                local v = Instance.new("Frame")
                local z = Instance.new("Frame")
                local q = Instance.new("UIListLayout")
                local ap = Instance.new("UIPadding")
                local u = Instance.new("TextLabel")
                ao.Name = "Section"
                ao.Parent = ae.Fix[al.Text][am]
                ao.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
                ao.BorderSizePixel = 0
                ao.Size = UDim2.new(1, 0, 0, 18)
                ao.Visible = true
                v.Parent = ao
                v.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                v.BorderSizePixel = 0
                v.Position = UDim2.new(0, 1, 0, 1)
                v.Size = UDim2.new(1, -2, 1, -2)
                z.Parent = v
                z.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
                z.BorderSizePixel = 0
                z.Position = UDim2.new(0, 1, 0, 1)
                z.Size = UDim2.new(1, -2, 1, -2)
                q.Parent = z
                q.SortOrder = Enum.SortOrder.LayoutOrder
                q.Padding = UDim.new(0, 2)
                q.HorizontalAlignment = "Center"
                ap.Parent = z
                ap.PaddingTop = UDim.new(0, 10)
                u.Parent = v
                u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                u.BackgroundTransparency = 1.000
                u.Position = UDim2.new(0, 17, 0, -5)
                u.Size = UDim2.new(0.786400557, 0, 0, 7)
                u.Font = Enum.Font.Code
                u.Text = L
                u.TextColor3 = Color3.fromRGB(255, 255, 255)
                u.TextSize = 13.000
                u.TextStrokeTransparency = 0.000
                u.TextXAlignment = Enum.TextXAlignment.Left
                function an:Cheat(aq, ar, as, at)
                    local au = {}
                    as = as or function()
                        end
                    at = at or {}
                    if aq == "Toggle" then
                        au.value = {Toggle = at.default or false}
                        ao.Size = ao.Size + UDim2.new(0, 0, 0, 16)
                        local av = Instance.new("TextButton")
                        av.Modal = true
                        local v = Instance.new("Frame")
                        local u = Instance.new("TextLabel")
                        av.Name = "Toggle"
                        av.Parent = z
                        av.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        av.BackgroundTransparency = 1.000
                        av.Size = UDim2.new(1, 0, 0, 14)
                        av.Font = Enum.Font.SourceSans
                        av.Text = ""
                        av.TextColor3 = Color3.fromRGB(0, 0, 0)
                        av.TextSize = 14.000
                        v.Parent = av
                        v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        v.BorderColor3 = Color3.fromRGB(5, 5, 5)
                        v.Position = UDim2.new(0, 8, 0, 0)
                        v.Size = UDim2.new(0, 10, 0, 10)
                        u.Parent = av
                        u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        u.BackgroundTransparency = 1.000
                        u.Position = UDim2.new(0.126635522, 0, 0, -1)
                        u.Size = UDim2.new(0.873364508, 0, 1, -4)
                        u.Font = Enum.Font.SourceSans
                        u.Text = ar
                        u.TextColor3 = Color3.fromRGB(200, 200, 200)
                        u.TextSize = 14
                        u.TextStrokeTransparency = 1
                        u.TextXAlignment = Enum.TextXAlignment.Left
                        if at.default then
                            v.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
                            u.TextColor3 = Color3.fromRGB(255, 255, 255)
                        end
                        function au:SetValue(aw)
                            au.value = aw
                            if au.value.Toggle then
                                a:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                )
                            else
                                a:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}
                                )
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                )
                            end
                            as(au.value)
                        end
                        av.MouseButton1Down:Connect(
                            function()
                                au.value.Toggle = not au.value.Toggle
                                au:SetValue(au.value)
                            end
                        )
                    elseif aq == "ToggleColor" then
                        ao.Size = ao.Size + UDim2.new(0, 0, 0, 16)
                        local av = Instance.new("TextButton")
                        local v = Instance.new("Frame")
                        local u = Instance.new("TextLabel")
                        av.Name = "Toggle"
                        av.Parent = z
                        av.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        av.BackgroundTransparency = 1.000
                        av.Size = UDim2.new(1, 0, 0, 14)
                        av.Font = Enum.Font.SourceSans
                        av.Text = ""
                        av.Modal = true
                        av.TextColor3 = Color3.fromRGB(0, 0, 0)
                        av.TextSize = 14.000
                        v.Parent = av
                        v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        v.BorderColor3 = Color3.fromRGB(5, 5, 5)
                        v.Position = UDim2.new(0, 8, 0, 0)
                        v.Size = UDim2.new(0, 10, 0, 10)
                        u.Parent = av
                        u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        u.BackgroundTransparency = 1.000
                        u.Position = UDim2.new(0.126635522, 0, 0, -1)
                        u.Size = UDim2.new(0.873364508, 0, 1, -4)
                        u.Font = Enum.Font.SourceSans
                        u.Text = ar
                        u.TextColor3 = Color3.fromRGB(200, 200, 200)
                        u.TextSize = 14
                        u.TextStrokeTransparency = 1
                        u.TextXAlignment = Enum.TextXAlignment.Left
                        au.value = {Toggle = false, Color = {R = 255, G = 255, B = 255}}
                        local j = 1
                        local ax, ay = 1, 1
                        local az = Instance.new("TextButton")
                        function au:SetValue(aA)
                            au.value = aA
                            if aA.Toggle then
                                a:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                )
                            else
                                a:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}
                                )
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                )
                            end
                            ax, ay, j = color(au.value.Color):ToHSV()
                            ax = math.clamp(ax, 0, 1)
                            ay = math.clamp(ay, 0, 1)
                            j = math.clamp(j, 0, 1)
                            az.Frame.J.Frame.Position = UDim2.new(1 - ax, 0, 1 - ay, 0)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            az.Frame.ImageButton.Frame.Position = UDim2.new(0, 0, 0, j)
                            az.Frame.J.ImageColor3 = Color3.fromHSV(0, 0, j)
                            aA.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            as(aA)
                        end
                        local v = Instance.new("Frame")
                        local aB = Instance.new("ImageButton")
                        local z = Instance.new("Frame")
                        local aC = Instance.new("ImageButton")
                        local D = Instance.new("Frame")
                        az.Name = "ColorPicker"
                        az.Parent = av
                        az.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        az.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        az.Position = UDim2.new(0, 187, 0, 0)
                        az.Size = UDim2.new(0, 19, 0, 9)
                        az.AutoButtonColor = false
                        az.Font = Enum.Font.SourceSans
                        az.Text = ""
                        az.TextColor3 = Color3.fromRGB(0, 0, 0)
                        az.TextSize = 14.000
                        v.Parent = az
                        v.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
                        v.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        v.Position = UDim2.new(0, 21, 0, 4)
                        v.Size = UDim2.new(0, 178, 0, 165)
                        v.Visible = false
                        v.ZIndex = 3
                        aB.Parent = v
                        aB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aB.BorderColor3 = Color3.fromRGB(10, 10, 10)
                        aB.Position = UDim2.new(0, 5, 0, 5)
                        aB.Size = UDim2.new(0, 152, 0, 152)
                        aB.Image = "rbxassetid://698052001"
                        aB.Name = "J"
                        aB.ZIndex = 3
                        z.Parent = aB
                        z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        z.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        z.Size = UDim2.new(0, 1, 0, 1)
                        z.ZIndex = 3
                        aC.Parent = v
                        aC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aC.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aC.Position = UDim2.new(0, 160, 0, 5)
                        aC.Size = UDim2.new(0, 13, 0, 152)
                        aC.Image = "rbxassetid://3641079629"
                        aC.ZIndex = 3
                        D.Parent = aC
                        D.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
                        D.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        D.Position = UDim2.new(0, 0, 0, 0)
                        D.Size = UDim2.new(0, 13, 0, 3)
                        D.ZIndex = 3
                        if at.default ~= nil then
                            au:SetValue(at.default)
                        end
                        av.MouseButton1Down:Connect(
                            function()
                                au.value.Toggle = not au.value.Toggle
                                au:SetValue(au.value)
                            end
                        )
                        az.MouseButton1Down:Connect(
                            function()
                                v.Visible = not v.Visible
                            end
                        )
                        local aD = false
                        local aE = false
                        az.MouseEnter:Connect(
                            function()
                                aD = true
                            end
                        )
                        az.MouseLeave:Connect(
                            function()
                                aD = false
                            end
                        )
                        v.MouseEnter:Connect(
                            function()
                                aE = true
                            end
                        )
                        v.MouseLeave:Connect(
                            function()
                                aE = false
                            end
                        )
                        local aF = game.Players.LocalPlayer
                        local a9 = aF:GetMouse()
                        game:GetService("UserInputService").InputBegan:Connect(
                            function(a2)
                                if
                                    a2.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a2.UserInputType == Enum.UserInputType.MouseButton2
                                 then
                                    if not aD and not aE and not Y then
                                        v.Visible = false
                                    end
                                end
                            end
                        )
                        local function aG()
                            local aH =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().X - aB.AbsolutePosition.X,
                                0,
                                152
                            )
                            local aI =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().Y - aB.AbsolutePosition.Y,
                                0,
                                152
                            )
                            z.Position = UDim2.new(0, aH, 0, aI)
                            ax =
                                (aB.AbsoluteSize.X -
                                (game:GetService("Players").LocalPlayer:GetMouse().X - aB.AbsolutePosition.X)) /
                                150
                            ay =
                                (aB.AbsoluteSize.Y -
                                (game:GetService("Players").LocalPlayer:GetMouse().Y - aB.AbsolutePosition.Y)) /
                                150
                            ax = math.clamp(ax, 0, 1)
                            ay = math.clamp(ay, 0, 1)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            au.value.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            as(au.value)
                        end
                        aB.MouseButton1Down:Connect(
                            function()
                                aG()
                                moveconnection =
                                    game:GetService("Players").LocalPlayer:GetMouse().Move:Connect(
                                    function()
                                        aG()
                                    end
                                )
                                releaseconnection =
                                    game:GetService("UserInputService").InputEnded:Connect(
                                    function(a9)
                                        if a9.UserInputType == Enum.UserInputType.MouseButton1 then
                                            aG()
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                        local function aJ()
                            local aI =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().Y - aC.AbsolutePosition.Y,
                                0,
                                148
                            )
                            D.Position = UDim2.new(0, 0, 0, aI)
                            j = 1 - aI / 152
                            aB.ImageColor3 = Color3.fromHSV(0, 0, j)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            au.value.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            as(au.value)
                        end
                        aC.MouseButton1Down:Connect(
                            function()
                                aJ()
                                moveconnection =
                                    game:GetService("Players").LocalPlayer:GetMouse().Move:Connect(
                                    function()
                                        aJ()
                                    end
                                )
                                releaseconnection =
                                    game:GetService("UserInputService").InputEnded:Connect(
                                    function(a9)
                                        if a9.UserInputType == Enum.UserInputType.MouseButton1 then
                                            aJ()
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                    elseif aq == "ColorTransp" then
                        ao.Size = ao.Size + UDim2.new(0, 0, 0, 16)
                        local av = Instance.new("TextButton")
                        local v = Instance.new("Frame")
                        local u = Instance.new("TextLabel")
                        av.Name = "Toggle"
                        av.Parent = z
                        av.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        av.BackgroundTransparency = 1.000
                        av.Size = UDim2.new(1, 0, 0, 14)
                        av.Font = Enum.Font.SourceSans
                        av.Text = ""
                        av.TextColor3 = Color3.fromRGB(0, 0, 0)
                        av.TextSize = 14.000
                        av.Modal = true
                        v.Parent = av
                        v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        v.BorderColor3 = Color3.fromRGB(5, 5, 5)
                        v.Position = UDim2.new(0, 8, 0, 0)
                        v.Size = UDim2.new(0, 10, 0, 10)
                        u.Parent = av
                        u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        u.BackgroundTransparency = 1.000
                        u.Position = UDim2.new(0.126635522, 0, 0, -1)
                        u.Size = UDim2.new(0.873364508, 0, 1, -4)
                        u.Font = Enum.Font.SourceSans
                        u.Text = ar
                        u.TextColor3 = Color3.fromRGB(200, 200, 200)
                        u.TextSize = 14
                        u.TextStrokeTransparency = 1
                        u.TextXAlignment = Enum.TextXAlignment.Left
                        au.value = {Toggle = false, Color = {R = 255, G = 255, B = 255}, Transparency = 0}
                        local j = 1
                        local ax, ay = 1, 1
                        local aK = 0
                        local az = Instance.new("TextButton")
                        function au:SetValue(aA)
                            au.value = aA
                            if aA.Toggle then
                                a:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                )
                            else
                                a:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}
                                )
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                )
                            end
                            ax, ay, j = color(au.value.Color):ToHSV()
                            ax = math.clamp(ax, 0, 1)
                            ay = math.clamp(ay, 0, 1)
                            j = math.clamp(j, 0, 1)
                            az.Frame.J.Frame.Position = UDim2.new(1 - ax, 0, 1 - ay, 0)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            az.Frame.ImageButton.Frame.Position = UDim2.new(0, 0, 0, j)
                            az.Frame.J.ImageColor3 = Color3.fromHSV(0, 0, j)
                            az.Frame.tspy.tspycolor.tspypos.Position = UDim2.new(au.value.Transparency, 0, 0, 0)
                            az.Frame.tspy.tspycolor.ImageColor3 = Color3.fromHSV(ax, ay, j)
                            aA.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            as(aA)
                        end
                        local v = Instance.new("Frame")
                        local aB = Instance.new("ImageButton")
                        local z = Instance.new("Frame")
                        local aC = Instance.new("ImageButton")
                        local D = Instance.new("Frame")
                        az.Name = "ColorPicker"
                        az.Parent = av
                        az.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        az.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        az.Position = UDim2.new(0, 187, 0, 0)
                        az.Size = UDim2.new(0, 19, 0, 9)
                        az.AutoButtonColor = false
                        az.Font = Enum.Font.SourceSans
                        az.Text = ""
                        az.TextColor3 = Color3.fromRGB(0, 0, 0)
                        az.TextSize = 14.000
                        v.Parent = az
                        v.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
                        v.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        v.Position = UDim2.new(0, 21, 0, 4)
                        v.Size = UDim2.new(0, 178, 0, 177)
                        v.Visible = false
                        v.ZIndex = 3
                        aB.Parent = v
                        aB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aB.BorderColor3 = Color3.fromRGB(10, 10, 10)
                        aB.Position = UDim2.new(0, 5, 0, 5)
                        aB.Size = UDim2.new(0, 152, 0, 152)
                        aB.Image = "rbxassetid://698052001"
                        aB.Name = "J"
                        aB.ZIndex = 3
                        z.Parent = aB
                        z.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        z.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        z.Size = UDim2.new(0, 1, 0, 1)
                        z.ZIndex = 3
                        aC.Parent = v
                        aC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aC.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aC.Position = UDim2.new(0, 160, 0, 5)
                        aC.Size = UDim2.new(0, 13, 0, 152)
                        aC.Image = "rbxassetid://3641079629"
                        aC.ZIndex = 3
                        D.Parent = aC
                        D.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
                        D.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        D.Position = UDim2.new(0, 0, 0, 0)
                        D.Size = UDim2.new(0, 13, 0, 3)
                        D.ZIndex = 3
                        local aL = Instance.new("ImageButton")
                        local aM = Instance.new("ImageLabel")
                        local aN = Instance.new("Frame")
                        aL.Name = "tspy"
                        aL.Parent = v
                        aL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aL.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aL.Position = UDim2.new(0, 5, 0, 160)
                        aL.Size = UDim2.new(0, 168, 0, 12)
                        aL.Image = "rbxassetid://3887014957"
                        aL.ScaleType = Enum.ScaleType.Tile
                        aL.TileSize = UDim2.new(0, 8, 0, 8)
                        aL.ZIndex = 3
                        aM.Name = "tspycolor"
                        aM.Parent = aL
                        aM.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aM.BackgroundTransparency = 1.000
                        aM.BorderSizePixel = 0
                        aM.Size = UDim2.new(1, 0, 1, 0)
                        aM.Image = "rbxassetid://3887017050"
                        aM.ZIndex = 3
                        aN.Name = "tspypos"
                        aN.Parent = aM
                        aN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aN.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aN.Size = UDim2.new(0, 4, 0, 12)
                        aN.ZIndex = 3
                        if at.default ~= nil then
                            au:SetValue(at.default)
                        end
                        av.MouseButton1Down:Connect(
                            function()
                                au.value["Toggle"] = not au.value["Toggle"]
                                au:SetValue(au.value)
                            end
                        )
                        az.MouseButton1Down:Connect(
                            function()
                                v.Visible = not v.Visible
                            end
                        )
                        local aD = false
                        local aE = false
                        az.MouseEnter:Connect(
                            function()
                                aD = true
                            end
                        )
                        az.MouseLeave:Connect(
                            function()
                                aD = false
                            end
                        )
                        v.MouseEnter:Connect(
                            function()
                                aE = true
                            end
                        )
                        v.MouseLeave:Connect(
                            function()
                                aE = false
                            end
                        )
                        local aF = game.Players.LocalPlayer
                        local a9 = aF:GetMouse()
                        game:GetService("UserInputService").InputBegan:Connect(
                            function(a2)
                                if
                                    a2.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a2.UserInputType == Enum.UserInputType.MouseButton2
                                 then
                                    if not aD and not aE and not Y then
                                        v.Visible = false
                                    end
                                end
                            end
                        )
                        local function aG()
                            local aH =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().X - aB.AbsolutePosition.X,
                                0,
                                152
                            )
                            local aI =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().Y - aB.AbsolutePosition.Y,
                                0,
                                152
                            )
                            z.Position = UDim2.new(0, aH, 0, aI)
                            ax =
                                (aB.AbsoluteSize.X -
                                (game:GetService("Players").LocalPlayer:GetMouse().X - aB.AbsolutePosition.X)) /
                                150
                            ay =
                                (aB.AbsoluteSize.Y -
                                (game:GetService("Players").LocalPlayer:GetMouse().Y - aB.AbsolutePosition.Y)) /
                                150
                            ax = math.clamp(ax, 0, 1)
                            ay = math.clamp(ay, 0, 1)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            aM.ImageColor3 = Color3.fromHSV(ax, ay, j)
                            au.value.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            as(au.value)
                        end
                        aB.MouseButton1Down:Connect(
                            function()
                                aG()
                                moveconnection =
                                    game:GetService("Players").LocalPlayer:GetMouse().Move:Connect(
                                    function()
                                        aG()
                                    end
                                )
                                releaseconnection =
                                    game:GetService("UserInputService").InputEnded:Connect(
                                    function(a9)
                                        if a9.UserInputType == Enum.UserInputType.MouseButton1 then
                                            aG()
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                        local function aO()
                            local aH =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().X - aL.AbsolutePosition.X,
                                0,
                                164
                            )
                            aN.Position = UDim2.new(0, aH, 0, 0)
                            aK = aH / 168
                            au.value.Transparency = aK
                            as(au.value)
                        end
                        aL.MouseButton1Down:Connect(
                            function()
                                aO()
                                moveconnection =
                                    game:GetService("Players").LocalPlayer:GetMouse().Move:Connect(
                                    function()
                                        aO()
                                    end
                                )
                                releaseconnection =
                                    game:GetService("UserInputService").InputEnded:Connect(
                                    function(a9)
                                        if a9.UserInputType == Enum.UserInputType.MouseButton1 then
                                            aO()
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                        local function aJ()
                            local aI =
                                math.clamp(
                                game:GetService("Players").LocalPlayer:GetMouse().Y - aC.AbsolutePosition.Y,
                                0,
                                148
                            )
                            D.Position = UDim2.new(0, 0, 0, aI)
                            j = 1 - aI / 152
                            aB.ImageColor3 = Color3.fromHSV(0, 0, j)
                            az.BackgroundColor3 = Color3.fromHSV(ax, ay, j)
                            au.value.Color = fromcolor(Color3.fromHSV(ax, ay, j))
                            aM.ImageColor3 = Color3.fromHSV(ax, ay, j)
                            as(au.value)
                        end
                        aC.MouseButton1Down:Connect(
                            function()
                                aJ()
                                moveconnection =
                                    game:GetService("Players").LocalPlayer:GetMouse().Move:Connect(
                                    function()
                                        aJ()
                                    end
                                )
                                releaseconnection =
                                    game:GetService("UserInputService").InputEnded:Connect(
                                    function(a9)
                                        if a9.UserInputType == Enum.UserInputType.MouseButton1 then
                                            aJ()
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                    elseif aq == "Label" then
                        ao.Size = ao.Size + UDim2.new(0, 0, 0, 12)
                        local aP = Instance.new("TextLabel")
                        aP.Name = "Label"
                        aP.Parent = z
                        aP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aP.BackgroundTransparency = 1.000
                        aP.Position = UDim2.new(0.126635522, 0, 0.0740740746, 0)
                        aP.Size = UDim2.new(0, 160, 0, 10)
                        aP.Font = Enum.Font.SourceSans
                        aP.TextColor3 = Color3.fromRGB(220, 220, 220)
                        aP.TextSize = 14.000
                        aP.TextStrokeTransparency = 1
                        aP.TextXAlignment = Enum.TextXAlignment.Left
                        aP.TextYAlignment = Enum.TextYAlignment.Bottom
                        aP.Text = ar
                        function au:SetValue(aw)
                        end
                    elseif aq == "Slider" then
                        ao.Size = ao.Size + UDim2.new(0, 0, 0, 28)
                        local g, f, aQ = at.min or 0, at.max or 100, at.default or 50
                        local aR = Instance.new("Frame")
                        local aP = Instance.new("TextLabel")
                        local aS = Instance.new("TextLabel")
                        local aT = Instance.new("TextButton")
                        local aU = Instance.new("Frame")
                        aR.Name = "Slider"
                        aR.Parent = z
                        aR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aR.BackgroundTransparency = 1.000
                        aR.Position = UDim2.new(0, 0, 0, 0)
                        aR.Size = UDim2.new(1, 0, 0, 26)
                        aP.Name = "Label"
                        aP.Parent = aR
                        aP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aP.BackgroundTransparency = 1.000
                        aP.Position = UDim2.new(0, 28, 0, -2)
                        aP.Size = UDim2.new(0, 81, 0, 11)
                        aP.Font = Enum.Font.SourceSans
                        aP.Text = ar
                        aP.TextColor3 = Color3.fromRGB(220, 220, 220)
                        aP.TextSize = 14.000
                        aP.TextXAlignment = Enum.TextXAlignment.Left
                        aS.Name = "Value"
                        aS.Parent = aR
                        aS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aS.BackgroundTransparency = 1.000
                        aS.Position = UDim2.new(0, 119, 0, -2)
                        aS.Size = UDim2.new(0, 66, 0, 11)
                        aS.Font = Enum.Font.SourceSans
                        aS.Text = aQ
                        aS.TextColor3 = Color3.fromRGB(220, 220, 220)
                        aS.TextSize = 14.000
                        aS.TextXAlignment = Enum.TextXAlignment.Right
                        aT.Parent = aR
                        aT.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        aT.BorderColor3 = Color3.fromRGB(5, 5, 5)
                        aT.Position = UDim2.new(0, 24, 0, 12)
                        aT.Size = UDim2.new(0, 162, 0, 8)
                        aT.AutoButtonColor = false
                        aT.Font = Enum.Font.SourceSans
                        aT.Text = ""
                        aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                        aT.Modal = true
                        aT.TextSize = 14.000
                        aU.Name = "Amount"
                        aU.Parent = aT
                        aU.BackgroundColor3 = Color3.fromRGB(255, 0, 245)
                        aU.BorderSizePixel = 0
                        aU.Size = UDim2.new(1, 0, 1, 0)
                        au.value = {Slider = aQ}
                        function au:SetValue(aw)
                            au.value = aw
                            local X
                            if g > 0 then
                                X = (au.value.Slider - g) / (f - g)
                            else
                                X = (au.value.Slider - g) / (f - g)
                            end
                            aS.Text = au.value.Slider
                            aU.Size = UDim2.new(X, 0, 1, 0)
                            as(aw)
                        end
                        au.value = {Slider = aQ}
                        au:SetValue(au.value)
                        local aV = game.Players.LocalPlayer:GetMouse()
                        local aW = game:GetService("UserInputService")
                        local aX
                        aT.MouseButton1Down:Connect(
                            function()
                                a:Tween(
                                    aP,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                )
                                a:Tween(
                                    aS,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                )
                                aU.Size = UDim2.new(0, math.clamp(aV.X - aU.AbsolutePosition.X, 0, 162), 0, 8)
                                aX =
                                    math.floor((tonumber(f) - tonumber(g)) / 162 * aU.AbsoluteSize.X + tonumber(g)) or 0
                                aS.Text = aX
                                au.value.Slider = aX
                                as(au.value)
                                moveconnection =
                                    aV.Move:Connect(
                                    function()
                                        aU.Size = UDim2.new(0, math.clamp(aV.X - aU.AbsolutePosition.X, 0, 162), 0, 8)
                                        aX =
                                            math.floor(
                                            (tonumber(f) - tonumber(g)) / 162 * aU.AbsoluteSize.X + tonumber(g)
                                        )
                                        aS.Text = aX
                                        au.value.Slider = aX
                                        as(au.value)
                                    end
                                )
                                releaseconnection =
                                    aW.InputEnded:Connect(
                                    function(a9)
                                        if a9.UserInputType == Enum.UserInputType.MouseButton1 then
                                            a:Tween(
                                                aP,
                                                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                                {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                            )
                                            a:Tween(
                                                aS,
                                                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                                {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                            )
                                            aU.Size =
                                                UDim2.new(0, math.clamp(aV.X - aU.AbsolutePosition.X, 0, 162), 0, 8)
                                            aX =
                                                math.floor(
                                                (tonumber(f) - tonumber(g)) / 162 * aU.AbsoluteSize.X + tonumber(g)
                                            )
                                            as(au.value)
                                            moveconnection:Disconnect()
                                            releaseconnection:Disconnect()
                                        end
                                    end
                                )
                            end
                        )
                    elseif aq == "ToggleKey" then
                        ao.Size = ao.Size + UDim2.new(0, 0, 0, 16)
                        au.value = {
                            Toggle = at.default ~= nil and at.default.Toggle or false,
                            Key = at.default ~= nil and at.default.Key or nil,
                            Type = at.default ~= nil and at.default.Type or "Always"
                        }
                        au.value.Active = "Always" and true or false
                        local aY = Instance.new("TextButton")
                        at.listname = at.listname or ar
                        aY.Name = "Cheat"
                        aY.Parent = z
                        aY.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aY.BackgroundTransparency = 1.000
                        aY.Size = UDim2.new(1, 0, 0, 14)
                        aY.Font = Enum.Font.SourceSans
                        aY.Text = ""
                        aY.TextColor3 = Color3.fromRGB(0, 0, 0)
                        aY.TextSize = 14.000
                        local v = Instance.new("Frame")
                        local u = Instance.new("TextLabel")
                        local aZ = Instance.new("TextButton")
                        local z = Instance.new("Frame")
                        local q = Instance.new("UIListLayout")
                        local a_ = Instance.new("TextButton")
                        local b0 = Instance.new("TextButton")
                        local b1 = Instance.new("TextButton")
                        v.Parent = aY
                        v.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                        v.BorderColor3 = Color3.fromRGB(5, 5, 5)
                        v.Position = UDim2.new(0, 8, 0, 0)
                        v.Size = UDim2.new(0, 10, 0, 10)
                        u.Parent = aY
                        u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        u.BackgroundTransparency = 1.000
                        u.Position = UDim2.new(0.126635522, 0, 0, -1)
                        u.Size = UDim2.new(0.873364508, 0, 1, -4)
                        u.Font = Enum.Font.SourceSans
                        u.Text = ar
                        u.TextColor3 = Color3.fromRGB(200, 200, 200)
                        u.TextSize = 14.000
                        u.TextXAlignment = Enum.TextXAlignment.Left
                        aZ.Name = "Keybind"
                        aZ.Parent = aY
                        aZ.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
                        aZ.BackgroundTransparency = 1.000
                        aZ.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aZ.Position = UDim2.new(0, 160, 0, -3)
                        aZ.Size = UDim2.new(-0.00462962966, 47, 1, 0)
                        aZ.Font = Enum.Font.SourceSans
                        aZ.Text = "[None]"
                        aZ.TextColor3 = Color3.fromRGB(204, 204, 204)
                        aZ.TextSize = 13.000
                        aZ.TextStrokeTransparency = 0.000
                        aZ.TextXAlignment = Enum.TextXAlignment.Right
                        aZ.TextYAlignment = Enum.TextYAlignment.Top
                        z.Parent = aZ
                        z.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
                        z.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        z.Position = UDim2.new(0, 0, 0.195637301, 0)
                        z.Size = UDim2.new(0, 46, 0, 56)
                        z.Visible = false
                        z.ZIndex = 2
                        q.Parent = z
                        q.SortOrder = Enum.SortOrder.LayoutOrder
                        a_.Name = "always"
                        a_.Parent = z
                        a_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        a_.BackgroundTransparency = 1.000
                        a_.BorderSizePixel = 0
                        a_.Size = UDim2.new(1, 0, 0, 18)
                        a_.ZIndex = 2
                        a_.Font = Enum.Font.SourceSansBold
                        a_.Text = "Always"
                        a_.TextColor3 = Color3.fromRGB(255, 0, 245)
                        a_.TextSize = 14.000
                        b0.Name = "hold"
                        b0.Parent = z
                        b0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b0.BackgroundTransparency = 1.000
                        b0.BorderSizePixel = 0
                        b0.Size = UDim2.new(1, 0, 0, 18)
                        b0.ZIndex = 2
                        b0.Font = Enum.Font.SourceSans
                        b0.Text = "Hold"
                        b0.TextColor3 = Color3.fromRGB(200, 200, 200)
                        b0.TextSize = 14.000
                        b1.Name = "toggle"
                        b1.Parent = z
                        b1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b1.BackgroundTransparency = 1.000
                        b1.BorderSizePixel = 0
                        b1.Size = UDim2.new(1, 0, 0, 18)
                        b1.ZIndex = 2
                        b1.Font = Enum.Font.SourceSans
                        b1.Text = "Toggle"
                        b1.TextColor3 = Color3.fromRGB(200, 200, 200)
                        b1.TextSize = 14.000
                        for af, b2 in pairs(z:GetChildren()) do
                            if b2:IsA("TextButton") then
                                b2.MouseButton1Down:Connect(
                                    function()
                                        au.value.Type = b2.Text
                                        z.Visible = false
                                        a_.TextColor3 = Color3.fromRGB(200, 200, 200)
                                        b0.TextColor3 = Color3.fromRGB(200, 200, 200)
                                        b1.TextColor3 = Color3.fromRGB(200, 200, 200)
                                        a_.Font = Enum.Font.SourceSans
                                        b0.Font = Enum.Font.SourceSans
                                        b1.Font = Enum.Font.SourceSans
                                        b2.Font = Enum.Font.SourceSansBold
                                        a:Tween(
                                            b2,
                                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                            {TextColor3 = Color3.fromRGB(255, 0, 245)}
                                        )
                                        au.value.Active = au.value.Type == "Always" and true or false
                                        as(au.value)
                                    end
                                )
                                b2.MouseEnter:Connect(
                                    function()
                                        if au.value.Type ~= b2.Text then
                                            b2.Font = Enum.Font.SourceSansBold
                                            a:Tween(
                                                b2,
                                                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                                {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                            )
                                        end
                                    end
                                )
                                b2.MouseLeave:Connect(
                                    function()
                                        if au.value.Type ~= b2.Text then
                                            b2.Font = Enum.Font.SourceSans
                                            a:Tween(
                                                b2,
                                                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                                {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                            )
                                        end
                                    end
                                )
                            end
                        end
                        local b3 = false
                        local b4 = false
                        z.MouseEnter:Connect(
                            function()
                                b3 = true
                            end
                        )
                        z.MouseLeave:Connect(
                            function()
                                b3 = false
                            end
                        )
                        aZ.MouseEnter:Connect(
                            function()
                                b4 = true
                            end
                        )
                        aZ.MouseLeave:Connect(
                            function()
                                b4 = false
                            end
                        )
                        local b5 = false
                        aZ.MouseButton1Down:Connect(
                            function()
                                if not b5 then
                                    wait()
                                    b5 = true
                                    aZ.Text = "[...]"
                                end
                            end
                        )
                        local aF = game.Players.LocalPlayer
                        local a9 = aF:GetMouse()
                        game:GetService("RunService").Heartbeat:Connect(
                            function()
                                if au.value.Key ~= nil and au.value.Type ~= "Always" then
                                    if au.value.Type == "Hold" then
                                        if string.find(au.value.Key, "Mouse") == nil then
                                            au.value.Active =
                                                game:GetService("UserInputService"):IsKeyDown(
                                                Enum.KeyCode[au.value.Key]
                                            )
                                        else
                                            au.value.Active =
                                                game:GetService("UserInputService"):IsMouseButtonPressed(
                                                Enum.UserInputType[au.value.Key]
                                            )
                                        end
                                    end
                                else
                                    au.value.Active = true
                                end
                                if
                                    au.value.Active and au.value.Toggle and au.value.Type ~= "Always" and
                                        au.value.Key ~= nil
                                 then
                                    m.Keylist:Add(at.listname)
                                else
                                    m.Keylist:Remove(at.listname)
                                end
                            end
                        )
                        function au:SetValue(aA)
                            au.value = aA
                            if aA.Toggle then
                                a:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 255, 255)}
                                )
                            else
                                a:Tween(
                                    v,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}
                                )
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                )
                            end
                            a_.TextColor3 = Color3.fromRGB(200, 200, 200)
                            b0.TextColor3 = Color3.fromRGB(200, 200, 200)
                            b1.TextColor3 = Color3.fromRGB(200, 200, 200)
                            a_.Font = Enum.Font.SourceSans
                            b0.Font = Enum.Font.SourceSans
                            b1.Font = Enum.Font.SourceSans
                            if au.value.Type == "Always" then
                                a_.TextColor3 = Color3.fromRGB(255, 0, 245)
                                a_.Font = Enum.Font.SourceSansBold
                            elseif au.value.Type == "Hold" then
                                b0.TextColor3 = Color3.fromRGB(255, 0, 245)
                                b0.Font = Enum.Font.SourceSansBold
                            elseif au.value.Type == "Toggle" then
                                b1.TextColor3 = Color3.fromRGB(255, 0, 245)
                                b1.Font = Enum.Font.SourceSansBold
                            end
                            au.value.Active = au.value.Type == "Always" and true or false
                            if au.value.Key ~= nil then
                                aZ.Text = "[" .. au.value.Key .. "]"
                            else
                                aZ.Text = "[None]"
                            end
                            as(au.value)
                        end
                        if at.default ~= nil then
                            au:SetValue(at.default)
                        end
                        game:GetService("UserInputService").InputBegan:Connect(
                            function(a2)
                                if
                                    a2.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a2.UserInputType == Enum.UserInputType.MouseButton2 and not b5
                                 then
                                    if z.Visible == true and not b3 and not b4 and not Y then
                                        z.Visible = false
                                    end
                                end
                                if b5 then
                                    b5 = false
                                    aZ.Text =
                                        a2.KeyCode.Name ~= "Unknown" and "[" .. a2.KeyCode.Name .. "]" or
                                        "[" .. a2.UserInputType.Name .. "]"
                                    au.value.Key =
                                        a2.KeyCode.Name ~= "Unknown" and a2.KeyCode.Name or a2.UserInputType.Name
                                    if a2.KeyCode.Name == "Backspace" then
                                        aZ.Text = "[None]"
                                        au.value.Key = nil
                                    end
                                end
                                if au.value.Key ~= nil and au.value.Type ~= "Always" then
                                    if au.value.Type == "Toggle" then
                                        if
                                            string.find(au.value.Key, "Mouse") and au.value.Key == a2.UserInputType.Name or
                                                au.value.Key == a2.KeyCode.Name
                                         then
                                            au.value.Active = not au.value.Active
                                        end
                                    end
                                end
                            end
                        )
                        aZ.MouseButton2Down:Connect(
                            function()
                                if not b5 then
                                    z.Visible = not z.Visible
                                end
                            end
                        )
                        aY.MouseButton1Down:Connect(
                            function()
                                au.value["Toggle"] = not au.value["Toggle"]
                                au:SetValue(au.value)
                            end
                        )
                    elseif aq == "Button" then
                        ao.Size = ao.Size + UDim2.new(0, 0, 0, 22)
                        local b6 = Instance.new("Frame")
                        local aT = Instance.new("TextButton")
                        local Q = Instance.new("UIGradient")
                        local u = Instance.new("TextLabel")
                        b6.Name = "Button"
                        b6.Parent = z
                        b6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b6.BackgroundTransparency = 1.000
                        b6.Size = UDim2.new(1, 0, 0, 22)
                        aT.Parent = b6
                        aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aT.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aT.Position = UDim2.new(0, 24, 0, 0)
                        aT.Size = UDim2.new(0, 162, 0, 18)
                        aT.AutoButtonColor = false
                        aT.Font = Enum.Font.SourceSans
                        aT.Text = ""
                        aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                        aT.TextSize = 14.000
                        Q.Color =
                            ColorSequence.new {
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(33, 33, 33)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(26, 26, 26))
                        }
                        Q.Rotation = 90
                        Q.Parent = aT
                        u.Parent = aT
                        u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        u.BackgroundTransparency = 1.000
                        u.Size = UDim2.new(1, 0, 1, 0)
                        u.Font = Enum.Font.SourceSans
                        u.Text = ar
                        u.TextColor3 = Color3.fromRGB(220, 220, 220)
                        u.TextSize = 14.000
                        aT.MouseEnter:Connect(
                            function()
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                u.Font = Enum.Font.SourceSansBold
                            end
                        )
                        aT.MouseLeave:Connect(
                            function()
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                )
                                u.Font = Enum.Font.SourceSans
                            end
                        )
                        aT.MouseButton1Down:Connect(
                            function()
                                u.TextColor3 = Color3.fromRGB(220, 220, 220)
                                a:Tween(
                                    u,
                                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                    {TextColor3 = Color3.fromRGB(255, 0, 245)}
                                )
                                as()
                            end
                        )
                    elseif aq == "Dropdown" then
                        ao.Size = ao.Size + UDim2.new(0, 0, 0, 37)
                        local b7 = Instance.new("Frame")
                        do
                            local aP = Instance.new("TextLabel")
                            aP.Name = "Bable"
                            aP.Parent = b7
                            aP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            aP.BackgroundTransparency = 1.000
                            aP.Position = UDim2.new(0.126635522, 0, 0.0740740746, -2)
                            aP.Size = UDim2.new(0, 160, 0, 10)
                            aP.Font = Enum.Font.SourceSans
                            aP.TextColor3 = Color3.fromRGB(220, 220, 220)
                            aP.TextSize = 14.000
                            aP.TextStrokeTransparency = 1
                            aP.TextXAlignment = Enum.TextXAlignment.Left
                            aP.TextYAlignment = Enum.TextYAlignment.Bottom
                            aP.Text = ar
                        end
                        local aT = Instance.new("TextButton")
                        local Q = Instance.new("UIGradient")
                        local u = Instance.new("TextLabel")
                        local b8 = Instance.new("ImageLabel")
                        local b9 = Instance.new("Frame")
                        local q = Instance.new("UIListLayout")
                        local ap = Instance.new("UIPadding")
                        b7.Name = "Dropdown"
                        b7.Parent = z
                        b7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b7.BackgroundTransparency = 1.000
                        b7.Size = UDim2.new(1, 0, 0, 35)
                        aT.Parent = b7
                        aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aT.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aT.Position = UDim2.new(0, 24, 0, 13)
                        aT.Size = UDim2.new(0, 162, 0, 18)
                        aT.AutoButtonColor = false
                        aT.Font = Enum.Font.SourceSans
                        aT.Text = ""
                        aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                        aT.TextSize = 14.000
                        Q.Color =
                            ColorSequence.new {
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(33, 33, 33)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(26, 26, 26))
                        }
                        Q.Rotation = 90
                        Q.Parent = aT
                        u.Parent = aT
                        u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        u.BackgroundTransparency = 1.000
                        u.Position = UDim2.new(0, 4, 0, -1)
                        u.Size = UDim2.new(1, -4, 1, 0)
                        u.Font = Enum.Font.SourceSans
                        u.Text = "none ok"
                        u.TextColor3 = Color3.fromRGB(220, 220, 220)
                        u.TextSize = 14.000
                        u.TextXAlignment = Enum.TextXAlignment.Left
                        b8.Parent = aT
                        b8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b8.BackgroundTransparency = 1.000
                        b8.Position = UDim2.new(0, 150, 0, 6)
                        b8.Size = UDim2.new(0, 5, 0, 4)
                        b8.Image = "rbxassetid://6119286865"
                        b9.Name = "Drop"
                        b9.Parent = b7
                        b9.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
                        b9.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        b9.Position = UDim2.new(0, 24, 0, 32)
                        b9.Size = UDim2.new(0, 162, 0, 4)
                        b9.Visible = false
                        b9.ZIndex = 2
                        q.Parent = b9
                        q.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        q.SortOrder = Enum.SortOrder.LayoutOrder
                        ap.Parent = b9
                        ap.PaddingTop = UDim.new(0, 1)
                        b7.TextButton.MouseButton1Down:Connect(
                            function()
                                if b9.Visible then
                                    b9.Visible = not b9.Visible
                                    a:Tween(
                                        b7:FindFirstChild("Bable"),
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                    a:Tween(
                                        u,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                else
                                    b9.Visible = not b9.Visible
                                    a:Tween(
                                        b7:FindFirstChild("Bable"),
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                    )
                                    a:Tween(
                                        u,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                    )
                                end
                            end
                        )
                        local ba = false
                        local bb = false
                        local aF = game.Players.LocalPlayer
                        local a9 = aF:GetMouse()
                        game:GetService("UserInputService").InputBegan:Connect(
                            function(a2)
                                if
                                    a2.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a2.UserInputType == Enum.UserInputType.MouseButton2
                                 then
                                    if not ba and b9.Visible == true and not bb and not Y then
                                        b9.Visible = false
                                        a:Tween(
                                            b7:FindFirstChild("Bable"),
                                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                            {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                        )
                                        a:Tween(
                                            u,
                                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                            {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                        )
                                    end
                                end
                            end
                        )
                        b9.MouseEnter:Connect(
                            function()
                                ba = true
                            end
                        )
                        b9.MouseLeave:Connect(
                            function()
                                ba = false
                            end
                        )
                        b7.MouseEnter:Connect(
                            function()
                                bb = true
                            end
                        )
                        b7.MouseLeave:Connect(
                            function()
                                bb = false
                            end
                        )
                        local aa = true
                        au.value = {Dropdown = at.options[1]}
                        function au:SetValue(aX)
                            au.value = aX
                            u.Text = aX.Dropdown
                            as(au.value)
                        end
                        for bc, j in ipairs(at.options) do
                            b9.Size = b9.Size + UDim2.new(0, 0, 0, 16)
                            local aT = Instance.new("TextButton")
                            local bd = Instance.new("TextLabel")
                            aT.Parent = b9
                            aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            aT.BackgroundTransparency = 1.000
                            aT.BorderSizePixel = 0
                            aT.Size = UDim2.new(1, 0, 0, 16)
                            aT.Font = Enum.Font.SourceSans
                            aT.Text = ""
                            aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                            aT.TextSize = 15
                            aT.TextXAlignment = Enum.TextXAlignment.Left
                            aT.ZIndex = 2
                            bd.Parent = aT
                            bd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            bd.BackgroundTransparency = 1.000
                            bd.Position = UDim2.new(0, 6, 0, 0)
                            bd.Size = UDim2.new(1, -9, 1, 0)
                            bd.Font = Enum.Font.SourceSans
                            bd.Text = j
                            bd.TextColor3 = Color3.fromRGB(200, 200, 200)
                            bd.TextSize = 14.000
                            bd.TextXAlignment = Enum.TextXAlignment.Left
                            bd.ZIndex = 2
                            if aa then
                                aa = false
                                au.value.Dropdown = j
                                u.Text = j
                            end
                            aT.MouseEnter:Connect(
                                function()
                                    bd.Font = Enum.Font.SourceSansBold
                                    a:Tween(
                                        bd,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(255, 0, 245)}
                                    )
                                end
                            )
                            aT.MouseLeave:Connect(
                                function()
                                    bd.Font = Enum.Font.SourceSans
                                    a:Tween(
                                        bd,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(200, 200, 200)}
                                    )
                                end
                            )
                            aT.MouseButton1Down:Connect(
                                function()
                                    au.value.Dropdown = j
                                    u.Text = j
                                    as(au.value)
                                    b9.Visible = false
                                    a:Tween(
                                        b7:FindFirstChild("Bable"),
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                    a:Tween(
                                        u,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                end
                            )
                        end
                    elseif aq == "Jumbobox" then
                        ao.Size = ao.Size + UDim2.new(0, 0, 0, 37)
                        local b7 = Instance.new("Frame")
                        do
                            local aP = Instance.new("TextLabel")
                            aP.Name = "Bable"
                            aP.Parent = b7
                            aP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            aP.BackgroundTransparency = 1.000
                            aP.Position = UDim2.new(0.126635522, 0, 0.0740740746, -2)
                            aP.Size = UDim2.new(0, 160, 0, 10)
                            aP.Font = Enum.Font.SourceSans
                            aP.TextColor3 = Color3.fromRGB(220, 220, 220)
                            aP.TextSize = 14.000
                            aP.TextStrokeTransparency = 1
                            aP.TextXAlignment = Enum.TextXAlignment.Left
                            aP.TextYAlignment = Enum.TextYAlignment.Bottom
                            aP.Text = ar
                        end
                        local aT = Instance.new("TextButton")
                        local Q = Instance.new("UIGradient")
                        local u = Instance.new("TextLabel")
                        local b8 = Instance.new("ImageLabel")
                        local b9 = Instance.new("Frame")
                        local q = Instance.new("UIListLayout")
                        local ap = Instance.new("UIPadding")
                        b7.Name = "Dropdown"
                        b7.Parent = z
                        b7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b7.BackgroundTransparency = 1.000
                        b7.Size = UDim2.new(1, 0, 0, 35)
                        aT.Parent = b7
                        aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        aT.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        aT.Position = UDim2.new(0, 24, 0, 13)
                        aT.Size = UDim2.new(0, 162, 0, 18)
                        aT.AutoButtonColor = false
                        aT.Font = Enum.Font.SourceSans
                        aT.Text = ""
                        aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                        aT.TextSize = 14.000
                        Q.Color =
                            ColorSequence.new {
                            ColorSequenceKeypoint.new(0, Color3.fromRGB(33, 33, 33)),
                            ColorSequenceKeypoint.new(1, Color3.fromRGB(26, 26, 26))
                        }
                        Q.Rotation = 90
                        Q.Parent = aT
                        u.Parent = aT
                        u.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        u.BackgroundTransparency = 1.000
                        u.Position = UDim2.new(0, 4, 0, -1)
                        u.Size = UDim2.new(1, -4, 1, 0)
                        u.Font = Enum.Font.SourceSans
                        u.Text = "0 Selected"
                        u.TextColor3 = Color3.fromRGB(220, 220, 220)
                        u.TextSize = 14.000
                        u.TextXAlignment = Enum.TextXAlignment.Left
                        b8.Parent = aT
                        b8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        b8.BackgroundTransparency = 1.000
                        b8.Position = UDim2.new(0, 150, 0, 6)
                        b8.Size = UDim2.new(0, 5, 0, 4)
                        b8.Image = "rbxassetid://6119286865"
                        b9.Name = "Drop"
                        b9.Parent = b7
                        b9.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
                        b9.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        b9.Position = UDim2.new(0, 24, 0, 32)
                        b9.Size = UDim2.new(0, 162, 0, 4)
                        b9.Visible = false
                        b9.ZIndex = 2
                        q.Parent = b9
                        q.HorizontalAlignment = Enum.HorizontalAlignment.Center
                        q.SortOrder = Enum.SortOrder.LayoutOrder
                        ap.Parent = b9
                        ap.PaddingTop = UDim.new(0, 1)
                        b7.TextButton.MouseButton1Down:Connect(
                            function()
                                if b9.Visible then
                                    b9.Visible = not b9.Visible
                                    a:Tween(
                                        b7:FindFirstChild("Bable"),
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                    a:Tween(
                                        u,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                    )
                                else
                                    b9.Visible = not b9.Visible
                                    a:Tween(
                                        b7:FindFirstChild("Bable"),
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                    )
                                    a:Tween(
                                        u,
                                        TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                        {TextColor3 = Color3.fromRGB(240, 240, 240)}
                                    )
                                end
                            end
                        )
                        local ba = false
                        local bb = false
                        local aF = game.Players.LocalPlayer
                        local a9 = aF:GetMouse()
                        game:GetService("UserInputService").InputBegan:Connect(
                            function(a2)
                                if
                                    a2.UserInputType == Enum.UserInputType.MouseButton1 or
                                        a2.UserInputType == Enum.UserInputType.MouseButton2
                                 then
                                    if not ba and b9.Visible == true and not bb and not Y then
                                        b9.Visible = false
                                        a:Tween(
                                            b7:FindFirstChild("Bable"),
                                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                            {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                        )
                                        a:Tween(
                                            u,
                                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                                            {TextColor3 = Color3.fromRGB(220, 220, 220)}
                                        )
                                    end
                                end
                            end
                        )
                        b9.MouseEnter:Connect(
                            function()
                                ba = true
                            end
                        )
                        b9.MouseLeave:Connect(
                            function()
                                ba = false
                            end
                        )
                        b7.MouseEnter:Connect(
                            function()
                                bb = true
                            end
                        )
                        b7.MouseLeave:Connect(
                            function()
                                bb = false
                            end
                        )
                        local aa = true
                        au.value = {Jumbobox = {}}
                        function au:SetValue(aX)
                            au.value = aX
                            u.Text = #au.value.Jumbobox .. " Selected"
                            for af, ag in pairs(b9:GetChildren()) do
                                if ag:IsA("TextButton") then
                                    ag.TextLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
                                    ag.TextLabel.Font = Enum.Font.SourceSans
                                    if table.find(au.value.Jumbobox, ag.TextLabel.Text) then
                                        ag.TextLabel.TextColor3 = Color3.fromRGB(255, 0, 245)
                                        ag.TextLabel.Font = Enum.Font.SourceSansBold
                                    end
                                end
                            end
                            as(au.value)
                        end
                        for bc, j in ipairs(at.options) do
                            b9.Size = b9.Size + UDim2.new(0, 0, 0, 16)
                            local aT = Instance.new("TextButton")
                            local bd = Instance.new("TextLabel")
                            aT.Parent = b9
                            aT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            aT.BackgroundTransparency = 1.000
                            aT.BorderSizePixel = 0
                            aT.Size = UDim2.new(1, 0, 0, 16)
                            aT.Font = Enum.Font.SourceSans
                            aT.Text = ""
                            aT.TextColor3 = Color3.fromRGB(0, 0, 0)
                            aT.TextSize = 15
                            aT.TextXAlignment = Enum.TextXAlignment.Left
                            aT.ZIndex = 2
                            aT.Name = j
                            bd.Parent = aT
                            bd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            bd.BackgroundTransparency = 1.000
                            bd.Position = UDim2.new(0, 6, 0, 0)
                            bd.Size = UDim2.new(1, -9, 1, 0)
                            bd.Font = Enum.Font.SourceSans
                            bd.Text = j
                            bd.TextColor3 = Color3.fromRGB(200, 200, 200)
                            bd.TextSize = 14.000
                            bd.TextXAlignment = Enum.TextXAlignment.Left
                            bd.ZIndex = 2
                            aT.MouseEnter:Connect(
                                function()
                                    bd.Font = Enum.Font.SourceSansBold
                                end
                            )
                            aT.MouseLeave:Connect(
                                function()
                                    if not table.find(au.value.Jumbobox, j) then
                                        bd.Font = Enum.Font.SourceSans
                                    end
                                end
                            )
                            aT.MouseButton1Down:Connect(
                                function()
                                    if table.find(au.value.Jumbobox, j) then
                                        bd.TextColor3 = Color3.fromRGB(200, 200, 200)
                                        for bc, X in pairs(au.value.Jumbobox) do
                                            if X == j then
                                                table.remove(au.value.Jumbobox, bc)
                                            end
                                        end
                                        u.Text = #au.value.Jumbobox .. " Selected"
                                        bd.Font = Enum.Font.SourceSans
                                    else
                                        table.insert(au.value.Jumbobox, j)
                                        bd.TextColor3 = Color3.fromRGB(255, 0, 245)
                                        bd.Font = Enum.Font.SourceSansBold
                                        u.Text = #au.value.Jumbobox .. " Selected"
                                    end
                                end
                            )
                        end
                    end
                    return au
                end
                return an
            end
            return ak
        end
        ae.Parent = r
        ad.Parent = p
        return ac
    end
    n.Parent = game.CoreGui
    return m
end
local be = {
    "Head",
    "UpperTorso",
    "LowerTorso",
    "LeftUpperArm",
    "LeftLowerArm",
    "LeftHand",
    "RightUpperArm",
    "RightLowerArm",
    "RightHand",
    "LeftUpperLeg",
    "LeftLowerLeg",
    "LeftFoot",
    "RightUpperLeg",
    "RightLowerLeg",
    "RightFoot"
}
local bf = {}
local bg = {fov = Drawing.new("Circle")}
getgenv().nixus = {}
local bh = Instance.new("BindableEvent")
bh.Parent = game
local bi = a:New()
local bj = game:GetService("Players")
local bk = bj.LocalPlayer
local aV = bk:GetMouse()
local cam = workspace.CurrentCamera
local bl = getrawmetatable(game)
local bm = bl.__namecall
local bn = bl.__index
local bo = bl.__newindex
local bp = Instance.new("Animation", workspace)
local bq = game:GetService("RunService")
local br = getsenv(bk.PlayerGui.Client)
local aW = game:GetService("UserInputService")
local bs = game:GetService("Lighting")
bp.AnimationId = "rbxassetid://0"
setreadonly(bl, false)
local bt = {
    [1] = {
        name = "Legit",
        [1] = {
            name = "General",
            [1] = {
                name = "Aimbot",
                side = "Left",
                [1] = {"ToggleKey", "Enabled", nil, {listname = "Legitbot"}, "Enabled"},
                [2] = {
                    "Dropdown",
                    "Selection",
                    nil,
                    {options = {"Closest to Crosshair", "Lowest Health", "Lowest Distance"}},
                    "Selection"
                },
                [3] = {"Dropdown", "Hitbox", nil, {options = {"Closest", "Head", "Chest"}}, "Hitbox"},
                [4] = {"Toggle", "Free For All", nil, {}, "FFA"},
                [5] = {"Toggle", "Through Walls", nil, {}, "Through Walls"},
                [6] = {"Slider", "Field of View", nil, {min = 0, max = 360, default = 180}, "Field of View"},
                [7] = {"ColorTransp", "Draw FOV", function(aA)
                        bg.fov.Color = color(aA.Color)
                        bg.fov.Transparency = 1 - aA.Transparency
                        if bf.Legit.General.Aimbot.Enabled.Toggle and not aA.Toggle then
                            bg.fov.Visible = false
                        end
                    end, {}, "Draw FOV"},
                [8] = {"Slider", "Smoothing", nil, {min = 1, max = 50, default = 1}, "Smoothing"},
                [9] = {"Toggle", "Through Smokes", nil, {}, "Through Smokes"},
                [10] = {"Toggle", "Flash Check", nil, {}, "Flash Check"},
                [11] = {"Toggle", "Aim Center", nil, {default = true}, "Aim Center"},
                [12] = {"Toggle", "Delay Aim", nil, {}, "Delay Aim"},
                [13] = {"Toggle", "Forcefield Check", nil, {}, "Forcefield Check"}
            },
            [2] = {
                name = "Silent Aim",
                side = "Right",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Slider", "Hit Chance", nil, {min = 0, max = 100, default = 100}, "Hit Chance"},
                [3] = {"Slider", "Head Chance", nil, {min = 0, max = 100, default = 100}, "Head Chance"}
            },
            [3] = {
                name = "Triggerbot",
                side = "Right",
                [1] = {"ToggleKey", "Enabled", nil, {listname = "Triggerbot"}, "Enabled"},
                [2] = {"Slider", "Shoot Chance", nil, {min = 0, max = 100, default = 100}, "Shoot Chance"},
                [3] = {"Slider", "Delay (ms)", nil, {min = 0, max = 3500, default = 0}, "Delay"}
            }
        },
        [2] = {
            name = "Pistol",
            [1] = {
                name = "Aimbot",
                side = "Left",
                [1] = {"Toggle", "Override Default", nil, {}, "Override Default"},
                [2] = {"Dropdown", "Hitbox", nil, {options = {"Closest", "Head", "Chest"}}, "Hitbox"},
                [3] = {"Slider", "Field of View", nil, {min = 0, max = 360, default = 180}, "Field of View"},
                [4] = {"Slider", "Smoothing", nil, {min = 1, max = 50, default = 1}, "Smoothing"},
                [5] = {"Toggle", "Through Smokes", nil, {}, "Through Smokes"},
                [6] = {"Toggle", "Flash Check", nil, {}, "Flash Check"},
                [7] = {"Toggle", "Aim Center", nil, {default = true}, "Aim Center"},
                [8] = {"Toggle", "Delay Aim", nil, {}, "Delay Aim"}
            },
            [2] = {
                name = "Silent Aim",
                side = "Right",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Slider", "Hit Chance", nil, {min = 0, max = 100, default = 100}, "Hit Chance"},
                [3] = {"Slider", "Head Chance", nil, {min = 0, max = 100, default = 100}, "Head Chance"}
            },
            [3] = {
                name = "Triggerbot",
                side = "Right",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Slider", "Shoot Chance", nil, {min = 0, max = 100, default = 100}, "Shoot Chance"},
                [3] = {"Slider", "Delay (ms)", nil, {min = 0, max = 3500, default = 0}, "Delay"}
            }
        },
        [3] = {
            name = "SMG",
            [1] = {
                name = "Aimbot",
                side = "Left",
                [1] = {"Toggle", "Override Default", nil, {}, "Override Default"},
                [2] = {"Dropdown", "Hitbox", nil, {options = {"Closest", "Head", "Chest"}}, "Hitbox"},
                [3] = {"Slider", "Field of View", nil, {min = 0, max = 360, default = 180}, "Field of View"},
                [4] = {"Slider", "Smoothing", nil, {min = 1, max = 50, default = 1}, "Smoothing"},
                [5] = {"Toggle", "Through Smokes", nil, {}, "Through Smokes"},
                [6] = {"Toggle", "Flash Check", nil, {}, "Flash Check"},
                [7] = {"Toggle", "Aim Center", nil, {default = true}, "Aim Center"},
                [8] = {"Toggle", "Delay Aim", nil, {}, "Delay Aim"}
            },
            [2] = {
                name = "Silent Aim",
                side = "Right",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Slider", "Hit Chance", nil, {min = 0, max = 100, default = 100}, "Hit Chance"},
                [3] = {"Slider", "Head Chance", nil, {min = 0, max = 100, default = 100}, "Head Chance"}
            },
            [3] = {
                name = "Triggerbot",
                side = "Right",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Slider", "Shoot Chance", nil, {min = 0, max = 100, default = 100}, "Shoot Chance"},
                [3] = {"Slider", "Delay (ms)", nil, {min = 0, max = 3500, default = 0}, "Delay"}
            }
        },
        [4] = {
            name = "Rifle",
            [1] = {
                name = "Aimbot",
                side = "Left",
                [1] = {"Toggle", "Override Default", nil, {}, "Override Default"},
                [2] = {"Dropdown", "Hitbox", nil, {options = {"Closest", "Head", "Chest"}}, "Hitbox"},
                [3] = {"Slider", "Field of View", nil, {min = 0, max = 360, default = 180}, "Field of View"},
                [4] = {"Slider", "Smoothing", nil, {min = 1, max = 50, default = 1}, "Smoothing"},
                [5] = {"Toggle", "Through Smokes", nil, {}, "Through Smokes"},
                [6] = {"Toggle", "Flash Check", nil, {}, "Flash Check"},
                [7] = {"Toggle", "Aim Center", nil, {default = true}, "Aim Center"},
                [8] = {"Toggle", "Delay Aim", nil, {}, "Delay Aim"}
            },
            [2] = {
                name = "Silent Aim",
                side = "Right",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Slider", "Hit Chance", nil, {min = 0, max = 100, default = 100}, "Hit Chance"},
                [3] = {"Slider", "Head Chance", nil, {min = 0, max = 100, default = 100}, "Head Chance"}
            },
            [3] = {
                name = "Triggerbot",
                side = "Right",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Slider", "Shoot Chance", nil, {min = 0, max = 100, default = 100}, "Shoot Chance"},
                [3] = {"Slider", "Delay (ms)", nil, {min = 0, max = 3500, default = 0}, "Delay"}
            }
        },
        [5] = {
            name = "Sniper",
            [1] = {
                name = "Aimbot",
                side = "Left",
                [1] = {"Toggle", "Override Default", nil, {}, "Override Default"},
                [2] = {"Dropdown", "Hitbox", nil, {options = {"Closest", "Head", "Chest"}}, "Hitbox"},
                [3] = {"Slider", "Field of View", nil, {min = 0, max = 360, default = 180}, "Field of View"},
                [4] = {"Slider", "Smoothing", nil, {min = 1, max = 50, default = 1}, "Smoothing"},
                [5] = {"Toggle", "Through Smokes", nil, {}, "Through Smokes"},
                [6] = {"Toggle", "Flash Check", nil, {}, "Flash Check"},
                [7] = {"Toggle", "Aim Center", nil, {default = true}, "Aim Center"},
                [8] = {"Toggle", "Delay Aim", nil, {}, "Delay Aim"}
            },
            [2] = {
                name = "Silent Aim",
                side = "Right",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Slider", "Hit Chance", nil, {min = 0, max = 100, default = 100}, "Hit Chance"},
                [3] = {"Slider", "Head Chance", nil, {min = 0, max = 100, default = 100}, "Head Chance"}
            },
            [3] = {
                name = "Triggerbot",
                side = "Right",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Slider", "Shoot Chance", nil, {min = 0, max = 100, default = 100}, "Shoot Chance"},
                [3] = {"Slider", "Delay (ms)", nil, {min = 0, max = 3500, default = 0}, "Delay"}
            }
        }
    },
    [2] = {
        name = "Rage",
        [1] = {
            name = "Aimbot",
            [1] = {
                name = "Aimbot",
                side = "Left",
                [1] = {"ToggleKey", "Enabled", nil, {listname = "Ragebot"}, "Enabled"},
                [2] = {"Dropdown", "Origin", nil, {options = {"Camera", "Character"}}, "Origin"},
                [3] = {"Toggle", "Silent Aim", nil, {}, "Silent Aim"},
                [4] = {"Toggle", "Automatic Fire", nil, {}, "Automatic Fire"},
                [5] = {"Dropdown", "Automatic Fire Type", nil, {options = {"Normal", "HitPart"}}, "Automatic Fire Type"},
                [6] = {"Toggle", "Automatic Penetration", nil, {}, "Automatic Penetration"},
                [7] = {"Slider", "Minimum Damage", nil, {min = 1, max = 100, default = 20}, "Minimum Damage"}
            },
            [2] = {
                name = "Exploits",
                side = "Right",
                [1] = {"ToggleKey", "Gun Manipulation", nil, {listname = "Gun Manipulation"}, "Gun Manipulation"},
                [2] = {
                    "Dropdown",
                    "Manipulation Type",
                    nil,
                    {options = {"Double Tap", "Rapid Fire"}},
                    "Manipulation Type"
                },
                [3] = {"ToggleKey", "Kill All", nil, {listname = "Kill All"}, "Kill All"},
                [4] = {"Toggle", "Bullet Redirection", nil, {}, "Bullet Redirection"}
            },
            [3] = {
                name = "Hitboxes",
                side = "Left",
                [1] = {"Jumbobox", "Hitboxes", nil, {options = {"Head", "UpperTorso", "LowerTorso"}}, "Hitboxes"},
                [2] = {"Jumbobox", "Hitbox Helpers", nil, {options = {"Safe", "Smart"}}, "Hitbox Helpers"}
            },
            [4] = {
                name = "Other",
                side = "Right",
                [1] = {"ToggleKey", "Prefer Body", nil, {listname = "Prefer Body"}, "Prefer Body"},
                [2] = {
                    "ToggleKey",
                    "Minimum Damage Override",
                    nil,
                    {listname = "Minimum Damage Override"},
                    "Minimum Damage Override"
                },
                [3] = {"Slider", "Minimum Damage", nil, {min = 1, max = 100, default = 20}, "Minimum Damage"},
                [4] = {"ToggleKey", "Hitbox Override", nil, {listname = "Hitbox Override"}, "Hitbox Override"},
                [5] = {
                    "Jumbobox",
                    "Overrided Hitboxes",
                    nil,
                    {options = {"Head", "UpperTorso", "LowerTorso"}},
                    "Overrided Hitboxes"
                }
            }
        },
        [2] = {
            name = "Anti-Aim",
            [1] = {
                name = "Angles",
                side = "Left",
                [1] = {"ToggleKey", "Enabled", nil, {listname = "Anti-Aim"}, "Enabled"},
                [2] = {"Dropdown", "Yaw Base", nil, {options = {"Camera", "Targets"}}, "Yaw Base"},
                [3] = {"Slider", "Yaw Offset", nil, {min = -180, max = 180, default = 0}, "Yaw Offset"},
                [4] = {"ToggleKey", "Yaw Jitter", nil, {listname = "Yaw Jitter"}, "Yaw Jitter"},
                [5] = {"Slider", "Jitter Offset", nil, {min = -180, max = 180, default = 0}, "Jitter Offset"},
                [6] = {"Dropdown", "Pitch", nil, {options = {"Off", "Up", "Down", "Zero"}}, "Pitch"},
                [7] = {"Toggle", "Pitch Extend", nil, {}, "Pitch Extend"}
            },
            [2] = {
                name = "Exploits",
                side = "Right",
                [1] = {"ToggleKey", "Slow Walk", nil, {listname = "Slow Walk"}, "Slow Walk"},
                [2] = {"Slider", "Walk Speed", nil, {min = 25, max = 100, default = 50}, "Walk Speed"},
                [3] = {"Toggle", "Fake Duck", nil, {}, "Fake Duck"},
                [4] = {"Toggle", "Break Head", nil, {}, "Break Head"}
            },
            [3] = {
                name = "Manual Keys",
                side = "Left",
                [1] = {"ToggleKey", "Manual Left", nil, {listname = "Left AA"}, "Manual Left"},
                [2] = {"ToggleKey", "Manual Right", nil, {listname = "Right AA"}, "Manual Right"}
            },
            [4] = {
                name = "Extra",
                side = "Right",
                [1] = {"Toggle", "Disable On E", nil, {}, "Disable On E"},
                [2] = {"Toggle", "Slide Walk", nil, {}, "Slide Walk"},
                [3] = {"Toggle", "No Animations", nil, {}, "No Animations"}
            }
        }
    },
    [3] = {
        name = "Visuals",
        [1] = {
            name = "ESP",
            [1] = {
                name = "Drawing",
                side = "Left",
                [1] = {"ToggleKey", "Enabled", nil, {listname = "ESP"}, "Enabled"},
                [2] = {"Jumbobox", "Players", nil, {options = {"Enemies", "Teammates"}}, "Players"},
                [3] = {"ToggleColor", "Bounding Box", nil, {}, "Bounding Box"},
                [4] = {"ToggleColor", "Name", nil, {}, "Name"},
                [5] = {
                    "ToggleColor",
                    "Health",
                    nil,
                    {default = {Toggle = false, Color = {R = 0, G = 1, B = 0}}},
                    "Health"
                },
                [6] = {"ToggleColor", "Weapon", nil, {}, "Weapon"},
                [7] = {"Dropdown", "Font", nil, {options = {"Plex", "Monospace", "System", "UI"}}, "Font"},
                [8] = {"Slider", "Font Size", nil, {min = 12, max = 16, default = 13}, "Font Size"},
                [9] = {"Jumbobox", "Outlines", nil, {options = {"Drawings", "Text"}}, "Outlines"}
            },
            [2] = {
                name = "Models",
                side = "Right",
                [1] = {"ColorTransp", "Weapon Chams", nil, {}, "Weapon Chams"},
                [2] = {
                    "Dropdown",
                    "Material",
                    nil,
                    {options = {"Custom", "Flat", "ForceField", "Pulse", "Glass"}},
                    "Weapon Chams Material"
                },
                [3] = {"Slider", "Weapon Reflectance", nil, {min = 0, max = 100, default = 0}, "Weapon Reflectance"},
                [4] = {"ColorTransp", "Accessory Chams", nil, {}, "Accessory Chams"},
                [5] = {"Dropdown", "Material", nil, {options = {"Custom", "ForceField"}}, "Accessory Material"},
                [6] = {"Toggle", "Remove Gloves", nil, {}, "Remove Gloves"},
                [7] = {"Toggle", "Remove Sleeves", nil, {}, "Remove Sleeves"},
                [8] = {"ColorTransp", "Arm Chams", nil, {}, "Arm Chams"}
            }
        },
        [2] = {
            name = "Other",
            [1] = {
                name = "Self",
                side = "Left",
                [1] = {"ToggleKey", "Third Person", nil, {listname = "Third Person"}, "Third Person"},
                [2] = {"Slider", "Distance", nil, {min = 200, max = 700, default = 300}, "Distance"},
                [3] = {"Toggle", "Override FOV", function(aA)
                        if not aA.Toggle then
                            cam.FieldOfView = 80
                        end
                    end, {}, "Override FOV"},
                [4] = {"Slider", "FOV Amount", nil, {min = 30, max = 110, default = 80}, "FOV Amount"},
                [5] = {"Toggle", "On Scope", nil, {}, "On Scope"}
            },
            [2] = {
                name = "Viewmodel",
                side = "Left",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Slider", "X Offset", nil, {min = -250, max = 250, default = 0}, "X"},
                [3] = {"Slider", "Y Offset", nil, {min = -250, max = 250, default = 0}, "Y"},
                [4] = {"Slider", "Z Offset", nil, {min = -250, max = 250, default = 0}, "Z"},
                [5] = {"Slider", "Roll Offset", nil, {min = -250, max = 250, default = 0}, "Roll"}
            },
            [3] = {
                name = "World",
                side = "Right",
                [1] = {"Toggle", "No Scope", nil, {}, "No Scope"},
                [2] = {"Toggle", "No Flash", nil, {}, "No Flash"},
                [3] = {"Toggle", "No Shadows", function(aA)
                        bs.GlobalShadows = not aA.Toggle
                    end, {default = false}, "No Shadows"},
                [4] = {"Toggle", "Time of Day", nil, {}, "Time Of Day"},
                [5] = {"Slider", "Time", nil, {min = 0, max = 24, default = 12}, "Time"},
                [6] = {"ColorTransp", "Fire Radius", nil, {}, "Fire Radius"},
                [7] = {"ColorTransp", "Smoke Radius", nil, {}, "Smoke Radius"},
                [8] = {"ColorTransp", "Bullet Tracers", nil, {}, "Bullet Tracers"},
                [9] = {"ColorTransp", "Hit Chams", nil, {}, "Hit Chams"},
                [10] = {"Slider", "Life Time (ms)", nil, {min = 250, max = 4000, default = 4000}, "Hit Chams Life Time"},
                [11] = {"ColorTransp", "Impacts", nil, {}, "Impacts"}
            }
        }
    },
    [4] = {
        name = "Misc",
        [1] = {
            name = "General",
            [1] = {
                name = "General",
                side = "Left",
                [1] = {"Toggle", "No Fire Damage", nil, {}, "No Fire Damage"},
                [2] = {"Toggle", "No Fall Damage", nil, {}, "No Fall Damage"}
            },
            [2] = {
                name = "Movement",
                side = "Right",
                [1] = {"Toggle", "Bunny Hop", nil, {}, "Bunny Hop"},
                [2] = {"Slider", "Speed", nil, {min = 14, max = 80, default = 20}, "Speed"},
                [3] = {"ToggleKey", "Jump Bug", nil, {listname = "Jump Bug"}, "Jump Bug"},
                [4] = {"Dropdown", "Jump Bug Type", nil, {options = {"Normal", "Higher"}}, "Jump Bug Type"},
                [5] = {"ToggleKey", "Edge Jump", nil, {listname = "Edge Jump"}, "Edge Jump"}
            },
            [3] = {
                name = "Client",
                side = "Left",
                [1] = {"Toggle", "No Recoil", nil, {}, "No Recoil"},
                [2] = {"Toggle", "No Spread", nil, {}, "No Spread"},
                [3] = {"Toggle", "Infinite Crouch", nil, {}, "Infinite Crouch"},
                [4] = {"Toggle", "Infinite Cash", nil, {}, "Infinite Cash"},
                [5] = {"Toggle", "Damage Multiplier", nil, {}, "Damage Multiplier"},
                [6] = {"Slider", "Multiplier", nil, {min = 1, max = 21, default = 1}, "Multiplier"}
            },
            [4] = {
                name = "Crosshair",
                side = "Left",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Toggle", "Override Length", nil, {}, "Override Length"},
                [3] = {"Slider", "Length", nil, {min = 1, max = 15, default = 10}, "Length"},
                [4] = {"ToggleColor", "Override Border", nil, {}, "Override Border"}
            },
            [5] = {
                name = "Fakelag",
                side = "Right",
                [1] = {"Toggle", "Enabled", nil, {}, "Enabled"},
                [2] = {"Dropdown", "Amount", nil, {options = {"Static", "Dynamic"}}, "Amount"},
                [3] = {"Slider", "Limit", nil, {min = 1, max = 64, default = 16}, "Limit"},
                [4] = {
                    "Jumbobox",
                    "Trigger Conditions",
                    nil,
                    {options = {"Standing", "Moving", "On Target"}},
                    "Trigger Conditions"
                },
                [5] = {"Slider", "Trigger Limit", nil, {min = 1, max = 64, default = 32}, "Trigger Limit"},
                [6] = {"ToggleColor", "Visualize Lag", nil, {}, "Visualize Lag"}
            }
        },
        [2] = {
            name = "Configs",
            [1] = {
                name = "General",
                side = "Left",
                [1] = {
                    "Dropdown",
                    "Config",
                    nil,
                    {options = {"Slot 1", "Slot 2", "Slot 3", "Slot 4", "Slot 5"}},
                    "Config"
                },
                [2] = {
                    "Button",
                    "Save Config",
                    function()
                        writefile(
                            bf["Misc"]["Configs"]["General"]["Config"].Dropdown .. ".nixus",
                            game:GetService("HttpService"):JSONEncode(bf)
                        )
                    end,
                    {},
                    "Save"
                },
                [3] = {"Button", "Load Config", function()
                        bh:Fire()
                    end, {}, "Load"}
            },
            [2] = {name = "Indicators", side = "Left", [1] = {"Toggle", "Watermark", function(aX)
                        bi:Watermark(aX.Toggle)
                    end, {default = true}, "Watermark"}, [2] = {"Toggle", "Keybind List", function(aX)
                        bi.Keylist:SetVisible(aX.Toggle)
                    end, {default = false}, "Keybind List"}}
        }
    }
}
if bt then
    for bu = 1, #bt do
        local bv = bi:Tab(bt[bu].name)
        bf[bt[bu].name] = {}
        for bw = 1, #bt[bu] do
            local an = bv:Tab(bt[bu][bw].name)
            bf[bt[bu].name][bt[bu][bw].name] = {}
            for bx = 1, #bt[bu][bw] do
                local by = an:Section(bt[bu][bw][bx].name, bt[bu][bw][bx].side)
                bf[bt[bu].name][bt[bu][bw].name][bt[bu][bw][bx].name] = {}
                for ag = 1, #bt[bu][bw][bx] do
                    local au = bt[bu][bw][bx][ag]
                    au[3] = au[3] or function()
                        end
                    local m =
                        by:Cheat(
                        au[1],
                        au[2],
                        function(aw)
                            bf[bt[bu].name][bt[bu][bw].name][bt[bu][bw][bx].name][au[5]] = aw
                            au[3](aw)
                        end,
                        au[4]
                    )
                    bf[bt[bu].name][bt[bu][bw].name][bt[bu][bw][bx].name][au[5]] = m.value
                    bh.Event:Connect(
                        function()
                            local bz = bf["Misc"]["Configs"]["General"]["Config"].Dropdown .. ".nixus"
                            if isfile(bz) and au[1] ~= "Button" and au[5] ~= "Config" then
                                local bA = game:GetService("HttpService"):JSONDecode(readfile(bz))
                                pcall(
                                    function()
                                        if bA[bt[bu].name][bt[bu][bw].name][bt[bu][bw][bx].name][au[5]] ~= nil then
                                            m:SetValue(bA[bt[bu].name][bt[bu][bw].name][bt[bu][bw][bx].name][au[5]])
                                        end
                                    end
                                )
                            end
                        end
                    )
                end
            end
        end
    end
end
local bB = {
    Pistol = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8"},
    SMG = {"MP9", "MAC10", "MP7", "UMP", "P90", "Bizon"},
    Rifle = {"M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG"},
    Sniper = {"AWP", "Scout", "G3SG1"}
}
local function bC(bD)
    return table.find(bB.Pistol, bD) and "Pistol" or table.find(bB.SMG, bD) and "SMG" or
        table.find(bB.Rifle, bD) and "Rifle" or
        table.find(bB.Sniper, bD) and "Sniper" or
        "General"
end
local function bE(bD)
    if bD == "General" then
        return bf.Legit.General
    else
        if bf.Legit[bD].Aimbot["Override Default"].Toggle then
            return bf.Legit[bD]
        else
            return bf.Legit.General
        end
    end
end
local function bF(bG)
    return Vector3.new(bG.r, bG.g, bG.b)
end
for af, ag in pairs(game.ReplicatedStorage.Viewmodels:GetDescendants()) do
    if ag.Name == "AnimSaves" then
        ag:Destroy()
    end
end
bg.fov.Thickness = 1
bg.fov.NumSides = 100
local bH
local bI = false
aV.Move:Connect(
    function()
        if bg.fov.Position ~= Vector2.new(aV.X, aV.Y + 36) then
            bg.fov.Position = Vector2.new(aV.X, aV.Y + 36)
        end
    end
)
local bJ = false
local function bK(bL)
    local aH, aI, bM = bL:ToOrientation()
    return CFrame.new(bL.Position) * CFrame.Angles(0, aI, 0)
end
local bN =
    bq.RenderStepped:Connect(
    function()
        if bf.Misc.General.Client["No Recoil"].Toggle then
            br.resetaccuracy()
            br.RecoilX = 0
            br.RecoilY = 0
        end
        if bf.Misc.General.Client["Infinite Crouch"].Toggle then
            if br.crouchcooldown ~= 0 then
                br.crouchcooldown = 0
            end
        end
        local bO = bk.PlayerGui.GUI.Crosshairs.Crosshair
        bO.LeftFrame.Size = UDim2.new(0, 10, 0, 2)
        bO.RightFrame.Size = UDim2.new(0, 10, 0, 2)
        bO.TopFrame.Size = UDim2.new(0, 2, 0, 10)
        bO.BottomFrame.Size = UDim2.new(0, 2, 0, 10)
        for af, bP in pairs(bO:GetChildren()) do
            if string.find(bP.Name, "Frame") then
                if bP.BorderSizePixel ~= 0 then
                    bP.BorderSizePixel = 0
                end
                if bf.Misc.General.Crosshair["Enabled"].Toggle then
                    if bf.Misc.General.Crosshair["Override Border"].Toggle then
                        if bP.BorderSizePixel ~= 1 then
                            bP.BorderSizePixel = 1
                        end
                        bP.BorderColor3 = color(bf.Misc.General.Crosshair["Override Border"].Color)
                    end
                end
            end
        end
        if bf.Misc.General.Crosshair["Enabled"].Toggle then
            if bf.Misc.General.Crosshair["Override Length"].Toggle then
                bO.LeftFrame.Size = UDim2.new(0, bf.Misc.General.Crosshair.Length.Slider, 0, 2)
                bO.RightFrame.Size = UDim2.new(0, bf.Misc.General.Crosshair.Length.Slider, 0, 2)
                bO.TopFrame.Size = UDim2.new(0, 2, 0, bf.Misc.General.Crosshair.Length.Slider)
                bO.BottomFrame.Size = UDim2.new(0, 2, 0, bf.Misc.General.Crosshair.Length.Slider)
            end
        end
        if
            bk.Character and bk.Character:FindFirstChild("Humanoid") and
                bk.Character:FindFirstChild("Humanoid").Health > 0
         then
            if bf.Misc.General.Movement["Jump Bug"].Toggle and bf.Misc.General.Movement["Jump Bug"].Active then
                if
                    bk.Character.Humanoid.JumpPower ~= bf.Misc.General.Movement["Jump Bug Type"].Dropdown == "Normal" and
                        24 or
                        30
                 then
                    bk.Character.Humanoid.JumpPower =
                        bf.Misc.General.Movement["Jump Bug Type"].Dropdown == "Normal" and 24 or 30
                end
            else
                if bk.Character.Humanoid.JumpPower ~= 20 then
                    bk.Character.Humanoid.JumpPower = 20
                end
            end
            if bf.Misc.General.Client["Infinite Cash"].Toggle then
                if bk.Cash.Value ~= 4999 then
                    bk.Cash.Value = 4999
                end
            end
            coroutine.wrap(
                function()
                    if bf.Misc.General.Movement["Edge Jump"].Toggle and bf.Misc.General.Movement["Edge Jump"].Active then
                        if
                            bk.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and
                                bk.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping
                         then
                            wait(0.04)
                            if
                                bk.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and
                                    bk.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping
                             then
                                bk.Character.Humanoid:ChangeState("Jumping")
                            end
                        end
                    end
                end
            )()
        end
    end
)
local bQ =
    bq.RenderStepped:Connect(
    function()
        local bR = tick()
        local bS = cam.CFrame
        local bT = bS.LookVector.Y
        if
            bk.Character and bk.Character:FindFirstChild("Humanoid") and
                bk.Character:FindFirstChild("Humanoid").Health > 0
         then
            local bU = bT
            local bV = bk.Character.HumanoidRootPart
            local bW = bV.Position
            local bX = -math.atan2(bS.LookVector.Z, bS.LookVector.X) + math.rad(-90)
            if bf.Rage["Anti-Aim"].Angles.Enabled.Toggle and bf.Rage["Anti-Aim"].Angles.Enabled.Active then
                if bf.Rage["Anti-Aim"].Angles["Yaw Jitter"].Toggle and bf.Rage["Anti-Aim"].Angles["Yaw Jitter"].Active then
                    bJ = not bJ
                else
                    bJ = false
                end
                if bk.Character.Humanoid.AutoRotate ~= false then
                    bk.Character.Humanoid.AutoRotate = false
                end
                if bf.Rage["Anti-Aim"].Angles.Pitch.Dropdown ~= "Off" then
                    bU =
                        bf.Rage["Anti-Aim"].Angles.Pitch.Dropdown == "Up" and 1 or
                        bf.Rage["Anti-Aim"].Angles.Pitch.Dropdown == "Zero" and 0 or
                        bf.Rage["Anti-Aim"].Angles.Pitch.Dropdown == "Down" and -1
                    if bf.Rage["Anti-Aim"].Angles["Pitch Extend"].Toggle then
                        bU =
                            bf.Rage["Anti-Aim"].Angles.Pitch.Dropdown == "Up" and 1.2 or
                            bf.Rage["Anti-Aim"].Angles.Pitch.Dropdown == "Zero" and 0 or
                            bf.Rage["Anti-Aim"].Angles.Pitch.Dropdown == "Down" and -1.2
                    end
                end
                if bf.Rage["Anti-Aim"].Extra["Disable On E"].Toggle and aW:IsKeyDown(Enum.KeyCode.E) then
                    bU = bT
                    bV.CFrame =
                        CFrame.new(bW) *
                        CFrame.Angles(0, -math.atan2(bS.LookVector.Z, bS.LookVector.X) + math.rad(270), 0)
                else
                    if bJ then
                        local bL
                        local bY = math.rad(-bf.Rage["Anti-Aim"].Angles["Jitter Offset"].Slider)
                        if bf.Rage["Anti-Aim"].Angles["Yaw Base"].Dropdown == "Targets" then
                            local bZ
                            local b_ = 9999
                            for af, c0 in pairs(bj:GetPlayers()) do
                                if
                                    c0.Character and c0.Character:FindFirstChild("Humanoid") and
                                        c0.Character:FindFirstChild("Humanoid").Health > 0 and
                                        c0.Team ~= bk.Team
                                 then
                                    local c1, c2 = cam:WorldToViewportPoint(c0.Character.HumanoidRootPart.Position)
                                    local c3 = (Vector2.new(c1.X, c1.Y) - Vector2.new(aV.X, aV.Y)).Magnitude
                                    if b_ > c3 then
                                        bZ = c0.Character.HumanoidRootPart
                                        b_ = c3
                                    end
                                end
                            end
                            if bZ ~= nil then
                                bL = CFrame.new(bW, bZ.Position) * CFrame.Angles(0, bY, 0)
                            end
                        end
                        if bL == nil then
                            bL = CFrame.new(bW) * CFrame.Angles(0, bX + bY, 0)
                        end
                        bV.CFrame = bK(bL)
                    else
                        local bL
                        local bY = math.rad(-bf.Rage["Anti-Aim"].Angles["Yaw Offset"].Slider)
                        if
                            bf.Rage["Anti-Aim"]["Manual Keys"]["Manual Left"].Toggle and
                                bf.Rage["Anti-Aim"]["Manual Keys"]["Manual Left"].Active
                         then
                            bY = math.rad(90)
                        end
                        if
                            bf.Rage["Anti-Aim"]["Manual Keys"]["Manual Right"].Toggle and
                                bf.Rage["Anti-Aim"]["Manual Keys"]["Manual Right"].Active
                         then
                            bY = math.rad(-90)
                        end
                        if bf.Rage["Anti-Aim"].Angles["Yaw Base"].Dropdown == "Targets" then
                            local bZ
                            local b_ = 9999
                            for af, c0 in pairs(bj:GetPlayers()) do
                                if
                                    c0.Character and c0.Character:FindFirstChild("Humanoid") and
                                        c0.Character:FindFirstChild("Humanoid").Health > 0 and
                                        c0.Team ~= bk.Team
                                 then
                                    local c1, c2 = cam:WorldToViewportPoint(c0.Character.HumanoidRootPart.Position)
                                    local c3 = (Vector2.new(c1.X, c1.Y) - Vector2.new(aV.X, aV.Y)).Magnitude
                                    if b_ > c3 then
                                        bZ = c0.Character.HumanoidRootPart
                                        b_ = c3
                                    end
                                end
                            end
                            if bZ ~= nil then
                                bL = CFrame.new(bW, bZ.Position) * CFrame.Angles(0, bY, 0)
                            end
                        end
                        if bL == nil then
                            bL = CFrame.new(bW) * CFrame.Angles(0, bX + bY, 0)
                        end
                        bV.CFrame = bK(bL)
                    end
                end
            else
                bV.CFrame =
                    CFrame.new(bW) * CFrame.Angles(0, -math.atan2(bS.LookVector.Z, bS.LookVector.X) + math.rad(270), 0)
                pcall(
                    function()
                        bk.Character.Humanoid.AutoRotate = false
                    end
                )
            end
            if bf.Rage["Anti-Aim"].Exploits["Break Head"].Toggle then
                if bk.Character:FindFirstChild("FakeHead") then
                    bk.Character.FakeHead:Destroy()
                end
                if bk.Character:FindFirstChild("HeadHB") then
                    bk.Character.HeadHB:Destroy()
                end
            end
            game.ReplicatedStorage.Events.ControlTurn:FireServer(
                bU,
                bk.Character:FindFirstChild("Climbing") and true or false
            )
        end
    end
)
local c4 =
    bq.Heartbeat:Connect(
    function()
        local bR = tick()
        if br.gun ~= "none" and br.gun ~= nil then
            if bg.fov.Radius ~= bE(bC(br.gun.Name)).Aimbot["Field of View"].Slider then
                bg.fov.Radius = bE(bC(br.gun.Name)).Aimbot["Field of View"].Slider
            end
        else
            if bg.fov.Radius ~= bf.Legit.General.Aimbot["Field of View"].Slider then
                bg.fov.Radius = bf.Legit.General.Aimbot["Field of View"].Slider
            end
        end
        if
            bg.fov.Visible ~= bf.Legit.General.Aimbot.Enabled.Toggle and bf.Legit.General.Aimbot["Draw FOV"].Toggle or
                false
         then
            bg.fov.Visible =
                bf.Legit.General.Aimbot.Enabled.Toggle and bf.Legit.General.Aimbot["Draw FOV"].Toggle or false
        end
        bH = nil
        if
            br.gun ~= "none" and br.gun ~= "melee" and not uiopen and bk.Character and
                bk.Character:FindFirstChild("Humanoid") and
                bk.Character:FindFirstChild("Humanoid").Health > 0 and
                workspace:FindFirstChild("Map") and
                workspace.Map:FindFirstChild("Clips")
         then
            local c5 = bE(bC(br.gun.Name))
            if
                bf.Legit.General.Aimbot.Enabled.Toggle and bf.Legit.General.Aimbot.Enabled.Active or
                    c5["Silent Aim"].Enabled.Toggle
             then
                local c6 = {bk.Character, cam, workspace.Map.Clips, workspace.Map.SpawnPoints}
                local b_ = 9999
                if c5.Aimbot["Through Smokes"].Toggle then
                    table.insert(c6, workspace.Ray_Ignore)
                end
                if
                    c5.Aimbot["Flash Check"].Toggle and not bk.PlayerGui.Blnd.Enabled or
                        c5.Aimbot["Flash Check"].Toggle and bk.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 or
                        not c5.Aimbot["Flash Check"].Toggle
                 then
                    for af, c0 in pairs(bj:GetPlayers()) do
                        if
                            c0.Character and c0.Character:FindFirstChild("Humanoid") and
                                c0.Character:FindFirstChild("Humanoid").Health > 0
                         then
                            if
                                bf.Legit.General.Aimbot["Forcefield Check"].Toggle and
                                    c0.Character:FindFirstChildOfClass("ForceField") == nil or
                                    not bf.Legit.General.Aimbot["Forcefield Check"].Toggle
                             then
                                if
                                    bf.Legit.General.Aimbot.FFA.Toggle or
                                        not bf.Legit.General.Aimbot.FFA.Toggle and c0.Team ~= bk.Team
                                 then
                                    local c1, c2 = cam:WorldToViewportPoint(c0.Character.HumanoidRootPart.Position)
                                    local c3 = (Vector2.new(c1.X, c1.Y) - Vector2.new(aV.X, aV.Y)).Magnitude
                                    if c2 and c3 < c5.Aimbot["Field of View"].Slider then
                                        if
                                            bf.Legit.General.Aimbot.Selection.Dropdown == "Closest to Crosshair" and
                                                b_ > c3 or
                                                bf.Legit.General.Aimbot.Selection.Dropdown == "Lowest Distance" and
                                                    b_ >
                                                        (c0.Character.HumanoidRootPart.Position -
                                                            bk.Character.HumanoidRootPart.Position).Magnitude or
                                                bf.Legit.General.Aimbot.Selection.Dropdown == "Lowest Health" and
                                                    b_ > c0.Character.Humanoid.Health
                                         then
                                            local c7 = c0.Character.Head
                                            c7 =
                                                c5.Aimbot.Hitbox.Dropdown == "Head" and c0.Character.Head or
                                                c5.Aimbot.Hitbox.Dropdown == "Chest" and c0.Character.UpperTorso
                                            if c5.Aimbot.Hitbox.Dropdown == "Closest" then
                                                local c8 = cam:WorldToViewportPoint(c0.Character.Head.Position)
                                                local c9 = cam:WorldToViewportPoint(c0.Character.UpperTorso.Position)
                                                local ca = (Vector2.new(c8.X, c8.Y) - Vector2.new(aV.X, aV.Y)).Magnitude
                                                local cb = (Vector2.new(c9.X, c9.Y) - Vector2.new(aV.X, aV.Y)).Magnitude
                                                c7 = ca < cb and c0.Character.Head or c0.Character.UpperTorso
                                            end
                                            if bf.Legit.General.Aimbot["Through Walls"].Toggle then
                                                bH = c7
                                                b_ =
                                                    bf.Legit.General.Aimbot.Selection.Dropdown == "Closest to Crosshair" and
                                                    c3 or
                                                    bf.Legit.General.Aimbot.Selection.Dropdown == "Lowest Distance" and
                                                        (c0.Character.HumanoidRootPart.Position -
                                                            bk.Character.HumanoidRootPart.Position).Magnitude or
                                                    bf.Legit.General.Aimbot.Selection.Dropdown == "Lowest Health" and
                                                        c0.Character.Humanoid.Health
                                            else
                                                local cc =
                                                    Ray.new(
                                                    cam.CFrame.Position,
                                                    (c7.Position - cam.CFrame.Position).unit * 500
                                                )
                                                local cd, c1 =
                                                    workspace:FindPartOnRayWithIgnoreList(cc, c6, false, true)
                                                if cd and cd:FindFirstAncestor(c0.Name) then
                                                    bH = c7
                                                    b_ =
                                                        bf.Legit.General.Aimbot.Selection.Dropdown ==
                                                        "Closest to Crosshair" and
                                                        c3 or
                                                        bf.Legit.General.Aimbot.Selection.Dropdown == "Lowest Distance" and
                                                            (c0.Character.HumanoidRootPart.Position -
                                                                bk.Character.HumanoidRootPart.Position).Magnitude or
                                                        bf.Legit.General.Aimbot.Selection.Dropdown == "Lowest Health" and
                                                            c0.Character.Humanoid.Health
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                if bH ~= nil and bf.Legit.General.Aimbot.Enabled.Toggle and bf.Legit.General.Aimbot.Enabled.Active then
                    if c5.Aimbot["Delay Aim"].Toggle and not br.DISABLED or not c5.Aimbot["Delay Aim"].Toggle then
                        if
                            c5.Aimbot["Aim Center"].Toggle or
                                not c5.Aimbot["Aim Center"].Toggle and aV.Target and
                                    not aV.Target.Parent:FindFirstChild(bH)
                         then
                            local ce = cam:WorldToScreenPoint(bH.Position)
                            local c1 = Vector2.new(ce.X - aV.X, ce.Y - aV.Y)
                            mousemoverel(c1.x / c5.Aimbot.Smoothing.Slider, c1.y / c5.Aimbot.Smoothing.Slider)
                        end
                    end
                end
            end
            if c5.Triggerbot.Enabled.Toggle and bf.Legit.General.Triggerbot.Enabled.Active and not bI then
                if math.random(0, 100) <= c5.Triggerbot["Shoot Chance"].Slider then
                    if
                        c5.Aimbot["Flash Check"].Toggle and not bk.PlayerGui.Blnd.Enabled or
                            c5.Aimbot["Flash Check"].Toggle and bk.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 or
                            not c5.Aimbot["Flash Check"].Toggle
                     then
                        local cf = aV.Target
                        if cf and cf.Parent and bj:GetPlayerFromCharacter(cf.Parent) then
                            if
                                bf.Legit.General.Aimbot.FFA.Toggle or
                                    not bf.Legit.General.Aimbot.FFA.Toggle and
                                        bj:GetPlayerFromCharacter(cf.Parent).Team ~= bk.Team
                             then
                                coroutine.wrap(
                                    function()
                                        bI = true
                                        local c0 = bj:GetPlayerFromCharacter(cf.Parent)
                                        wait(c5.Triggerbot.Delay.Slider / 1000)
                                        repeat
                                            bq.RenderStepped:Wait()
                                            if not br.DISABLED then
                                                br.firebullet()
                                            end
                                        until aV.Target == nil or c0 ~= bj:GetPlayerFromCharacter(aV.Target.Parent)
                                        bI = false
                                    end
                                )()
                            end
                        end
                    end
                end
            end
        end
    end
)
workspace.Ray_Ignore.ChildAdded:Connect(
    function(ag)
        if ag.Name == "Fires" then
            ag.ChildAdded:Connect(
                function(cg)
                    if bf.Visuals.Other.World["Fire Radius"].Toggle then
                        cg.Transparency = bf.Visuals.Other.World["Fire Radius"].Transparency
                        cg.Color = color(bf.Visuals.Other.World["Fire Radius"].Color)
                    end
                end
            )
        end
        if ag.Name == "Smokes" then
            ag.ChildAdded:Connect(
                function(ch)
                    ch.Material = Enum.Material.ForceField
                    if bf.Visuals.Other.World["Smoke Radius"].Toggle then
                        ch.Transparency = bf.Visuals.Other.World["Smoke Radius"].Transparency
                        ch.Color = color(bf.Visuals.Other.World["Smoke Radius"].Color)
                    end
                end
            )
        end
    end
)
if workspace.Ray_Ignore:FindFirstChild("Fires") then
    workspace.Ray_Ignore:FindFirstChild("Fires").ChildAdded:Connect(
        function(cg)
            if bf.Visuals.Other.World["Fire Radius"].Toggle then
                cg.Transparency = bf.Visuals.Other.World["Fire Radius"].Transparency
                cg.Color = color(bf.Visuals.Other.World["Fire Radius"].Color)
            end
        end
    )
end
if workspace.Ray_Ignore:FindFirstChild("Smokes") then
    workspace.Ray_Ignore:FindFirstChild("Smokes").ChildAdded:Connect(
        function(ch)
            ch.Material = Enum.Material.ForceField
            if bf.Visuals.Other.World["Smoke Radius"].Toggle then
                ch.Transparency = bf.Visuals.Other.World["Smoke Radius"].Transparency
                ch.Color = color(bf.Visuals.Other.World["Smoke Radius"].Color)
            end
        end
    )
end
local ci = math.sin(tick() * 4) + 1 / 2
bl.__index =
    newcclosure(
    function(self, G)
        if
            not checkcaller() and G == "WalkSpeed" and self:IsA("Humanoid") and bk.Character ~= nil and
                bk.Character:FindFirstChild("Humanoid")
         then
            if
                bf.Misc.General.Movement["Bunny Hop"].Toggle and
                    game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space)
             then
                bk.Character.Humanoid.WalkSpeed = bf.Misc.General.Movement["Speed"].Slider
                bk.Character.Humanoid.Jump = true
                return 3
            end
            if bf.Rage["Anti-Aim"].Exploits["Slow Walk"].Toggle and bf.Rage["Anti-Aim"].Exploits["Slow Walk"].Active then
                return 3
            end
        end
        return bn(self, G)
    end
)
bl.__newindex =
    newcclosure(
    function(self, bc, j)
        if self:IsA("Humanoid") and bc == "CameraOffset" then
            if bf.Rage["Anti-Aim"].Exploits["Fake Duck"].Toggle then
                j = Vector3.new(0, 0.05, 0)
            end
        end
        if self:IsA("Humanoid") and bc == "WalkSpeed" and not checkcaller() then
            if bf.Rage["Anti-Aim"].Exploits["Slow Walk"].Toggle and bf.Rage["Anti-Aim"].Exploits["Slow Walk"].Active then
                j = bk.Character.Humanoid.WalkSpeed * bf.Rage["Anti-Aim"].Exploits["Walk Speed"].Slider / 100
            end
        end
        if self:IsA("Humanoid") and bc == "JumpPower" and not checkcaller() then
            if bf.Misc.General.Movement["Jump Bug"].Toggle and bf.Misc.General.Movement["Jump Bug"].Active then
                if
                    bk.Character.Humanoid.JumpPower ~= bf.Misc.General.Movement["Jump Bug Type"].Dropdown == "Normal" and
                        24 or
                        30
                 then
                    j = bf.Misc.General.Movement["Jump Bug Type"].Dropdown == "Normal" and 24 or 30
                end
            end
        end
        return bo(self, bc, j)
    end
)
local cj
local ck
local cl = {}
local cm = false
local cn = {
    ["Head"] = 4,
    ["FakeHead"] = 4,
    ["HeadHB"] = 4,
    ["UpperTorso"] = 1,
    ["LowerTorso"] = 1.25,
    ["LeftUpperArm"] = 1,
    ["LeftLowerArm"] = 1,
    ["LeftHand"] = 1,
    ["RightUpperArm"] = 1,
    ["RightLowerArm"] = 1,
    ["RightHand"] = 1,
    ["LeftUpperLeg"] = 0.75,
    ["LeftLowerLeg"] = 0.75,
    ["LeftFoot"] = 0.75,
    ["RightUpperLeg"] = 0.75,
    ["RightLowerLeg"] = 0.75,
    ["RightFoot"] = 0.75
}
local k = false
local co = br.firebullet
br.firebullet = function(self, ...)
    local cp = {...}
    if bf.Rage.Aimbot.Exploits["Gun Manipulation"].Toggle and bf.Rage.Aimbot.Exploits["Gun Manipulation"].Active then
        if bf.Rage.Aimbot.Exploits["Manipulation Type"].Dropdown == "Double Tap" then
            if cp[1] ~= "dt" then
                game:GetService("RunService").RenderStepped:Wait()
                co("dt")
            end
        end
    end
    return co(self, unpack(cp))
end
local cq =
    bq.RenderStepped:Connect(
    function()
        cl = {}
        ck = nil
        if bf.Rage.Aimbot.Exploits["Gun Manipulation"].Toggle and bf.Rage.Aimbot.Exploits["Gun Manipulation"].Active then
            if bf.Rage.Aimbot.Exploits["Manipulation Type"].Dropdown == "Rapid Fire" then
                br.DISABLED = false
            end
        end
        if
            bf.Rage.Aimbot.Exploits["Kill All"].Toggle and bf.Rage.Aimbot.Exploits["Kill All"].Active and
                br.gun ~= "none" and
                bk.Character ~= nil
         then
            for af, c0 in pairs(bj:GetPlayers()) do
                if c0.Character and c0.Team ~= bk.Team then
                    local cr = c0.Character.Head
                    local cs = c0.Character.Head.CFrame.p
                    local ct = br.gun.Name
                    local cu = 4096
                    local cv = bk.Character.Gun
                    local cw = 15
                    local cx = false
                    local cy = false
                    local cz = Vector3.new(0, 0, 0)
                    local cA = 16868
                    local cB = Vector3.new(0, 0, 0)
                    game:GetService("ReplicatedStorage").Events.HitPart:FireServer(
                        cr,
                        cs,
                        ct,
                        cu,
                        cv,
                        oh6,
                        oh7,
                        cw,
                        cx,
                        cy,
                        cz,
                        cA,
                        cB
                    )
                end
            end
        end
        if
            bf.Rage.Aimbot.Aimbot.Enabled.Toggle and bf.Rage.Aimbot.Aimbot.Enabled.Active and
                workspace:FindFirstChild("Map") and
                bk.Character and
                bk.Character:FindFirstChild("Humanoid") and
                bk.Character:FindFirstChild("Humanoid").Health > 0 and
                br.gun ~= "none"
         then
            cj =
                bf.Rage.Aimbot.Aimbot.Origin.Dropdown == "Camera" and cam.CFrame.p or
                bk.Character.HumanoidRootPart.CFrame.p + Vector3.new(0, 1.4, 0)
            local cC = bf.Rage.Aimbot.Aimbot["Minimum Damage"].Slider
            if
                bf.Rage.Aimbot.Other["Minimum Damage Override"].Toggle and
                    bf.Rage.Aimbot.Other["Minimum Damage Override"].Active
             then
                cC = bf.Rage.Aimbot.Other["Minimum Damage"].Slider
            end
            for af, c0 in pairs(bj:GetPlayers()) do
                if
                    bf.Rage.Aimbot.Exploits["Gun Manipulation"].Toggle and
                        bf.Rage.Aimbot.Exploits["Gun Manipulation"].Active
                 then
                    if bf.Rage.Aimbot.Exploits["Manipulation Type"].Dropdown == "Rapid Fire" then
                        br.DISABLED = false
                    end
                end
                if
                    c0.Character ~= nil and c0.Character:FindFirstChildOfClass("ForceField") == nil and
                        c0.Team ~= bk.Team and
                        c0.Team ~= "TTT"
                 then
                    if
                        c0.Character:FindFirstChild("UpperTorso") ~= nil and
                            c0.Character:FindFirstChild("Humanoid") ~= nil and
                            not br.DISABLED
                     then
                        local c6 = {unpack(collision)}
                        table.insert(c6, workspace.Map:WaitForChild("Clips"))
                        table.insert(c6, workspace.Map:WaitForChild("SpawnPoints"))
                        table.insert(c6, bk.Character)
                        table.insert(c6, cam)
                        table.insert(c6, c0.Character.HumanoidRootPart)
                        if c0.Character:FindFirstChild("BackC4") then
                            table.insert(c6, c0.Character.BackC4)
                        end
                        if c0.Character:FindFirstChild("Gun") then
                            table.insert(c6, c0.Character.Gun)
                        end
                        local cD = {}
                        if
                            bf.Rage.Aimbot.Other["Hitbox Override"].Toggle and
                                bf.Rage.Aimbot.Other["Hitbox Override"].Active
                         then
                            for af, c7 in ipairs(bf.Rage.Aimbot.Other["Overrided Hitboxes"].Jumbobox) do
                                if table.find(bf.Rage.Aimbot.Hitboxes["Hitbox Helpers"].Jumbobox, "Smart") then
                                    if c7 == "Head" then
                                        if c0.Character:FindFirstChild("HeadHB") ~= nil then
                                            table.insert(cD, c0.Character[c7])
                                        end
                                    else
                                        table.insert(cD, c0.Character[c7])
                                    end
                                else
                                    table.insert(cD, c0.Character[c7])
                                end
                            end
                        else
                            for af, c7 in ipairs(bf.Rage.Aimbot.Hitboxes.Hitboxes.Jumbobox) do
                                if table.find(bf.Rage.Aimbot.Hitboxes["Hitbox Helpers"].Jumbobox, "Smart") then
                                    if c7 == "Head" then
                                        if c0.Character:FindFirstChild("HeadHB") ~= nil then
                                            table.insert(cD, c0.Character[c7])
                                        end
                                    else
                                        table.insert(cD, c0.Character[c7])
                                    end
                                else
                                    table.insert(cD, c0.Character[c7])
                                end
                            end
                        end
                        if table.find(cD, c0.Character.LowerTorso) then
                            for bc, j in pairs(cD) do
                                if j == c0.Character.LowerTorso then
                                    table.remove(cD, bc)
                                end
                            end
                            table.insert(cD, c0.Character.LowerTorso)
                        end
                        if table.find(cD, c0.Character.UpperTorso) then
                            for bc, j in pairs(cD) do
                                if j == c0.Character.UpperTorso then
                                    table.remove(cD, bc)
                                end
                            end
                            table.insert(cD, c0.Character.UpperTorso)
                        end
                        if bf.Rage.Aimbot.Other["Prefer Body"].Toggle and bf.Rage.Aimbot.Other["Prefer Body"].Active then
                            if table.find(cD, c0.Character.Head) then
                                for bc, j in pairs(cD) do
                                    if j == c0.Character.Head then
                                        table.remove(cD, bc)
                                    end
                                end
                                table.insert(cD, c0.Character.Head)
                            end
                        end
                        for af, c7 in ipairs(cD) do
                            local cE = {unpack(c6)}
                            if bf.Rage.Aimbot.Aimbot["Automatic Penetration"].Toggle then
                                local cF = {}
                                local cG, cd, c1
                                local cH = br.gun.Penetration.Value * 0.01
                                local cc = Ray.new(cj, (c7.CFrame.p - cj).unit * math.clamp(br.gun.Range.Value, 1, 300))
                                repeat
                                    cd, c1 = workspace:FindPartOnRayWithIgnoreList(cc, cE, false, true)
                                    if cd ~= nil and cd.Parent ~= nil then
                                        if
                                            cd and cn[cd.Name] ~= nil and
                                                (table.find(bf.Rage.Aimbot.Hitboxes["Hitbox Helpers"].Jumbobox, "Safe") and
                                                    c7 == cd or
                                                    cd:FindFirstAncestor(c0.Name))
                                         then
                                            cG = cd
                                        else
                                            table.insert(cE, cd)
                                            table.insert(cF, {["Position"] = c1, ["Hit"] = cd})
                                        end
                                    end
                                until cG ~= nil or #cF >= 4 or cd == nil
                                if cG ~= nil and cn[cG.Name] ~= nil then
                                    if #cF == 0 then
                                        local cI = br.gun.DMG.Value * cn[cG.Name]
                                        if c0:FindFirstChild("Kevlar") then
                                            if string.find(cG.Name, "Head") then
                                                if c0:FindFirstChild("Helmet") then
                                                    cI = cI / 100 * br.gun.ArmorPenetration.Value
                                                end
                                            else
                                                cI = cI / 100 * br.gun.ArmorPenetration.Value
                                            end
                                        end
                                        cI =
                                            cI * br.gun.RangeModifier.Value / 100 ^ ((cj - cd.Position).Magnitude / 500)
                                        if cI >= cC then
                                            ck = cG
                                            cl = cE
                                            if not bf.Rage.Aimbot.Aimbot["Silent Aim"].Toggle then
                                                cam.CFrame = CFrame.new(cam.CFrame.Position, cd.Position)
                                            end
                                            if bf.Rage.Aimbot.Aimbot["Automatic Fire"].Toggle then
                                                cm = true
                                                br.firebullet()
                                                cm = false
                                                if bf.Rage.Aimbot.Aimbot["Automatic Fire Type"].Dropdown == "HitPart" then
                                                    local cJ = {
                                                        [1] = ck,
                                                        [2] = ck.Position,
                                                        [3] = bk.Character.EquippedTool.Value,
                                                        [4] = 100,
                                                        [5] = bk.Character.Gun,
                                                        [8] = 1,
                                                        [9] = false,
                                                        [10] = false,
                                                        [11] = Vector3.new(),
                                                        [12] = 100,
                                                        [13] = Vector3.new()
                                                    }
                                                    game.ReplicatedStorage.Events.HitPart:FireServer(unpack(cJ))
                                                end
                                            end
                                            break
                                        end
                                    else
                                        local cK = 0
                                        local cL = 1
                                        for bc = 1, #cF do
                                            local at = cF[bc]
                                            local bZ = at["Hit"]
                                            local c1 = at["Position"]
                                            local cM = 1
                                            if bZ.Material == Enum.Material.DiamondPlate then
                                                cM = 3
                                            end
                                            if
                                                bZ.Material == Enum.Material.CorrodedMetal or
                                                    bZ.Material == Enum.Material.Metal or
                                                    bZ.Material == Enum.Material.Concrete or
                                                    bZ.Material == Enum.Material.Brick
                                             then
                                                cM = 2
                                            end
                                            if
                                                bZ.Name == "Grate" or bZ.Material == Enum.Material.Wood or
                                                    bZ.Material == Enum.Material.WoodPlanks
                                             then
                                                cM = 0.1
                                            end
                                            if bZ.Name == "nowallbang" then
                                                cM = 100
                                            end
                                            if bZ:FindFirstChild("PartModifier") then
                                                cM = bZ.PartModifier.Value
                                            end
                                            if
                                                bZ.Transparency == 1 or bZ.CanCollide == false or bZ.Name == "Glass" or
                                                    bZ.Name == "Cardboard"
                                             then
                                                cM = 0
                                            end
                                            local cN = (c7.CFrame.p - c1).unit * math.clamp(br.gun.Range.Value, 1, 100)
                                            local cc = Ray.new(c1 + cN * 1, cN * -2)
                                            local af, cO = workspace:FindPartOnRayWithWhitelist(cc, {bZ}, true)
                                            local cP = (cO - c1).Magnitude
                                            cP = cP * cM
                                            cK = math.min(cH, cK + cP)
                                            cL = 1 - cK / cH
                                        end
                                        local cI = br.gun.DMG.Value * cn[cG.Name] * cL
                                        if c0:FindFirstChild("Kevlar") then
                                            if string.find(cG.Name, "Head") then
                                                if c0:FindFirstChild("Helmet") then
                                                    cI = cI / 100 * br.gun.ArmorPenetration.Value
                                                end
                                            else
                                                cI = cI / 100 * br.gun.ArmorPenetration.Value
                                            end
                                        end
                                        cI =
                                            cI * br.gun.RangeModifier.Value / 100 ^ ((cj - cd.Position).Magnitude / 500)
                                        if cI >= cC then
                                            ck = cG
                                            cl = cE
                                            if not bf.Rage.Aimbot.Aimbot["Silent Aim"].Toggle then
                                                cam.CFrame = CFrame.new(cam.CFrame.Position, cd.Position)
                                            end
                                            if bf.Rage.Aimbot.Aimbot["Automatic Fire"].Toggle then
                                                cm = true
                                                br.firebullet()
                                                cm = false
                                                if bf.Rage.Aimbot.Aimbot["Automatic Fire Type"].Dropdown == "HitPart" then
                                                    local cJ = {
                                                        [1] = ck,
                                                        [2] = ck.Position,
                                                        [3] = bk.Character.EquippedTool.Value,
                                                        [4] = 100,
                                                        [5] = bk.Character.Gun,
                                                        [8] = 1,
                                                        [9] = false,
                                                        [10] = false,
                                                        [11] = Vector3.new(),
                                                        [12] = 100,
                                                        [13] = Vector3.new()
                                                    }
                                                    game.ReplicatedStorage.Events.HitPart:FireServer(unpack(cJ))
                                                end
                                            end
                                            break
                                        end
                                    end
                                end
                            else
                                local cc = Ray.new(cj, (c7.CFrame.p - cj).unit * math.clamp(br.gun.Range.Value, 1, 300))
                                local cd, c1 = workspace:FindPartOnRayWithIgnoreList(cc, c6, false, true)
                                if
                                    cd and cn[cd.Name] ~= nil and
                                        (table.find(bf.Rage.Aimbot.Hitboxes["Hitbox Helpers"].Jumbobox, "Safe") and
                                            c7 == cd or
                                            cd:FindFirstAncestor(c0.Name))
                                 then
                                    local cI = br.gun.DMG.Value * cn[cd.Name]
                                    if c0:FindFirstChild("Kevlar") then
                                        if string.find(cd.Name, "Head") then
                                            if c0:FindFirstChild("Helmet") then
                                                cI = cI / 100 * br.gun.ArmorPenetration.Value
                                            end
                                        else
                                            cI = cI / 100 * br.gun.ArmorPenetration.Value
                                        end
                                    end
                                    cI = cI * br.gun.RangeModifier.Value / 100 ^ ((cj - cd.Position).Magnitude / 500)
                                    if cI >= cC then
                                        ck = cd
                                        cl = cE
                                        if not bf.Rage.Aimbot.Aimbot["Silent Aim"].Toggle then
                                            cam.CFrame = CFrame.new(cam.CFrame.Position, cd.Position)
                                        end
                                        if bf.Rage.Aimbot.Aimbot["Automatic Fire"].Toggle then
                                            cm = true
                                            br.firebullet()
                                            cm = false
                                            if bf.Rage.Aimbot.Aimbot["Automatic Fire Type"].Dropdown == "HitPart" then
                                                local cJ = {
                                                    [1] = ck,
                                                    [2] = ck.Position,
                                                    [3] = bk.Character.EquippedTool.Value,
                                                    [4] = 100,
                                                    [5] = bk.Character.Gun,
                                                    [8] = 1,
                                                    [9] = false,
                                                    [10] = false,
                                                    [11] = Vector3.new(),
                                                    [12] = 100,
                                                    [13] = Vector3.new()
                                                }
                                                game.ReplicatedStorage.Events.HitPart:FireServer(unpack(cJ))
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
)
bl.__namecall =
    newcclosure(
    function(self, ...)
        local cQ = tostring(getnamecallmethod())
        local cp = {...}
        if cQ == "SetPrimaryPartCFrame" and self.Name == "Arms" then
            if
                bf.Visuals.Other.Self["Third Person"].Toggle and bf.Visuals.Other.Self["Third Person"].Active and
                    bk.Character ~= nil
             then
                cp[1] = cp[1] * CFrame.new(99, 99, 99)
            else
                if bf.Visuals.Other.Viewmodel.Enabled.Toggle then
                    cp[1] =
                        cp[1] *
                        CFrame.new(
                            bf.Visuals.Other.Viewmodel.X.Slider / 100,
                            bf.Visuals.Other.Viewmodel.Y.Slider / 100,
                            bf.Visuals.Other.Viewmodel.Z.Slider / 100
                        ) *
                        CFrame.Angles(0, 0, bf.Visuals.Other.Viewmodel.Roll.Slider / 100)
                end
            end
        end
        if
            cQ == "FindPartOnRayWithIgnoreList" and cp[2][7] ~= nil and br.gun ~= nil and br.gun ~= "none" and
                br.gun ~= "melee" and
                not checkcaller()
         then
            if bf.Misc.General.Client["No Spread"].Toggle then
                cp[1] = Ray.new(cam.CFrame.p, cam.CFrame.LookVector * 500)
            end
            local c5 = bE(bC(br.gun.Name))
            if bH ~= nil and c5["Silent Aim"].Enabled.Toggle then
                if math.random(0, 100) <= c5["Silent Aim"]["Hit Chance"].Slider then
                    local c7 =
                        math.random(0, 100) <= c5["Silent Aim"]["Head Chance"].Slider and bH.Parent.Head or
                        bH.Parent.UpperTorso
                    cp[1] =
                        Ray.new(
                        cam.CFrame.p,
                        (c7.Position - cam.CFrame.p).unit * math.clamp(br.gun.Range.Value, 5, 400)
                    )
                end
            end
        end
        if
            cQ == "FindPartOnRayWithIgnoreList" and cp[2][7] ~= nil and br.gun ~= nil and br.gun ~= "none" and
                br.gun ~= "melee"
         then
            if ck ~= nil then
                if not checkcaller() or cm then
                    cj =
                        bf.Rage.Aimbot.Aimbot.Origin.Dropdown == "Camera" and cam.CFrame.p or
                        bk.Character.HumanoidRootPart.CFrame.p + Vector3.new(0, 1.4, 0)
                    cp[1] = Ray.new(cj, (ck.Position - cj).unit * math.clamp(br.gun.Range.Value, 5, 400))
                end
            end
        end
        if cQ == "FireServer" and self.Name == "ControlTurn" then
            if not checkcaller() then
                return
            end
        end
        if cQ == "FireServer" and self.Name == "FallDamage" then
            if
                bf.Misc.General.Movement["Jump Bug"].Toggle and bf.Misc.General.Movement["Jump Bug"].Active or
                    bf.Misc.General.General["No Fall Damage"].Toggle
             then
                return
            end
        end
        if self.Name == "BURNME" then
            if bf.Misc.General.General["No Fire Damage"].Toggle then
                return
            end
        end
        if cQ == "LoadAnimation" and self.Name == "Humanoid" then
            if bf.Rage["Anti-Aim"].Extra["Slide Walk"].Toggle then
                if string.find(cp[1].Name, "Walk") or string.find(cp[1].Name, "Run") then
                    cp[1] = bp
                end
            end
            if bf.Rage["Anti-Aim"].Extra["No Animations"].Toggle then
                cp[1] = bp
            end
        end
        if cQ == "FireServer" and self.Name == "HitPart" then
            if bf.Misc.General.Client["Damage Multiplier"].Toggle then
                cp[8] = cp[8] * bf.Misc.General.Client["Multiplier"].Slider
            end
            if bf.Rage.Aimbot.Exploits["Bullet Redirection"].Toggle and ck ~= nil then
                cp[1] = ck
                cp[2] = ck.Position
            end
        end
        if cQ == "FireServer" and self.Name == "HitPart" then
            if bf.Visuals.Other.World["Bullet Tracers"].Toggle then
                coroutine.wrap(
                    function()
                        local cR = Instance.new("Part")
                        cR.Anchored = true
                        cR.CanCollide = false
                        cR.Material = Enum.Material.ForceField
                        cR.Color = color(bf.Visuals.Other.World["Bullet Tracers"].Color)
                        cR.Transparency = bf.Visuals.Other.World["Bullet Tracers"].Transparency
                        cR.Size = Vector3.new(0.1, 0.1, (bk.Character.Head.Position - cp[2]).magnitude)
                        cR.CFrame = CFrame.new(bk.Character.Head.Position, cp[2]) * CFrame.new(0, 0, -cR.Size.Z / 2)
                        cR.Parent = workspace.Debris
                        a:Tween(
                            cR,
                            TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {Transparency = 1}
                        )
                        wait(1.5)
                        cR:Destroy()
                    end
                )()
            end
            if bf.Visuals.Other.World["Impacts"].Toggle then
                coroutine.wrap(
                    function()
                        local cd = Instance.new("Part")
                        cd.Transparency = 1
                        cd.Anchored = true
                        cd.CanCollide = false
                        cd.Size = Vector3.new(0.3, 0.3, 0.3)
                        cd.Position = cp[2]
                        local cS = Instance.new("SelectionBox")
                        cS.LineThickness = 0
                        cS.SurfaceTransparency = 0.5
                        cS.Color3 = color(bf.Visuals.Other.World["Impacts"].Color)
                        cS.SurfaceColor3 = color(bf.Visuals.Other.World["Impacts"].Color)
                        cS.Transparency = bf.Visuals.Other.World["Impacts"].Transparency
                        cS.Parent = cd
                        cS.Adornee = cd
                        cd.Parent = workspace.Debris
                        wait(6)
                        cd:Destroy()
                    end
                )()
            end
            if bf.Visuals.Other.World["Hit Chams"].Toggle then
                coroutine.wrap(
                    function()
                        if
                            bj:GetPlayerFromCharacter(cp[1].Parent) and
                                bj:GetPlayerFromCharacter(cp[1].Parent).Team ~= bk.Team
                         then
                            for af, c7 in pairs(cp[1].Parent:GetChildren()) do
                                if c7:IsA("BasePart") or c7.Name == "Head" then
                                    coroutine.wrap(
                                        function()
                                            local bZ = Instance.new("Part")
                                            bZ.CFrame = c7.CFrame
                                            bZ.Anchored = true
                                            bZ.CanCollide = false
                                            bZ.Material = Enum.Material.ForceField
                                            bZ.Color = color(bf.Visuals.Other.World["Hit Chams"].Color)
                                            bZ.Transparency = bf.Visuals.Other.World["Hit Chams"].Transparency
                                            bZ.Size = c7.Size
                                            bZ.Parent = workspace.Debris
                                            a:Tween(
                                                bZ,
                                                TweenInfo.new(
                                                    bf.Visuals.Other.World["Hit Chams Life Time"].Slider / 1000,
                                                    Enum.EasingStyle.Quad,
                                                    Enum.EasingDirection.Out
                                                ),
                                                {Transparency = 1}
                                            )
                                            wait(bf.Visuals.Other.World["Hit Chams Life Time"].Slider / 1000)
                                            bZ:Destroy()
                                        end
                                    )()
                                end
                            end
                        end
                    end
                )()
            end
        end
        return bm(self, unpack(cp))
    end
)
local cT = {}
local cU = {}
do
    cU.default = {
        Line = {Thickness = 1.5, Color = Color3.fromRGB(255, 255, 255), Visible = false},
        Text = {
            Size = 13,
            Center = true,
            Outline = true,
            Font = Drawing.Fonts.Plex,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
        Square = {Thickness = 1.5, Filled = false, Color = Color3.fromRGB(255, 255, 255), Visible = false}
    }
    function cU.create(aq)
        local cV = Drawing.new(aq)
        for bc, j in pairs(cU.default[aq]) do
            cV[bc] = j
        end
        return cV
    end
    function cU.add(c0)
        if not cT[c0] then
            cT[c0] = {
                Name = cU.create("Text"),
                Weapon = cU.create("Text"),
                BoxOutline = cU.create("Square"),
                Box = cU.create("Square"),
                HealthOutline = cU.create("Line"),
                Health = cU.create("Line")
            }
        end
    end
    for af, c0 in pairs(bj:GetPlayers()) do
        if c0 ~= bk then
            cU.add(c0)
        end
    end
    bj.PlayerAdded:Connect(cU.add)
    bj.PlayerRemoving:Connect(
        function(c0)
            wait()
            if cT[c0] then
                for bc, j in pairs(cT[c0]) do
                    for cW, cX in pairs(j) do
                        if j then
                            j:Remove()
                        end
                    end
                end
                cT[c0] = nil
            end
        end
    )
end
bq.RenderStepped:Connect(
    function()
        for af, c0 in pairs(bj:GetPlayers()) do
            local aA = cT[c0]
            if aA ~= nil then
                if
                    c0 ~= bk and c0.Character and c0.Character:FindFirstChild("Humanoid") and
                        c0.Character:FindFirstChild("HumanoidRootPart") and
                        c0.Team ~= "TTT" and
                        bf.Visuals.ESP.Drawing.Enabled.Toggle and
                        bf.Visuals.ESP.Drawing.Enabled.Active and
                        (table.find(bf.Visuals.ESP.Drawing.Players.Jumbobox, "Enemies") and c0.Team ~= bk.Team or
                            table.find(bf.Visuals.ESP.Drawing.Players.Jumbobox, "Teammates") and c0.Team == bk.Team)
                 then
                    local bV = c0.Character.HumanoidRootPart
                    local c1, cY = cam:WorldToViewportPoint(bV.Position)
                    local a6 =
                        (cam:WorldToViewportPoint(bV.Position - Vector3.new(0, 3, 0)).Y -
                        cam:WorldToViewportPoint(bV.Position + Vector3.new(0, 2.6, 0)).Y) /
                        2
                    aA.Box.Color = color(bf.Visuals.ESP.Drawing["Bounding Box"].Color)
                    aA.Box.Size = Vector2.new(a6 * 1.5, a6 * 1.9)
                    aA.Box.Position = Vector2.new(c1.X - a6 * 1.5 / 2, c1.Y - a6 * 1.6 / 2)
                    aA.BoxOutline.Color = Color3.fromRGB(0, 0, 0)
                    aA.BoxOutline.Thickness = 3
                    aA.BoxOutline.Size = aA.Box.Size
                    aA.BoxOutline.Position = aA.Box.Position
                    aA.Health.Color = color(bf.Visuals.ESP.Drawing["Health"].Color)
                    aA.Health.From = Vector2.new(aA.Box.Position.X - 5, aA.Box.Position.Y + aA.Box.Size.Y)
                    aA.Health.To =
                        Vector2.new(
                        aA.Health.From.X,
                        aA.Health.From.Y -
                            c0.Character.Humanoid.Health / c0.Character.Humanoid.MaxHealth * aA.Box.Size.Y
                    )
                    aA.HealthOutline.Color = Color3.fromRGB(0, 0, 0)
                    aA.HealthOutline.Thickness = 3
                    aA.HealthOutline.From = Vector2.new(aA.Health.From.X, aA.Box.Position.Y + aA.Box.Size.Y + 1)
                    aA.HealthOutline.To = Vector2.new(aA.Health.From.X, aA.Health.From.Y - 1 * aA.Box.Size.Y - 1)
                    aA.Name.Color = color(bf.Visuals.ESP.Drawing["Name"].Color)
                    aA.Name.Text = c0.Name
                    aA.Name.Position = Vector2.new(aA.Box.Size.X / 2 + aA.Box.Position.X, aA.Box.Position.Y - 16)
                    aA.Name.Font = Drawing.Fonts[bf.Visuals.ESP.Drawing.Font.Dropdown]
                    aA.Name.Outline = table.find(bf.Visuals.ESP.Drawing.Outlines.Jumbobox, "Text") and true or false
                    aA.Name.Size = bf.Visuals.ESP.Drawing["Font Size"].Slider
                    aA.Weapon.Color = color(bf.Visuals.ESP.Drawing["Weapon"].Color)
                    aA.Weapon.Text = c0.Character.EquippedTool.Value
                    aA.Weapon.Position =
                        Vector2.new(aA.Box.Size.X / 2 + aA.Box.Position.X, aA.Box.Size.Y + aA.Box.Position.Y + 1)
                    aA.Weapon.Font = Drawing.Fonts[bf.Visuals.ESP.Drawing.Font.Dropdown]
                    aA.Weapon.Outline = table.find(bf.Visuals.ESP.Drawing.Outlines.Jumbobox, "Text") and true or false
                    aA.Weapon.Size = bf.Visuals.ESP.Drawing["Font Size"].Slider
                    if bf.Visuals.ESP.Drawing["Bounding Box"].Toggle then
                        aA.Box.Visible = cY
                        if table.find(bf.Visuals.ESP.Drawing.Outlines.Jumbobox, "Drawings") then
                            aA.BoxOutline.Visible = cY
                        else
                            aA.BoxOutline.Visible = false
                        end
                    else
                        aA.Box.Visible = false
                        aA.BoxOutline.Visible = false
                    end
                    if bf.Visuals.ESP.Drawing["Health"].Toggle then
                        aA.Health.Visible = cY
                        if table.find(bf.Visuals.ESP.Drawing.Outlines.Jumbobox, "Drawings") then
                            aA.HealthOutline.Visible = cY
                        else
                            aA.HealthOutline.Visible = false
                        end
                    else
                        aA.Health.Visible = false
                        aA.HealthOutline.Visible = false
                    end
                    aA.Name.Visible = bf.Visuals.ESP.Drawing.Name.Toggle and cY or false
                    aA.Weapon.Visible = bf.Visuals.ESP.Drawing.Weapon.Toggle and cY or false
                else
                    aA.Box.Visible = false
                    aA.BoxOutline.Visible = false
                    aA.HealthOutline.Visible = false
                    aA.Health.Visible = false
                    aA.Name.Visible = false
                    aA.Weapon.Visible = false
                end
            end
        end
    end
)
do
    local cZ = Instance.new("Folder", workspace)
    cZ.Name = "Fakelag"
    local tick = 0
    coroutine.wrap(
        function()
            while wait(1 / 16) do
                if
                    bf.Misc.General.Fakelag.Enabled.Toggle and bk.Character and
                        bk.Character:FindFirstChild("HumanoidRootPart") and
                        bk.Character:FindFirstChild("Humanoid")
                 then
                    local c_ =
                        table.find(bf.Misc.General.Fakelag["Trigger Conditions"].Jumbobox, "Standing") and
                        bk.Character.Humanoid.MoveDirection.Magnitude == 0 or
                        table.find(bf.Misc.General.Fakelag["Trigger Conditions"].Jumbobox, "Moving") and
                            bk.Character.Humanoid.MoveDirection.Magnitude > 0 or
                        table.find(bf.Misc.General.Fakelag["Trigger Conditions"].Jumbobox, "On Target") and ck ~= nil or
                        false
                    local d0 =
                        c_ and bf.Misc.General.Fakelag["Trigger Limit"].Slider or bf.Misc.General.Fakelag.Limit.Slider
                    tick = math.clamp(tick + 1, 0, d0)
                    if tick == (bf.Misc.General.Fakelag.Amount.Dropdown == "Static" and d0 or math.random(1, d0)) then
                        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
                        cZ:ClearAllChildren()
                        tick = 0
                    else
                        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(1)
                        if bf.Misc.General.Fakelag["Visualize Lag"].Toggle and cZ:FindFirstChild("UpperTorso") == nil then
                            for af, c7 in pairs(bk.Character:GetChildren()) do
                                if c7:IsA("BasePart") and c7.Name ~= "HumanoidRootPart" then
                                    local bZ = Instance.new("Part")
                                    bZ.CFrame = c7.CFrame
                                    bZ.Anchored = true
                                    bZ.CanCollide = false
                                    bZ.Material = Enum.Material.ForceField
                                    bZ.Color = color(bf.Misc.General.Fakelag["Visualize Lag"].Color)
                                    bZ.Name = c7.Name
                                    bZ.Transparency = 0
                                    bZ.Size = c7.Size
                                    bZ.Parent = cZ
                                end
                            end
                        end
                    end
                else
                    tick = 0
                    cZ:ClearAllChildren()
                    game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
                end
                if not bf.Misc.General.Fakelag["Visualize Lag"].Toggle then
                    cZ:ClearAllChildren()
                end
            end
        end
    )()
end
local d1 =
    bq.Heartbeat:Connect(
    function()
        local bR = tick()
        ci = (math.clamp(math.sin(tick() * 4), 0, 0.9) + 1) / 2
        do
            local d2 =
                bf.Visuals.Other.Self["Third Person"].Toggle and bf.Visuals.Other.Self["Third Person"].Active and
                bk.Status.Alive.Value == true and
                bf.Visuals.Other.Self["Distance"].Slider / 40 or
                0
            if
                bk.CameraMinZoomDistance ~= d2 and bk.Character ~= nil and bk.Character:FindFirstChild("Head") and
                    bk.Character:FindFirstChild("UpperTorso")
             then
                bk.CameraMaxZoomDistance = d2
                bk.CameraMinZoomDistance = d2
            end
            local d3 = not bf.Visuals.Other.World["No Flash"].Toggle
            if bk.PlayerGui.Blnd.Enabled ~= d3 then
                bk.PlayerGui.Blnd.Enabled = d3
            end
        end
        if bf.Visuals.Other.Self["Override FOV"].Toggle and bk.Character ~= nil then
            if
                bf.Visuals.Other.Self["On Scope"].Toggle or
                    not bf.Visuals.Other.Self["On Scope"].Toggle and not bk.Character:FindFirstChild("AIMING")
             then
                if cam.FieldOfView ~= bf.Visuals.Other.Self["FOV Amount"].Slider then
                    cam.FieldOfView = bf.Visuals.Other.Self["FOV Amount"].Slider
                end
            end
        end
        if bf.Visuals.Other.World["No Scope"].Toggle then
            bk.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = 1
            bk.PlayerGui.GUI.Crosshairs.Scope.Scope.ImageTransparency = 1
            bk.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.ImageTransparency = 1
            bk.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.Blur.ImageTransparency = 1
            bk.PlayerGui.GUI.Crosshairs.Frame1.Transparency = 1
            bk.PlayerGui.GUI.Crosshairs.Frame2.Transparency = 1
            bk.PlayerGui.GUI.Crosshairs.Frame3.Transparency = 1
            bk.PlayerGui.GUI.Crosshairs.Frame4.Transparency = 1
        else
            bk.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = 0
            bk.PlayerGui.GUI.Crosshairs.Scope.Scope.ImageTransparency = 0
            bk.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.ImageTransparency = 0
            bk.PlayerGui.GUI.Crosshairs.Scope.Scope.Blur.Blur.ImageTransparency = 0
            bk.PlayerGui.GUI.Crosshairs.Frame1.Transparency = 0
            bk.PlayerGui.GUI.Crosshairs.Frame2.Transparency = 0
            bk.PlayerGui.GUI.Crosshairs.Frame3.Transparency = 0
            bk.PlayerGui.GUI.Crosshairs.Frame4.Transparency = 0
        end
        if bf.Visuals.Other.World["Time Of Day"].Toggle then
            if bs.TimeOfDay ~= bf.Visuals.Other.World["Time"].Slider then
                bs.TimeOfDay = bf.Visuals.Other.World["Time"].Slider
            end
        else
            if bs.TimeOfDay ~= 12 then
                bs.TimeOfDay = 12
            end
        end
        for af, c0 in pairs(bj:GetPlayers()) do
            if
                c0.Character ~= nil and c0.Character:FindFirstChild("HumanoidRootPart") and
                    c0.Character:FindFirstChild("UpperTorso") and
                    c0.Character:FindFirstChild("Humanoid")
             then
                local d4 = c0.Character:FindFirstChild("HumanoidRootPart")
                if c0.Team ~= bk.Team and c0.Team ~= "TTT" then
                    for af, bZ in pairs(c0.Character:GetChildren()) do
                        if table.find(be, bZ.Name) then
                            if not bZ:FindFirstChild("Visible") and not bZ:FindFirstChild("Invisible") then
                                local d5 = Instance.new("BoxHandleAdornment")
                                d5.Name = "Visible"
                                d5.Adornee = bZ
                                d5.Color3 = Color3.fromRGB(0, 255, 0)
                                d5.AlwaysOnTop = false
                                d5.ZIndex = 5
                                d5.Transparency = 0.8
                                d5.Size = bZ.Size + Vector3.new(0.05, 0.05, 0.05)
                                d5.Parent = bZ
                                local d5 = Instance.new("BoxHandleAdornment")
                                d5.Name = "Invisible"
                                d5.Adornee = bZ
                                d5.Color3 = Color3.fromRGB(255, 255, 255)
                                d5.AlwaysOnTop = true
                                d5.ZIndex = 1
                                d5.Transparency = 0.8
                                d5.Size = bZ.Size + Vector3.new(0.03, 0.03, 0.03)
                                d5.Parent = bZ
                            end
                        end
                    end
                end
            end
        end
        if cam:FindFirstChild("Arms") then
            cam.Arms.HumanoidRootPart.Transparency = 1
            if bf.Visuals.ESP.Models["Weapon Chams"].Toggle then
                for af, bZ in pairs(cam.Arms:GetChildren()) do
                    if bZ:IsA("MeshPart") and bZ.Transparency ~= 1 then
                        if bZ.TextureID ~= "" then
                            bZ.TextureID = ""
                        end
                        if bZ.Color ~= color(bf.Visuals.ESP.Models["Weapon Chams"].Color) then
                            bZ.Color = color(bf.Visuals.ESP.Models["Weapon Chams"].Color)
                        end
                        local d6 =
                            bf.Visuals.ESP.Models["Weapon Chams Material"].Dropdown == "Custom" and
                            Enum.Material.SmoothPlastic or
                            bf.Visuals.ESP.Models["Weapon Chams Material"].Dropdown == "Flat" and Enum.Material.Neon or
                            bf.Visuals.ESP.Models["Weapon Chams Material"].Dropdown == "ForceField" and
                                Enum.Material.ForceField or
                            bf.Visuals.ESP.Models["Weapon Chams Material"].Dropdown == "Pulse" and Enum.Material.Neon or
                            Enum.Material.Glass
                        if bZ.Material ~= d6 then
                            bZ.Material = d6
                        end
                        bZ.Transparency =
                            bf.Visuals.ESP.Models["Weapon Chams Material"].Dropdown == "Pulse" and ci or
                            math.clamp(bf.Visuals.ESP.Models["Weapon Chams"].Transparency, 0, 0.99)
                        if bZ.Reflectance ~= bf.Visuals.ESP.Models["Weapon Reflectance"].Slider / 20 then
                            bZ.Reflectance = bf.Visuals.ESP.Models["Weapon Reflectance"].Slider / 20
                        end
                    end
                end
            end
            local ag = cam.Arms:FindFirstChildOfClass("Model")
            for af, bZ in pairs(ag:GetDescendants()) do
                if bf.Visuals.ESP.Models["Arm Chams"].Toggle then
                    if string.find(bZ.Name, "Arm") and bZ:IsA("Part") then
                        bZ.Color = color(bf.Visuals.ESP.Models["Arm Chams"].Color)
                        bZ.Transparency = bf.Visuals.ESP.Models["Arm Chams"].Transparency
                    end
                end
                if bf.Visuals.ESP.Models["Accessory Chams"].Toggle then
                    local d7
                    if string.find(bZ.Name, "Glove") and bZ:IsA("Part") then
                        d7 = game:GetService("ReplicatedStorage").Viewmodels[bZ.Parent.Parent.Name]
                        if bf.Visuals.ESP.Models["Remove Gloves"].Toggle then
                            if bZ.Transparency ~= 1 then
                                bZ.Transparency = 1
                            end
                        else
                            if bZ.Transparency ~= bf.Visuals.ESP.Models["Accessory Chams"].Transparency then
                                bZ.Transparency = bf.Visuals.ESP.Models["Accessory Chams"].Transparency
                            end
                            if bZ.Mesh.VertexColor ~= bF(color(bf.Visuals.ESP.Models["Accessory Chams"].Color)) then
                                bZ.Mesh.VertexColor = bF(color(bf.Visuals.ESP.Models["Accessory Chams"].Color))
                            end
                            if bZ.Color ~= color(bf.Visuals.ESP.Models["Accessory Chams"].Color) then
                                bZ.Color = color(bf.Visuals.ESP.Models["Accessory Chams"].Color)
                            end
                            if bZ.Material ~= Enum.Material.ForceField then
                                bZ.Material = Enum.Material.ForceField
                            end
                            if bf.Visuals.ESP.Models["Accessory Material"].Dropdown == "Custom" then
                                if bZ.Mesh.TextureId ~= "" then
                                    bZ.Mesh.TextureId = ""
                                end
                            else
                                if bZ.Mesh.TextureId ~= d7[bZ.Parent.Name][bZ.Name].Mesh.TextureId then
                                    bZ.Mesh.TextureId = d7[bZ.Parent.Name][bZ.Name].Mesh.TextureId
                                end
                            end
                        end
                    end
                    if string.find(bZ.Name, "Sleeve") and bZ:IsA("Part") then
                        d7 = game:GetService("ReplicatedStorage").Viewmodels[bZ.Parent.Parent.Name]
                        if bf.Visuals.ESP.Models["Remove Sleeves"].Toggle then
                            if bZ.Transparency ~= 1 then
                                bZ.Transparency = 1
                            end
                        else
                            if bZ.Transparency ~= bf.Visuals.ESP.Models["Accessory Chams"].Transparency then
                                bZ.Transparency = bf.Visuals.ESP.Models["Accessory Chams"].Transparency
                            end
                            if bZ.Mesh.VertexColor ~= bF(color(bf.Visuals.ESP.Models["Accessory Chams"].Color)) then
                                bZ.Mesh.VertexColor = bF(color(bf.Visuals.ESP.Models["Accessory Chams"].Color))
                            end
                            if bZ.Color ~= color(bf.Visuals.ESP.Models["Accessory Chams"].Color) then
                                bZ.Color = color(bf.Visuals.ESP.Models["Accessory Chams"].Color)
                            end
                            if bZ.Material ~= Enum.Material.ForceField then
                                bZ.Material = Enum.Material.ForceField
                            end
                            if bf.Visuals.ESP.Models["Accessory Material"].Dropdown == "Custom" then
                                if bZ.Mesh.TextureId ~= "" then
                                    bZ.Mesh.TextureId = ""
                                end
                            else
                                if bZ.Mesh.TextureId ~= d7[bZ.Parent.Name][bZ.Name].Mesh.TextureId then
                                    bZ.Mesh.TextureId = d7[bZ.Parent.Name][bZ.Name].Mesh.TextureId
                                end
                            end
                        end
                    end
                end
            end
        end
    end
)
bj.PlayerAdded:Connect(
    function(d8)
        d8.CharacterAdded:Connect(
            function(d9)
                d9.ChildAdded:Connect(
                    function(ag)
                        wait(1)
                        spawn(
                            function()
                                if ag:IsA("Accessory") then
                                    table.insert(collision, ag)
                                end
                                if ag:IsA("Part") then
                                    spawn(
                                        function()
                                            if ag ~= nil then
                                                if ag.Name ~= "HeadHB" and ag.Name ~= "FakeHead" then
                                                    table.insert(collision, ag)
                                                end
                                            end
                                        end
                                    )
                                end
                            end
                        )
                    end
                )
            end
        )
    end
)
if bk.Character and bk.Character:FindFirstChild("Humanoid") and bk.Character:FindFirstChild("UpperTorso") then
    for af, c0 in pairs(bj:GetPlayers()) do
        if c0.Character ~= nil then
            for af, ag in pairs(c0.Character:GetChildren()) do
                if ag:IsA("Accessory") then
                    table.insert(collision, ag)
                end
                if ag:IsA("Part") then
                    spawn(
                        function()
                            if ag ~= nil then
                                if ag.Name ~= "HeadHB" and ag.Name ~= "FakeHead" then
                                    table.insert(collision, ag)
                                end
                            end
                        end
                    )
                end
            end
        end
    end
end

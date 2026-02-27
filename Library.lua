local Input = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local Library = {
    Theme = {
        BackgroundOutline = Color3.new(0.30, 0.015, 0.015),
        Background = Color3.new(0.1, 0.1, 0.1)
    }
}

getfenv().Objects = {}
getfenv().Options = {}

local ScreenGui__ = Instance.new("ScreenGui")
ScreenGui__.Parent = CoreGui
ScreenGui__.IgnoreGuiInset = true
ScreenGui__.ResetOnSpawn = false

local function CreateObj(Class, Parametrs)
    if not Class or not Parametrs then return end
    local Obj = Instance.new(Class)
    table.insert(getfenv().Objects, Obj)
    for _,p in pairs(Parametrs) do
        Obj[_]=p
    end
end

function Library:CreateWindow(Parametrs)
    if not Parametrs then return end
    if typeof(Parametrs[1]) ~= "string" then return end
    if not Parametrs[2] then return end

    local WindowFrame = CreateObj("Frame",{
        Parent = ScreenGui__,
        Size = UDim2.new(450,0,550,0),
        Position = UDim2.new(0.5,0,0.5,0),
        BackgroundColor3 = Library.Theme.Background,
        BackgroundTransparency = 0,
        Visible = true
    })
end

return Library

--Made by weirdman1221
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

-- Create a new window and set its title and theme
local window = DrRayLibrary:Load("Op Battlegrounds", "Default")

-- Create the first tab with an image ID
local tab1 = DrRayLibrary.newTab("Tab 1", "ImageIdHere")

-- Add elements to the first tab
tab1.newLabel("Main")
tab1.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)
tab1.newToggle("No CD", "On/Off C/D", true, function(toggleState)
    if toggleState then
        Game.Players.LocalPlayer.NoCD.Value=true
        Game.Players.LocalPlayer.NoDashCD.Value=true
    else
        Game.Players.LocalPlayer.NoDashCD.Value=false
        Game.Players.LocalPlayer.NoCD.Value=false
    end
end)

tab1.newToggle("EarlyAccess", "On/Off EarlyAccess", true, function(toggleState)
    if toggleState then
        Game.Players.LocalPlayer.EarlyAccess.Value=true
    else
        Game.Players.LocalPlayer.EarlyAccess.Value=false
    end
end)

tab1.newToggle("NoStun", "On/Off Stun", true, function(toggleState)
    if toggleState then
        Game.Players.LocalPlayer.NoStun.Value=true
    else
        Game.Players.LocalPlayer.NoStun.Value=false
    end
end)

tab1.newToggle("InfAwaken", "On/Off Awaken", true, function(toggleState)
    if toggleState then
        Game.Players.LocalPlayer.infAwaken.Value=true
    else
        Game.Players.LocalPlayer.infAwaken.Value=false
    end
end)

tab1.newInput("Input", "Prints your input.", function(text)
    print("Entered text in Tab 1: " .. text)
end)

-- Create the second tab with a different image ID
local tab2 = DrRayLibrary.newTab("Tab 2", "ImageIdLogoHere")

-- Add elements to the second tab
tab2.newLabel("Hello, this is Tab 2.")
tab2.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)
tab2.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)
tab2.newDropdown("Dropdown", "Select one of these options!", {"water", "dog", "air", "bb", "airplane", "wohhho", "yeay", "delete"}, function(selectedOption)
    print(selectedOption)
end)

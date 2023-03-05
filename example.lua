local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/w1nchyy/ui/main/code.lua"))() -- library, lol

local Window = Library.CreateLib("Script", "RJTheme7") -- creating name and choosing theme

local Tab = Window:NewTab("TabName") -- creating tab where create section
local Section = Tab:NewSection("Section Name") -- creating section where we create a functions

Section:NewButton("Teleport", "Teleporting u", function() -- creating button who teleporting us
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(73, 15, 314)
end)

Section:NewToggle("ToggleText", "ToggleInfo", function(state) -- creating toggle button who can be enabled and disabled
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- creating a slider who changing us speed
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function() -- creating keybind who can do any when you press button(enumcode = button)
	print("You just clicked the bind")
end)

Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption) -- creating dropdown who can change self with the parameter
    print(currentOption)
end)

Section:NewLabel("LabelText") -- creating a label(you can use it how hints


Section:NewTextBox("TextboxText", "TextboxInfo", function(txt) -- creating textbox who can do any items with custom text (for example teleport to players or custom positions
	print(txt)
end)

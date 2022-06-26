if game.PlaceId == 3101667897 then
	


local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
	Name = "Bubble Gum Hub",
	Size = UDim2.fromOffset(600, 400),
	Theme = Mercury.Themes.Dark,
	Link = "https://bubble_gum_hub"
}

GUI:Notification{
	Title = "Welcoming",
	Text = "Welcome To Bubble Gum Hub",
	Duration = 3,
	Callback = function() end
}

GUI:Notification{
	Title = "Game Supported",
	Text = "Legends Of Speed is Supported",
	Duration = 3,
	Callback = function() end
}

local MainTab = GUI:Tab{
	Name = "Main",
	Icon = "rbxassetid://8569322835"
}

MainTab:Button{
	Name = "AutoRebirth (On)",
	Description = nil,
	Callback = function() 
		wait(1)
		_G.Rebirth = false

		while _G.Rebirth == true do wait(5)
			local tbl_main = 
				{
					"rebirthRequest"
				}
			game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(tbl_main))
		end
	end
}

MainTab:Button{
	Name = "AutoRebirth (Off)",
	Description = nil,
	Callback = function() 
		wait(1)
		_G.Rebirth = true

		while _G.Rebirth == true do wait(5)
			local tbl_main = 
				{
					"rebirthRequest"
				}
			game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(tbl_main))
		end
	end
}

MainTab:Button{
	Name = "Hoopfarm (On)",
	Description = nil,
	Callback = function() 
		wait(1)
		_G.Farm3 = false

		while _G.Farm3 == true do wait()
			for i,v in pairs(game.Workspace.Hoops:GetChildren()) do
				v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			end
		end
	end
}

MainTab:Button{
	Name = "Hoopfarm (Off)",
	Description = nil,
	Callback = function() 
		wait(1)
		_G.Farm3 = true

		while _G.Farm3 == true do wait()
			for i,v in pairs(game.Workspace.Hoops:GetChildren()) do
				v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			end
		end
	end
}

MainTab:Button{
	Name = "Gemfarm (On)",
	Description = nil,
	Callback = function() 
		wait(1)
		_G.Farm2 = false

		while _G.Farm2 == true do wait()
			for i,v in pairs(game.Workspace.orbFolder.City:GetChildren()) do
				if v.Name == "Gem" then
					v.outerGem.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				end
			end
		end
	end
}

MainTab:Button{
	Name = "Gemfarm (Off)",
	Description = nil,
	Callback = function() 
		wait(1)
		_G.Farm2 = true

		while _G.Farm2 == true do wait()
			for i,v in pairs(game.Workspace.orbFolder.City:GetChildren()) do
				if v.Name == "Gem" then
					v.outerGem.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				end
			end
		end
	end
}

MainTab:Button{
	Name = "Orbfarm (On)",
	Description = nil,
	Callback = function() 
		wait(1)
		_G.Farm1 = false

		while _G.Farm1 == true do wait()
			for i,v in pairs(game.Workspace.orbFolder.City:GetChildren()) do
				if v.Name ~= "Gem" then
					v.outerOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				end
			end
		end
	end
}

MainTab:Button{
	Name = "Orbfarm (Off)",
	Description = nil,
	Callback = function() 
		wait(1)
		_G.Farm1 = true

		while _G.Farm1 == true do wait()
			for i,v in pairs(game.Workspace.orbFolder.City:GetChildren()) do
				if v.Name ~= "Gem" then
					v.outerOrb.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				end
			end
		end
	end
}
	
	_G.Loll = true
	while _G.Loll == true do wait(0.01)
		for i=1,500 do
			local tbl_main = 
				{
					"collectOrb", 
					"Red Orb", 
					"City"
				}
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(tbl_main))

			local tbl_main = 
				{
					"collectOrb", 
					"Yellow Orb", 
					"City"
				}
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(tbl_main))

			local tbl_main = 
				{
					"collectOrb", 
					"Gem", 
					"City"
				}
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(tbl_main))

			local tbl_main = 
				{
					"collectOrb", 
					"Orange Orb", 
					"City"
				}
			game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(tbl_main))

			local tbl_main = 
				{
					"rebirthRequest"
				}
			game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer(unpack(tbl_main))
		end
	end
end

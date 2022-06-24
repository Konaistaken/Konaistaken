if game.PlaceId == 5154858502 then
	local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

	local GUI = Mercury:Create{
		Name = "Bubble Gum Hub",
		Size = UDim2.fromOffset(600, 400),
		Theme = Mercury.Themes.Dark,
		Link = "https://Bubble_Gum_Hub"
	}
	
	GUI:Notification{
		Title = "Bubble Gum Hub",
		Text = "Enjoy The New UI",
		Duration = 3,
		Callback = function() end
	}

	local MainTab = GUI:Tab{
		Name = "Main",
		Icon = "rbxassetid://8569322835"
	}
	
	local LocalPlayerTab = GUI:Tab{
		Name = "LocalPlayer",
		Icon = "rbxassetid://8569322835"
	}

	MainTab:Textbox{
		Name = "HitBox Size",
		Callback = function(v) 
			_G.HeadSize = v
			_G.Disabled = true

			game:GetService('RunService').RenderStepped:connect(function()
				if _G.Disabled then
					for i,v in next, game:GetService('Players'):GetPlayers() do
						if v.Name ~= game:GetService('Players').LocalPlayer.Name then
							pcall(function()
								v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
								v.Character.HumanoidRootPart.Transparency = 0.7
								v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
								v.Character.HumanoidRootPart.Material = "Neon"
								v.Character.HumanoidRootPart.CanCollide = false
							end)
						end
					end
				end
			end)
		end
	}
	
	MainTab:Button{
		Name = "ESP",
		Description = nil,
		Callback = function() 
			loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20ESP.txt"))()
		end
	}
	
	LocalPlayerTab:Button{
		Name = "Fly",
		Description = nil,
		Callback = function() 
			loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Fly.txt"))()
		end
	}
	
	LocalPlayerTab:Button{
		Name = "Infnite Jump",
		Description = nil,
		Callback = function() 
			loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Jump.txt"))()
		end
	}
	
	
end

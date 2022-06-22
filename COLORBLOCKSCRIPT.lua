if game.PlaceId == 5926001758 then


	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()


	


	local Window = Library.CreateLib("Bubble Gum Hub", "Sentinel")


	


	local Tab = Window:NewTab("Color Block")


	local Credit = Window:NewTab("Credit")


	


	local Section = Tab:NewSection("Color Block")


	local CreditSec = Credit:NewSection("Credit")


	


	Section:NewButton("Fly", "Use [E]", function()


		loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Fly.txt"))()


	end)


	


	Section:NewButton("Noclip","Use [C]",function()


		noclip = false


		game:GetService('RunService').Stepped:connect(function()


			if noclip then


				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)


			end


		end)


		plr = game.Players.LocalPlayer


		mouse = plr:GetMouse()


		mouse.KeyDown:connect(function(key)



			if key == "c" then


				noclip = not noclip


				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)


			end


		end)


	end)


	


	Section:NewButton("Infinite Jump","Use [F]",function()


		_G.infinjump = true



		local Player = game:GetService("Players").LocalPlayer


		local Mouse = Player:GetMouse()


		Mouse.KeyDown:connect(function(k)


			if _G.infinjump then


				if k:byte() == 32 then


					Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")


					Humanoid:ChangeState("Jumping")


					wait(0.1)


					Humanoid:ChangeState("Seated")


				end


			end


		end)



		local Player = game:GetService("Players").LocalPlayer


		local Mouse = Player:GetMouse()


		Mouse.KeyDown:connect(function(k)


			k = k:lower()


			if k == "f" then


				if _G.infinjump == true then


					_G.infinjump = false


				else


					_G.infinjump = true


				end


			end


		end)


	end)


	


	CreditSec:NewLabel("UI By Bubble Gum Softworks")


	


	CreditSec:NewLabel("Scripted By Kona#2466")


end

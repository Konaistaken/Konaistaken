if game.PlaceId == 23578803 then


	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()


	


	local Window = Library.CreateLib("Bubble Gum Hub", "Sentinel")


	


	local Tab = Window:NewTab("Hotel Elephant")


	local TeamChanger = Window:NewTab("Team Changer")


	


	local Section = Tab:NewSection("Hotel Elephan")


	local TeamSec = TeamChanger:NewSection("Team Changer")


	


	Section:NewButton("Server destroyer", "Removes coalitions for all parts, click again to toggle off", function()


		for _, GameFucked in pairs(game:GetDescendants()) do


			game.ReplicatedStorage.DoorOpener:FireServer(GameFucked)


		end


	end)


	


	Section:NewButton("Remove 10000 cash from everyone (even yourself)", "", function()


		Players = game:GetService("Players")


		for i, plr in pairs(Players:GetPlayers()) do


			local ShitAndCum = {


				[1] = false,


				[2] = -10000,


				[3] = "Cash",


				[4] = plr


			}



			game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(ShitAndCum))


		end


	end)


	


	Section:NewButton("Give everyone 10000 cash", "", function()


		Players = game:GetService("Players")


		for i, plr in pairs(Players:GetPlayers()) do


			local ShitAndCum = {


				[1] = false,


				[2] = 10000,


				[3] = "Cash",


				[4] = plr


			}



			game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(ShitAndCum))


		end


	end)


	



	


	Section:NewButton("Give yourself 10000 cash", "", function()   


		local args ={


			[1] = false,


			[2] = 10000,


			[3] = "Cash",


			[4] = game:GetService("Players").LocalPlayer


		}



		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))



	end)


	


	


	


	


	TeamSec:NewButton("Manager", "Changes your team to manager", function()    


		local args = {


			[1] = "Bright green"


		}



		game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))



	end)


	


	TeamSec:NewButton("Shop assistant", "Changes your team to Shop assistant", function()    


		local args = {


			[1] = "Bright blue"


		}



		game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))



	end)


	


	TeamSec:NewButton("Concierge", "Changes your team to Concierge", function()    


		local args = {


			[1] = "Burgundy"


		}



		game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))



	end)


	


	TeamSec:NewButton("Waiter/Waitress", "Changes your team to Waiter/Waitress", function()    


		local args = {


			[1] = "Bright red"


		}



		game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))



	end)


	


	TeamSec:NewButton("Hotel Guest", "Changes your team to Hotel Guest", function()    


		local args = {


			[1] = "Bright yellow"


		}



		game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))



	end)


	


	


end

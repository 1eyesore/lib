function Chat(message)

    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message , "All")

end

Rizz_Lines = loadstring(game:HttpGet("https://raw.githubusercontent.com/CrossGlobe/lib/main/RIZZLER.lua"))()

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZZV-4/get-gf-script-rblx/rizz/RIZZ-ui"))()

local Rizz_Main = lib:Window("Poetic Rizzer V0.1")

Rizz_Main:Label("Main")

Rizz_Main:Dropdown("Line Picker", Rizz_Lines, function(line)

    getgenv().line2 = tostring(line)

end, true)

Rizz_Main:Button("Rizz" , function() 

    Chat(getgenv().line2)

end)

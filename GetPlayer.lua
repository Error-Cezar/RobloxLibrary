function GetPlayer(player: string)
    if not type(player) == "string" then return end
    player = player:lower()
    local Plr = {}
if player == "all" then
        for _, User in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Plr, User)
     end        
elseif player == "others" then
        for _, User in pairs(game:GetService("Players"):GetPlayers()) do
            if User == game:GetService("Players").LocalPlayer then continue end
            table.insert(Plr, User)
        end
else       
    for _, User in pairs(game:GetService("Players"):GetPlayers()) do
           if string.sub(string.lower(User.Name), 0, string.len(player)) == string.lower(player) then
                  table.insert(Plr, User)
           end
    end
end
    return Plr
end 


for _,v in pairs(GetPlayer("all")) do
      print(v.Name)
end      

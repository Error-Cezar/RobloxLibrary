function GetPlayer(player: string)
   for _, User in pairs(game:GetService("Players"):GetPlayers()) do
          if string.sub(string.lower(User.Name), 0, string.len(player)) == string.lower(player) then
                 player = User.Name
          end
   end
end

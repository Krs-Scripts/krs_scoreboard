lib.callback.register('krs_scoreboard:server:getScoreboardData', function(source)

    local xPlayers = ESX.GetPlayers()
  
    local totalPlayers = #xPlayers
    local policeCount = 0
    local mechanicCount = 0
    local ambulanceCount = 0
    local cardealerCount = 0
  
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
  
        if xPlayer then
            local jobName = xPlayer.job.name
            
            if jobName == 'police' then
                policeCount = policeCount + 1
            elseif jobName == 'mechanic' then
                mechanicCount = mechanicCount + 1
            elseif jobName == 'ambulance' then
                ambulanceCount = ambulanceCount + 1
            elseif jobName == 'cardealer' then
                cardealerCount = cardealerCount + 1
            end
        end
    end
  
    return totalPlayers, policeCount, mechanicCount, ambulanceCount, cardealerCount 
end)

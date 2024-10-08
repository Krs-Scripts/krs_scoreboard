
local isScoreboardOpen = false  

local function openScoreboard()
    local players, policeCount, mechanicCount, ambulanceCount, cardealerCount = lib.callback.await('krs_scoreboard:server:getScoreboardData')

    SendNUIMessage({
        action = 'open',
        players = players,
        maxPlayers = cfg.maxPlayers,
        policeCount = policeCount,  
        mechanicCount = mechanicCount,
        ambulanceCount = ambulanceCount,
        cardealerCount = cardealerCount,
    })

    isScoreboardOpen = true
end

local function closeScoreboard()
    SendNUIMessage({
        action = 'close',
    })

    isScoreboardOpen = false
end

if cfg.toggle then
    lib.addKeybind({
        name = 'scoreboard',
        description = 'Open Scoreboard',
        defaultKey = cfg.openKey,
        onPressed = function()
            if isScoreboardOpen then
                closeScoreboard()
            else
                openScoreboard()
            end
        end,
    })
else
    lib.addKeybind({
        name = 'scoreboard',
        description = 'Open Scoreboard',
        defaultKey = cfg.openKey,
        onPressed = openScoreboard,
        onReleased = closeScoreboard
    })
end
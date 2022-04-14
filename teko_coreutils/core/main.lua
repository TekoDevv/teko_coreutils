
nbPlayerTotal = 0
RegisterNetEvent('xr_core:updatePlayerCount')
AddEventHandler('xr_core:updatePlayerCount', function(nbPlayer)
    nbPlayerTotal = nbPlayer
end)

-- Rich presence ↓
Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(774905364763377694)
		SetDiscordRichPresenceAsset('teko_dev_logo')
		SetRichPresence(GetPlayerName(PlayerId()) .." ["..GetPlayerServerId(PlayerId()).."] "  .. nbPlayerTotal .. "/128")

		SetDiscordRichPresenceAction(0, "Rejoindre le discord", "https://discord.gg/tekodev")
		Citizen.Wait(5000)
	end
end)

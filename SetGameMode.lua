mapGameModes = {}

// invididual map overrides
mapGameModes['cs_office_prophunt'] = 'prop_hunt'

// generic map overrides
mapGameModes['ph_'] ='prop_hunt'
mapGameModes['hdn_'] = 'thehidden'
mapGameModes['ovr_'] = 'thehidden'
mapGameModes['ttt_'] ='terrortown'
mapGameModes['gm_'] ="guesswho"
mapGameModes['mu_'] ="murder"
mapGameModes['murder_'] ="murder"
mapGameModes['md_'] ="murder"
mapGameModes['slender_'] = "stopitslender"

map = game.GetMap()
gamemode = gmod.GetGamemode().FolderName

for pre, mode in pairs(mapGameModes) do
	if (string.match(map, pre)) then
		RunConsoleCommand("hostname", "["..gmod.GetGamemode().Name.."]"..hostName)
		if (gamemode != mode) then
			print("changing mode")
			print(mode)
			RunConsoleCommand("gamemode", mode)
			RunConsoleCommand("changelevel", map)
		end
	end
end

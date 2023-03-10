-- # Credits to CrossLeak's

-- # Discord Server - https://discord.gg/rf2Kkwd

-- # Discord Founder - CrossLeaks#0918

-- # You can find support in that discord too!

-- Branding!
local label = 
[[ 
  //
  ||    __          __        _ _   _                _____   _____   ___ __   __
  ||    \ \        / /       (_) | | |         /\   |  __ \ / ____| |__ \\ \ / /
  ||     \ \  /\  / / __ __ _ _| |_| |__      /  \  | |__) | (___      ) |\ V / 
  ||      \ \/  \/ / '__/ _` | | __| '_ \    / /\ \ |  _  / \___ \    / /  > <  
  ||       \  /\  /| | | (_| | | |_| | | |  / ____ \| | \ \ ____) |  / /_ / . \ 
  ||        \/  \/ |_|  \__,_|_|\__|_| |_| /_/    \_\_|  \_\_____/  |____/_/ \_\
  ||
  ||                             Created by WolfKnight
  ||]]

-- Returns the current version set in fxmanifest.lua
function GetCurrentVersion()
	return GetResourceMetadata( GetCurrentResourceName(), "version" )
end 

-- Grabs the latest version number from the web GitHub
PerformHttpRequest( "https://wolfknight98.github.io/wk_wars2x_web/version.txt", function( err, text, headers )
	-- Wait to reduce spam 
	Citizen.Wait( 2000 )

	-- Print the branding!
	print( label )

	-- Get the current resource version 
	local curVer = GetCurrentVersion()
	
	if ( text ~= nil ) then 
		-- Print out the current and latest version 
		print( "  ||    Current version: " .. curVer )
		print( "  ||    Latest recommended version: " .. text .."\n  ||" )
		
		-- If the versions are different, print it out
		if ( text ~= curVer ) then
			print( "  ||    ^1Your Wraith ARS 2X version is outdated, visit the FiveM forum post to get the latest version.\n^0  \\\\\n" )
		else
			print( "  ||    ^2Wraith ARS 2X is up to date!\n^0  ||\n  \\\\\n" )
		end
	else 
		-- In case the version can not be requested, print out an error message
		print( "  ||    ^1There was an error getting the latest version information, if the issue persists contact WolfKnight#8586 on Discord.\n^0  ||\n  \\\\\n" )
	end 
end )
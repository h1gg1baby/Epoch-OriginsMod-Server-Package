# Epoch-OriginsMod-Server-Package - Version 1.0

## Epoch 1.0.7 & Origins Mod 1.8.3 (Taviana 3.0)

No Credit for me. Here, you see the list, you must send Credit to.

Special Credit to MigSDev5 for inspirations. [GitHub repo](https://github.com/MigSDev5/Epoch_origins_pack)

- Tested with infiStar Admin Panel.

Have FUN!

## Used mods:

DZAI 2.2.4 - AI Addon for Epoch 1.0.7 | [GitHub repo](https://github.com/oiad/DZAI)

WICKED AI 2.2.7 | [GitHub repo](https://github.com/f3cuk/WICKED-AI)

ESSV3 | [GitHub repo](https://github.com/AirwavesMan/ESSV3)

epoch-right-click-actions for Epoch 1.0.7+ | [GitHub repo](https://github.com/AirwavesMan/epoch-right-click-actions)

deployAnything for Epoch 1.0.7+ | [GitHub repo](https://github.com/oiad/deployAnything)

Advanced-Gem-Crafting | [GitHub repo](https://github.com/Schalldampfer/Advanced-Gem-crafting)

OriginsBandage | [GitHub repo](https://github.com/Schalldampfer/OriginsBandage)

Virtual Garage for Epoch 1.0.7 | [GitHub repo](https://github.com/oiad/virtualGarage)

Vehicle Key Changer for Epoch 1.0.7 | [GitHub repo](https://github.com/oiad/vkc)

TakeClothes | [GitHub repo](https://github.com/oiad/TakeClothes)
 
Service Points for Epoch 1.0.7 | [GitHub repo](https://github.com/oiad/service_points)

Epoch-Trader-Catalog | [GitHub repo](https://github.com/ch0c/trader-catalogue)

Epoch-Recipes | [GitHub repo](https://github.com/ch0c/epoch-recipes)

safe_zones | [GitHub repo](https://github.com/BigEgg17) | Used edited Version from https://pastebin.com/aSsP1vjZ

Bury and butcher bodies for Epoch 1.0.7 | [GitHub repo](https://github.com/oiad/buryBodies)

Remote Vehicle Locking/Engine Status and kick out non group members. | [GitHub repo](https://github.com/oiad/remoteVehicle)

BTC_Logistic_Modified_Epoch_Version | [GitHub repo](https://github.com/MigSDev5/BTC_Logistic_Modified_Epoch_Version)
(forked from Sandbird/BTC_Logistic_Modified_Epoch_Version)

## Custom Tradercities

I added custom traders! Taviana-Zoo, Antonovka, Ilya, Shtangrad, Aliencamp, Sevastopol (Thx to Gorgy for Map Addons)

## (WAI) Custom static events with rewards ;-)

1. Bandit Camp
2. SectorB

## Known problem: 

### Origins-Status-Menu must be hidden.

Users, who join the server, gets a "blood.paa-error". The error must be confirmed. Then the user can toggle with the key "F3" the Origins-Status-Menu for hiding.
This setting will be saved in the client "ArmA 2 Profile".

## Install:

1. Copy the DayZ_Epoch_13.Taviana folder (or *.pbo / use "PBO tool" for packing) to your Arma2 OA\MPMissions folder

	1.1 Enabling or disableing your own settings: dayz_code\configVariables.sqf

2. Copy the dayz_server.pbo folder to your Arma 2 OA@dayz_epoch_server\addons folder

3. The file "HiveExt.dll" is custom! For using "Virtual Garage", you must change it. So, replace the offical HiveExt.dll! You can find it in my package.
	Attention: Look in the area "mySQL database setup fresh install" at https://github.com/oiad/virtualGarage for more Install instructions. 

4. Import the SQL\virtualGarage.sql into your database

5. Replace the Battleye-filters on your server with the package files.

6. Copy the Bikey-Key "OriginsMod.info_by_Hades_1.8.3.bikey" into your server key folder.

7. Mod serversettings for start order: ca, @originsmod, @dayz_epoch, @dayz_epoch_server

## infiStar

If you use infiStar then deactivate the following setting in your dayz_code\configVariables.sqf

Set it from "1" to "0"

like this:

```
dayz_antihack = 0;
```

## You use ESSV3 & InfiStar?

You have a Problem at spawning with HALO? Clients spawn left down the map into water?

Then use the following fix. Credits to Cherdenko for fixing that bug | [klick me!](https://epochmod.com/forum/topic/43012-release-essv3-enhanced-spawn-selection-updated-for-107/?do=findComment&comment=288727)

Look at your AH.sqf in your dayz_server.pbo (infiSTAR folder). Open that file and search for:

```
					_driver = driver _curVeh;
						_aidriver = false;
						if(!isNull _driver)then
						{
							if(!isPlayer _driver)then
							{
								_aidriver = true;
								
								player setVectorUp [0,0,1];
								player setVelocity [0,0,0];
								player setPosATL _lastPos;
							};
						};
						if(_aidriver)exitWith{hint 'Bad boys, bad boys whatcha gonna do? Whatcha gonna do when they come for you?';systemchat 'AI Drivers not allowed!';}; 
```

Delete it or comment out like:

```
/*
					_driver = driver _curVeh;
						_aidriver = false;
						if(!isNull _driver)then
						{
							if(!isPlayer _driver)then
							{
								_aidriver = true;
								
								player setVectorUp [0,0,1];
								player setVelocity [0,0,0];
								player setPosATL _lastPos;
							};
						};
						if(_aidriver)exitWith{hint 'Bad boys, bad boys whatcha gonna do? Whatcha gonna do when they come for you?';systemchat 'AI Drivers not allowed!';};
*/
```



## Extra/optional: 

You don`t want to use any launcher? Then use "Start - Oripoch.bat". Set your own Arma2-path and set your IP with server-port. Dubbleklick to start.

Serverstart with "Steamlink":

```
steam://run/33930//-connect=99.999.999.99%20-port=2302%20-mod=EXPANSION;@OriginsMod;@DayZ_Epoch;%20-nosplash%20-world=empty%20-nopause
```

with password usage:

```
steam://run/33930//-connect=99.999.999.99%20-port=2302%20-PASSWORD=password%20-mod=EXPANSION;@OriginsMod;@DayZ_Epoch;%20-nosplash%20-world=empty%20-nopause
```

## Contact

seppo{at}posteo.de | No support for used mods! Send your Server-IP. I will visit you! ;-)

## Licences

Note the respective licenses of the files from the other GitHub Repositories. Thx to at all publishers and [EpochModTeam](https://github.com/EpochModTeam/DayZ-Epoch)

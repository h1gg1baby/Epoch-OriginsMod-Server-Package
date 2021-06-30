// For DayZ Epoch
// EPOCH CONFIG VARIABLES START //
#include "dayz_code\configVariables.sqf" // Don't remove this line

// Server only settings
if (isServer) then {
	dayZ_instance = 11; //Instance ID of this server
	dayz_POIs = false; //Adds Point of Interest map additions (negatively impacts FPS)
	MaxDynamicDebris = 700; // Max number of random road blocks to spawn around the map
	MaxVehicleLimit = 400; // Max number of random vehicles to spawn around the map
	spawnArea = 2500; // Distance around markers to find a safe spawn position
	spawnShoremode = 1; // Random spawn locations  1 = on shores, 0 = inland
	EpochEvents = [ //[year,month,day of month, minutes,name of file - .sqf] If minutes is set to -1, the event will run once immediately after server start.
		//["any","any","any","any",-1,"Infected_Camps"], // (negatively impacts FPS)
		["any","any","any","any",-1,"Care_Packages"],
		["any","any","any","any",-1,"CrashSites"]
	];
};

// Client only settings
if (!isDedicated) then {
	dayz_antihack = 0; // DayZ Antihack / 1 = enabled // 0 = disabled
	dayZ_serverName = ""; //Shown to all players in the bottom left of the screen (country code + server number)
	dayz_enableRules = true; //Enables a nice little news/rules feed on player login (make sure to keep the lists quick).
	DZE_R3F_WEIGHT = true; // Enable R3F weight. Players carrying too much will be overburdened and forced to move slowly.
};

// Settings for both server and client
dayz_REsec = 1; // DayZ RE Security / 1 = enabled // 0 = disabled
DZE_PlayerZed = true; // Enable spawning as a player zombie when players die with infected status
// EPOCH CONFIG VARIABLES END //

enableRadio false;
enableSentences false;
//setTerrainGrid 50;
//setViewDistance 3000; 

diag_log 'dayz_preloadFinished reset';
dayz_preloadFinished=nil;
onPreloadStarted "diag_log [diag_tickTime,'onPreloadStarted']; dayz_preloadFinished = false;";
onPreloadFinished "diag_log [diag_tickTime,'onPreloadFinished']; dayz_preloadFinished = true;";
with uiNameSpace do {RscDMSLoad=nil;}; // autologon at next logon

if (!isDedicated) then {
	enableSaving [false, false];
	startLoadingScreen ["","RscDisplayLoadCustom"];
	dayz_progressBarValue = 0;
	dayz_loadScreenMsg = localize 'str_login_missionFile';
	progress_monitor = [] execVM "\z\addons\dayz_code\system\progress_monitor.sqf";
	0 cutText ['','BLACK',0];
	0 fadeSound 0;
	0 fadeMusic 0;
};

initialized = false;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\variables.sqf";
dayz_progressBarValue = 0.05;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";
dayz_progressBarValue = 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
dayz_progressBarValue = 0.15;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";
dayz_progressBarValue = 0.25;
call compile preprocessFileLineNumbers "dayz_code\system\mission\taviana.sqf"; //Add trader city objects locally on every machine early
call compile preprocessFileLineNumbers "scripts\deployAnything\init.sqf";
call compile preprocessFileLineNumbers "scripts\clickActions\config.sqf";
execVM "scripts\safe_zones.sqf";
initialized = true;

if (dayz_REsec == 1) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\REsec.sqf";};

if (isServer) then {
	if (dayz_POIs) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\chernarus\poi\init.sqf";};
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\dynamic_vehicle.sqf";
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\server_monitor.sqf";
	execVM "\z\addons\dayz_server\traders\taviana.sqf"; //Add trader agents
	call compile preprocessFileLineNumbers "maps\milbasekameni.sqf";
	//Get the server to setup what waterholes are going to be infected and then broadcast to everyone.
	if (dayz_infectiousWaterholes) then {execVM "\z\addons\dayz_code\system\mission\chernarus\infectiousWaterholes\init.sqf";};
	
	// Lootable objects from CfgTownGeneratorDefault.hpp
	if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\system\mission\chernarus\MainLootableObjects.sqf"; };
};

if (!isDedicated) then {
	call compile preprocessFileLineNumbers "dayz_code\system\mission\server_traders\taviana.sqf";
	if (toLower worldName in ["chernarus","chernarus_winter"]) then {
		execVM "\z\addons\dayz_code\system\mission\chernarus\hideGlitchObjects.sqf";
	};
	
	// Enables Plant lib fixes
	execVM "\z\addons\dayz_code\system\antihack.sqf";
	
	if (dayz_townGenerator) then {execVM "\z\addons\dayz_code\compile\client_plantSpawner.sqf";};
	execFSM "\z\addons\dayz_code\system\player_monitor.fsm";
	execVM "scripts\servicePoints\init.sqf";
	call compile preprocessFileLineNumbers "spawn\init.sqf";
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	//[600,.15,30] execVM "\z\addons\dayz_code\compile\fn_chimney.sqf"; // Smoking chimney effects.
	if (DZE_R3F_WEIGHT) then {execVM "\z\addons\dayz_code\external\R3F_Realism\R3F_Realism_Init.sqf";};
	execVM "scripts\fix.sqf";
	waitUntil {scriptDone progress_monitor};
	cutText ["","BLACK IN", 3];
	3 fadeSound 1;
	3 fadeMusic 1;
	endLoadingScreen;
};

[[22551.738, 19593.025,0],900] execVM "scripts\SAR_nuke_zeds.sqf"; // No Zombies  at Sector B
_logistic = execVM "=BTC=_Logistic\=BTC=_Logistic_Init.sqf";
	execVM "scripts\Buildables\variables.sqf";//AAC
	execVM "scripts\Buildables\Crafting_Compiles.sqf";//AAC
	
	//Bandage
	combineBandage = compile preprocessFileLineNumbers "scripts\additions\combineBandage.sqf";
	unpackBandage = compile preprocessFileLineNumbers "scripts\additions\unpackBandage.sqf";
	fnc_use_item = compile preprocessFileLineNumbers "scripts\additions\use_item.sqf";

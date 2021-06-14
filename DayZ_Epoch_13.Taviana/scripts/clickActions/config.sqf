/*
	DZE_CLICK_ACTIONS
	This is where you register your right-click actions
	FORMAT -- (no comma after last array entry)
	[_classname,_text,_execute,_condition],
	PARAMETERS
	_classname  : the name of the class to click on (example = "ItemBloodbag")
	_text       : the text for the option that is displayed when right clicking on the item (example = "Self Transfuse")
	_execute    : compiled code to execute when the option is selected (example = "execVM 'my\scripts\self_transfuse.sqf';")
	_condition  : compiled code evaluated to determine whether or not the option is displayed (example = {true})
*/

DZE_CLICK_ACTIONS = [
	/*
	["ItemGPS",localize "STR_CL_CA_SCAN_NEARBY","if(isNil 'CA_GPS_RANGE') then {CA_GPS_RANGE = 1500;};CA_ZOMBIE_COUNT = count ((position player) nearEntities ['zZombie_Base',CA_GPS_RANGE]); CA_MAN_COUNT = count ((position player) nearEntities ['CAManBase',CA_GPS_RANGE]); format[localize 'STR_CL_CA_SCAN',CA_GPS_RANGE,CA_MAN_COUNT - CA_ZOMBIE_COUNT,count ((position player) nearEntities ['zZombie_Base',CA_GPS_RANGE]),count ((position player) nearEntities ['allVehicles',CA_GPS_RANGE]) - CA_MAN_COUNT] call dayz_rollingMessages;","true"],
	["ItemGPS",localize "STR_CL_CA_RANGE_UP","if(isNil 'CA_GPS_RANGE') then {CA_GPS_RANGE = 1500;};CA_GPS_RANGE = (CA_GPS_RANGE + 100) min 2500; format[localize 'STR_CL_CA_RANGE_GPS',CA_GPS_RANGE] call dayz_rollingMessages;","true"],
	["ItemGPS",localize "STR_CL_CA_RANGE_DOWN","if(isNil 'CA_GPS_RANGE') then {CA_GPS_RANGE = 1500;};CA_GPS_RANGE = (CA_GPS_RANGE - 100) max 1000; format[localize 'STR_CL_CA_RANGE_GPS',CA_GPS_RANGE] call dayz_rollingMessages;","true"]
	*/



	//AAC
	["ItemAmethyst","Crafting Menu","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'scripts\Buildables\Amethyst.sqf';","true"],
	["ItemCitrine","Crafting Menu","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'scripts\Buildables\Citrine.sqf';","true"],
	["ItemEmerald","Crafting Menu","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'scripts\Buildables\Emerald.sqf';","true"],
	["ItemObsidian","Crafting Menu","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'scripts\Buildables\Obsidian.sqf';","true"],
	["ItemRuby","Crafting Menu","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'scripts\Buildables\Ruby.sqf';","true"],
	["ItemSapphire","Crafting Menu","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'scripts\Buildables\Sapphire.sqf';","true"],
	["ItemTopaz","Crafting Menu","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'scripts\Buildables\Topaz.sqf';","true"],
	["ItemLightbulb","Crafting Menu","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'scripts\Buildables\Lights.sqf';","true"],
	["MortarBucket","Crafting Menu","closeDialog 0;createDialog 'Advanced_Crafting';execVM 'scripts\Buildables\Transportation.sqf';","true"],
	
	//zCraft
	["ItemEtool","Crafting Menu","closeDialog 0;createDialog ""ZCraft"";","true"],
	["ItemPickAxe","Remove Road","closeDialog 0;execVM 'scripts\Buildables\roadDismantle.sqf';","true"],
	
	//Origins Bandage
	["ItemBandage","Combine Bandage","call combineBandage","true"],
	["ItemBandL2","Combine Bandage","call combineBandage","true"],
	["ItemBandL3","Combine Bandage","call combineBandage","true"],
	["ItemBandL2","Unpack Bandage","'ItemBandL2' call unpackBandage","true"],
	["ItemBandL3","Unpack Bandage","'ItemBandL3' call unpackBandage","true"],
	
	["ItemKey",localize "STR_CL_RV_CA_EJECT","spawn remoteVehicle;","true",1],
	["ItemKey",localize "STR_CL_RV_CA_ENGINE","spawn remoteVehicle;","true",2],
	["ItemKey",localize "STR_CL_RV_CA_UNLOCK","spawn remoteVehicle;","true",3],
	["ItemKey",localize "STR_CL_RV_CA_LOCK","spawn remoteVehicle;","true",4],
	["ItemKey",localize "STR_CL_RV_CA_LIGHTS","spawn remoteVehicle;","true",5]
	

];
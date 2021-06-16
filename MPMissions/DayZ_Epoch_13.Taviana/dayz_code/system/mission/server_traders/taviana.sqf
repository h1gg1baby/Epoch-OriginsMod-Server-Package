// DayZ Epoch TRADERS for 13

serverTraders = [
"trader_catalog",
"FR_AC",
"GUE_Commander",
"GUE_Woodlander2",
"RU_Citizen4",
"Villager1",
"Profiteer1",
"Rita_Ensler_EP1",
"Dr_Hladik_EP1",
"Worker2",
"TK_CIV_Worker01_EP1",
"CIV_EuroMan01_EP1",
"CIV_EuroMan02_EP1",
"RU_WorkWoman5",
"Doctor",
"Worker1",
"TK_CIV_Worker02_EP1",
"Rocker4",
"RU_Citizen3",
"RU_WorkWoman1",
"Dr_Annie_Baker_EP1",
"Worker3",
"RU_Pilot",
"RU_Villager3",
"HouseWife1",
"Profiteer2",
"Profiteer3",
"Functionary1_EP1",
"GUE_Worker2",
"Soldier_Sniper_KSVK_PMC",
"Soldier_GL_PMC",
"GUE_Soldier_Pilot",
"GUE_Woodlander3",
"Worker4",
"Reynolds_PMC",
"Soldier_Sniper_PMC",
"GUE_Soldier_3",
"RU_Doctor",
"UN_CDF_Soldier_Pilot_EP1",
"RU_Worker4",
"RU_Woodlander4",
"Citizen3",
"RU_Damsel5",
"GUE_Soldier_CO",
"Profiteer2_EP1",
"RU_Farmwife5",
"GUE_Woodlander1",
"RU_Worker1",
"GUE_Soldier_2",
"Citizen1",
"UN_CDF_Soldier_Officer_EP1",
"UN_CDF_Soldier_Guard_EP1",
"UN_CDF_Soldier_Light_EP1",
"UN_CDF_Soldier_EP1",
"UN_CDF_Soldier_MG_EP1",
"UN_CDF_Soldier_B_EP1",
"UN_CDF_Soldier_Crew_EP1",
"UN_CDF_Soldier_AT_EP1",
"Woodlander2",
"RU_Villager2",
"RU_Profiteer4",
"Citizen4",
"TK_CIV_Worker02_EP1",
"RU_Citizen1", 
"RU_Rocker2",
"Haris_Press_EP1",
"RU_Assistant",
"RU_Soldier_SniperH",
"RU_Hooker1"
];

/***************Hero Vendor*********/
menu_FR_AC = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_AIRVEHICLES",1],[localize "STR_EPOCH_TRADER_CATEGORY_GROUNDVEHICLES",2],[localize "STR_EPOCH_TRADER_CATEGORY_WEAPONS",3],[localize "STR_EPOCH_TRADER_CATEGORY_AMMUNITION",4],[localize "STR_EPOCH_TRADER_CATEGORY_CLOTHES",5]],
	[["","ItemDogTagBandit",1,1,150]],
	"hero"
];

menu_RU_Damsel5 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PACKAGEFOOD",27],[localize "STR_EPOCH_TRADER_CATEGORY_COOKMEAT",28],[localize "STR_EPOCH_TRADER_CATEGORY_DRINKS",29],[localize "STR_EPOCH_TRADER_CATEGORY_CLOTHES",30],[localize "STR_EPOCH_TRADER_CATEGORY_BACKPACKS",31],[localize "STR_EPOCH_TRADER_CATEGORY_MISCELLANEOUS",32]],
	[["ItemTinBar","TrashJackDaniels",1,1,0]],
	"neutral"
];

menu_RU_Doctor = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_MEDICALSUPPLIES",33]],
	[["FoodBioMeat","ItemZombieParts",1,1,20]],
	"neutral"
]; 

menu_GUE_Woodlander3 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_TOOLS",34],[localize "STR_EPOCH_TRADER_CATEGORY_BUILDINGSUPPLIES",35],[localize "STR_EPOCH_TRADER_CATEGORY_VEHICLEPARTS",36]],
	[],
	"neutral"
];

menu_Soldier_Sniper_PMC = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_ATTACHMENTS",12],[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLS",13],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNS",14],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOT",15],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLES",16],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLES",17],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNS",18]],
	[],
	"neutral"
];

if (Z_singleCurrency) then {(menu_FR_AC select 0) set [count (menu_FR_AC select 0), [localize "STR_EPOCH_TRADER_CATEGORY_CURRENCY",51]];};
/***************Bandit Vendor*********/
menu_GUE_Commander = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_AIRVEHICLES",6],[localize "STR_EPOCH_TRADER_CATEGORY_GROUNDVEHICLES",7],[localize "STR_EPOCH_TRADER_CATEGORY_WEAPONS",8],[localize "STR_EPOCH_TRADER_CATEGORY_AMMUNITION",9],[localize "STR_EPOCH_TRADER_CATEGORY_CLOTHES",10]],
	[["","ItemDogTagHero",1,1,-150]],
	"hostile"
];
if (Z_singleCurrency) then {(menu_GUE_Commander select 0) set [count (menu_GUE_Commander select 0), [localize "STR_EPOCH_TRADER_CATEGORY_CURRENCY",51]];};
/***********************************Branibor/Lyepeostok************************************/
/***************Black Market*********/
menu_GUE_Woodlander2 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_BLACKMARKET",11]],
	[],
	"neutral"
];

menu_RU_Soldier_SniperH = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_BLACKMARKET",11]],
	[],
	"neutral"
];


/***************Weapons*********/
menu_RU_Citizen4 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_ATTACHMENTS",12],[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLS",13],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNS",14],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOT",15],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLES",16],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLES",17],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNS",18]],
	[],
	"neutral"
];

/***************Ammunition*********/
menu_Profiteer1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLAMMO",19],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNAMMO",20],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOTAMMO",21],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLEAMMO",22],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLEAMMO",23],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNAMMO",24],[localize "STR_EPOCH_TRADER_CATEGORY_SMOKEGRENADES",25],[localize "STR_EPOCH_TRADER_CATEGORY_FLARES",26]],
	[],
	"neutral"
];

/***************General Store*********/
menu_Rita_Ensler_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PACKAGEFOOD",27],[localize "STR_EPOCH_TRADER_CATEGORY_COOKMEAT",28],[localize "STR_EPOCH_TRADER_CATEGORY_DRINKS",29],[localize "STR_EPOCH_TRADER_CATEGORY_CLOTHES",30],[localize "STR_EPOCH_TRADER_CATEGORY_BACKPACKS",31],[localize "STR_EPOCH_TRADER_CATEGORY_MISCELLANEOUS",32]],
	[["ItemTinBar","TrashJackDaniels",1,1,0]],
	"neutral"
];

/***************Medical Supplies*********/
menu_Dr_Hladik_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_MEDICALSUPPLIES",33]],
	[["FoodBioMeat","ItemZombieParts",1,1,20]],
	"neutral"
];

/***************Building/Parts*********/
menu_Worker2 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_TOOLS",34],[localize "STR_EPOCH_TRADER_CATEGORY_BUILDINGSUPPLIES",35],[localize "STR_EPOCH_TRADER_CATEGORY_VEHICLEPARTS",36]],
	[],
	"neutral"
];
if (Z_singleCurrency) then {(menu_Worker2 select 0) set [count (menu_Worker2 select 0), [localize "STR_EPOCH_TRADER_CATEGORY_CURRENCY",51]];};
/***************Vehicles*********/
menu_Villager1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_BIKESATVS",37],[localize "STR_EPOCH_TRADER_CATEGORY_CARS",38],[localize "STR_EPOCH_TRADER_CATEGORY_PICKUPS",39],[localize "STR_EPOCH_TRADER_CATEGORY_UAZS",40],[localize "STR_EPOCH_TRADER_CATEGORY_SUVS",41],[localize "STR_EPOCH_TRADER_CATEGORY_CARGOTRUCKS",42],[localize "STR_EPOCH_TRADER_CATEGORY_FUELTRUCKS",43],[localize "STR_EPOCH_TRADER_CATEGORY_MILITARYUNARMED",44],[localize "STR_EPOCH_TRADER_CATEGORY_MISCELLANEOUS",45]],
	[],
	"neutral"
];

/*****************************************************************************/
/************************************Bilgrad / Antonovka*************************************/
/***************Weapons*********/
menu_CIV_EuroMan01_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_ATTACHMENTS",12],[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLS",13],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNS",14],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOT",15],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLES",16],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLES",17],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNS",18]],
	[],
	"friendly"
];

/***************Ammunition*********/
menu_CIV_EuroMan02_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLAMMO",19],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNAMMO",20],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOTAMMO",21],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLEAMMO",22],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLEAMMO",23],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNAMMO",24],[localize "STR_EPOCH_TRADER_CATEGORY_SMOKEGRENADES",25],[localize "STR_EPOCH_TRADER_CATEGORY_FLARES",26]],
	[],
	"friendly"
];

/***************General Store*********/
menu_RU_WorkWoman5 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PACKAGEFOOD",27],[localize "STR_EPOCH_TRADER_CATEGORY_COOKMEAT",28],[localize "STR_EPOCH_TRADER_CATEGORY_DRINKS",29],[localize "STR_EPOCH_TRADER_CATEGORY_CLOTHES",30],[localize "STR_EPOCH_TRADER_CATEGORY_BACKPACKS",31],[localize "STR_EPOCH_TRADER_CATEGORY_MISCELLANEOUS",32]],
	[["ItemTinBar","TrashJackDaniels",1,1,0]],
	"friendly"
];

/***************Medical Supplies*********/
menu_Doctor = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_MEDICALSUPPLIES",33]],
	[["FoodBioMeat","ItemZombieParts",1,1,20]],
	"friendly"
];

/***************Building/Parts*********/
menu_Worker1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_TOOLS",34],[localize "STR_EPOCH_TRADER_CATEGORY_BUILDINGSUPPLIES",35],[localize "STR_EPOCH_TRADER_CATEGORY_VEHICLEPARTS",36]],
	[],
	"friendly"
];
if (Z_singleCurrency) then {(menu_Worker1 select 0) set [count (menu_Worker1 select 0), [localize "STR_EPOCH_TRADER_CATEGORY_CURRENCY",51]];};
/***************Vehicles*********/
menu_TK_CIV_Worker02_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_BIKESATVS",37],[localize "STR_EPOCH_TRADER_CATEGORY_CARS",38],[localize "STR_EPOCH_TRADER_CATEGORY_PICKUPS",39],[localize "STR_EPOCH_TRADER_CATEGORY_UAZS",40],[localize "STR_EPOCH_TRADER_CATEGORY_SUVS",41],[localize "STR_EPOCH_TRADER_CATEGORY_CARGOTRUCKS",42],[localize "STR_EPOCH_TRADER_CATEGORY_FUELTRUCKS",43],[localize "STR_EPOCH_TRADER_CATEGORY_MILITARYUNARMED",44],[localize "STR_EPOCH_TRADER_CATEGORY_MISCELLANEOUS",45]],
	[],
	"friendly"
];
/*****************************************************************************/
/***********************************Sabina / Sevastopol***********************************/
/***************Weapons*********/
menu_Rocker4 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_ATTACHMENTS",12],[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLS",13],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNS",14],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOT",15],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLES",16],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLES",17],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNS",18]],
	[],
	"neutral"
];

/***************Ammunition*********/
menu_RU_Citizen3 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLAMMO",19],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNAMMO",20],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOTAMMO",21],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLEAMMO",22],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLEAMMO",23],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNAMMO",24],[localize "STR_EPOCH_TRADER_CATEGORY_SMOKEGRENADES",25],[localize "STR_EPOCH_TRADER_CATEGORY_FLARES",26]],
	[],
	"neutral"
];

/***************General Store*********/
menu_RU_WorkWoman1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PACKAGEFOOD",27],[localize "STR_EPOCH_TRADER_CATEGORY_COOKMEAT",28],[localize "STR_EPOCH_TRADER_CATEGORY_DRINKS",29],[localize "STR_EPOCH_TRADER_CATEGORY_CLOTHES",30],[localize "STR_EPOCH_TRADER_CATEGORY_BACKPACKS",31],[localize "STR_EPOCH_TRADER_CATEGORY_MISCELLANEOUS",32]],
	[["ItemTinBar","TrashJackDaniels",1,1,0]],
	"neutral"
];

/***************Medical Supplies*********/
menu_Dr_Annie_Baker_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_MEDICALSUPPLIES",33]],
	[["FoodBioMeat","ItemZombieParts",1,1,20]],
	"neutral"
];

/***************Building/Parts*********/
menu_Worker3 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_TOOLS",34],[localize "STR_EPOCH_TRADER_CATEGORY_BUILDINGSUPPLIES",35],[localize "STR_EPOCH_TRADER_CATEGORY_VEHICLEPARTS",36]],
	[],
	"neutral"
];
if (Z_singleCurrency) then {(menu_Worker3 select 0) set [count (menu_Worker3 select 0), [localize "STR_EPOCH_TRADER_CATEGORY_CURRENCY",51]];};
/***************Vehicles*********/
menu_TK_CIV_Worker01_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_BIKESATVS",37],[localize "STR_EPOCH_TRADER_CATEGORY_CARS",38],[localize "STR_EPOCH_TRADER_CATEGORY_PICKUPS",39],[localize "STR_EPOCH_TRADER_CATEGORY_UAZS",40],[localize "STR_EPOCH_TRADER_CATEGORY_SUVS",41],[localize "STR_EPOCH_TRADER_CATEGORY_CARGOTRUCKS",42],[localize "STR_EPOCH_TRADER_CATEGORY_FUELTRUCKS",43],[localize "STR_EPOCH_TRADER_CATEGORY_MILITARYUNARMED",44],[localize "STR_EPOCH_TRADER_CATEGORY_MISCELLANEOUS",45]],
	[],
	"neutral"
];
/*****************************************************************************/
/***************Aircraft Dealer*********/
menu_RU_Pilot = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_AIRPLANES",46],[localize "STR_EPOCH_TRADER_CATEGORY_HELICOPTER",47]],
	[],
	"neutral"
];

/***************Boat Vendor*********/
menu_RU_Villager3 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_BOATSARMED",48],[localize "STR_EPOCH_TRADER_CATEGORY_BOATSUNARMED",49]],
	[],
	"neutral"
];

/***************Boat Vendor*********/
menu_HouseWife1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_BOATSARMED",48],[localize "STR_EPOCH_TRADER_CATEGORY_BOATSUNARMED",49]],
	[],
	"neutral"
];

/***************Wholesaler*********/
menu_Profiteer2 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_WHOLESALE",50]],
	[],
	"neutral"
];

/***************Wholesaler*********/
menu_Profiteer3 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_WHOLESALE",50]],
	[],
	"neutral"
];

/***************Banker*********/
menu_Functionary1_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_CURRENCY",51]],
    [],
    "neutral"
];

/***************Taviana Zoo*********/

menu_UN_CDF_Soldier_Pilot_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_AIRPLANES",46],[localize "STR_EPOCH_TRADER_CATEGORY_HELICOPTER",47]],
	[],
	"neutral"
];

//Building Supplies
menu_UN_CDF_Soldier_Guard_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_TOOLS",34],[localize "STR_EPOCH_TRADER_CATEGORY_BUILDINGSUPPLIES",35],[localize "STR_EPOCH_TRADER_CATEGORY_VEHICLEPARTS",36]],
	[],
	"neutral"
];
//Food & Drink
menu_UN_CDF_Soldier_Light_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PACKAGEFOOD",27],[localize "STR_EPOCH_TRADER_CATEGORY_COOKMEAT",28],[localize "STR_EPOCH_TRADER_CATEGORY_DRINKS",29],[localize "STR_EPOCH_TRADER_CATEGORY_CLOTHES",30],[localize "STR_EPOCH_TRADER_CATEGORY_BACKPACKS",31],[localize "STR_EPOCH_TRADER_CATEGORY_MISCELLANEOUS",32]],
	[["ItemTinBar","TrashJackDaniels",1,1,0]],
	"friendly"
];
//Medical
menu_UN_CDF_Soldier_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_MEDICALSUPPLIES",33]],
	[["FoodBioMeat","ItemZombieParts",1,1,20]],
	"neutral"
];
//Weapons
menu_UN_CDF_Soldier_MG_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_ATTACHMENTS",12],[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLS",13],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNS",14],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOT",15],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLES",16],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLES",17],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNS",18]],
	[],
	"neutral"
];
//Ammunition
menu_UN_CDF_Soldier_B_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLAMMO",19],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNAMMO",20],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOTAMMO",21],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLEAMMO",22],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLEAMMO",23],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNAMMO",24],[localize "STR_EPOCH_TRADER_CATEGORY_SMOKEGRENADES",25],[localize "STR_EPOCH_TRADER_CATEGORY_FLARES",26]],
	[],
	"neutral"
];
//Cars
menu_UN_CDF_Soldier_Crew_EP1 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_BIKESATVS",37],[localize "STR_EPOCH_TRADER_CATEGORY_CARS",38],[localize "STR_EPOCH_TRADER_CATEGORY_PICKUPS",39],[localize "STR_EPOCH_TRADER_CATEGORY_UAZS",40],[localize "STR_EPOCH_TRADER_CATEGORY_SUVS",41],[localize "STR_EPOCH_TRADER_CATEGORY_CARGOTRUCKS",42],[localize "STR_EPOCH_TRADER_CATEGORY_FUELTRUCKS",43],[localize "STR_EPOCH_TRADER_CATEGORY_MILITARYUNARMED",44],[localize "STR_EPOCH_TRADER_CATEGORY_MISCELLANEOUS",45]],
	[],
	"friendly"
];


/***************Camp*********/

//SUPPLIES
menu_RU_Worker4 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_TOOLS",34],[localize "STR_EPOCH_TRADER_CATEGORY_BUILDINGSUPPLIES",35],[localize "STR_EPOCH_TRADER_CATEGORY_VEHICLEPARTS",36]],
	[],
	"neutral"
];
//WEAPONS
menu_Soldier_Sniper_KSVK_PMC = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_ATTACHMENTS",12],[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLS",13],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNS",14],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOT",15],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLES",16],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLES",17],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNS",18]],
	[],
	"neutral"
];
//AMMUNITION
menu_Soldier_GL_PMC = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PISTOLAMMO",19],[localize "STR_EPOCH_TRADER_CATEGORY_SUBMACHINEGUNAMMO",20],[localize "STR_EPOCH_TRADER_CATEGORY_SINGLESHOTAMMO",21],[localize "STR_EPOCH_TRADER_CATEGORY_ASSAULTRIFLEAMMO",22],[localize "STR_EPOCH_TRADER_CATEGORY_SNIPERRIFLEAMMO",23],[localize "STR_EPOCH_TRADER_CATEGORY_LIGHTMACHINEGUNAMMO",24],[localize "STR_EPOCH_TRADER_CATEGORY_SMOKEGRENADES",25],[localize "STR_EPOCH_TRADER_CATEGORY_FLARES",26]],
	[],
	"neutral"
];
//FOOD & DRINK
menu_Citizen3 = [
	[[localize "STR_EPOCH_TRADER_CATEGORY_PACKAGEFOOD",27],[localize "STR_EPOCH_TRADER_CATEGORY_COOKMEAT",28],[localize "STR_EPOCH_TRADER_CATEGORY_DRINKS",29],[localize "STR_EPOCH_TRADER_CATEGORY_CLOTHES",30],[localize "STR_EPOCH_TRADER_CATEGORY_BACKPACKS",31],[localize "STR_EPOCH_TRADER_CATEGORY_MISCELLANEOUS",32]],
	[["ItemTinBar","TrashJackDaniels",1,1,0]],
	"friendly"
];

menu_trader_catalog= [
	[
//Start of categories
		[ "BLACKMARKET",11],
		[ "ATTACHMENTS",12],
		[ "PISTOLS",13],
		[ "SUB MACHINE GUNS",14],
		[ "SINGLESHOT",15],
		[ "ASSAULT RIFLES",16],
		[ "SNIPER RIFLES",17],
		[ "LIGHT MACHINE GUNS",18],
		[ "PISTOL AMMO",19],
		[ "SUB MACHINEGUN AMMO",20],
		[ "SINGLE SHOT AMMO",21],
		[ "ASSAULT RIFLE AMMO",22],
		[ "SNIPER RIFLE AMMO",23],
		[ "LIGHT MACHINEGUN AMMO",24],
		[ "PACKAGEFOOD",27],
		[ "COOKMEAT",28],
		[ "DRINKS",29],
		[ "CLOTHES",30],
		[ "BACKPACKS",31],
		[ "MISCELLANEOUS",32],
		[ "MEDICAL SUPPLIES",33],
		[ "SMOKE GRENADES",25],
		[ "FLARES",26],
		[ "TOOLS",34],
		[ "BUILDING SUPPLIES",35],
		[ "VEHICLE PARTS",36],
		[ "BIKES ATVS",37],
		[ "CARS",38],
		[ "PICKUPS",39],
		[ "UAZS",40],
		[ "SUVS",41],
		[ "CARGO TRUCKS",42],
		[ "FUEL TRUCKS",43],
		[ "MILITARY UNARMED",44],
		[ "MISCELLANEOUS VEHICLES",45],
		[ "BOATS ARMED",48],
		[ "BOATS UNARMED",49],
		[ "AIRPLANES",46],
		[ "HELICOPTER",47]
//End of categories
	],
	[],
    "neutral"
];








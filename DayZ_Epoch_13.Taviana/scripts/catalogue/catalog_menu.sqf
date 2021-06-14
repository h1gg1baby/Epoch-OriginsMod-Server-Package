#define STRINGIFY(x) #x
#define PATH(sub_path) STRINGIFY(\z\addons\dayz_code\actions\AdvancedTrading\functions\sub_path)
#define CPP compile preprocessFileLineNumbers

disableSerialization;

if (!(isNull (findDisplay 711197))) exitwith  { closeDialog 0; };
if (dayz_actionInProgress) exitWith { localize "str_player_actionslimit" call dayz_rollingMessages; };

Z_traderData = (menu_trader_catalog select 0); 

if (isNil "TRADER_CAT_INIT") then {
	Z_Selling = true;
	
	Z_OriginalSellableArray = [];
	Z_SellableArray = [];
	Z_SellArray = [];
	Z_OriginalBuyableArray = [];
	Z_BuyableArray = [];
	Z_BuyingArray = [];

	ZC_displayItemInfo = 			CPP "scripts\catalogue\z_tc_displayItemInfo.sqf";
	ZC_displayWeaponInfo = 			CPP "scripts\catalogue\z_tc_displayWeaponInfo.sqf";
	ZC_displayBackpackInfo = 		CPP "scripts\catalogue\z_tc_displayBackpackInfo.sqf";
	ZC_displayVehicleInfo = 			CPP "scripts\catalogue\z_tc_displayVehicleInfo.sqf";
	ZC_getItemConfig = 				CPP "scripts\catalogue\z_tc_getItemConfig.sqf";
	ZC_ChangeBuySell = 				CPP "scripts\catalogue\z_tc_changeBuySell.sqf";
	ZC_getItemInfo = 				CPP "scripts\catalogue\z_tc_getItemInfo.sqf";

	Z_fillTradeTitle = 				CPP PATH(z_at_fillTradeTitle.sqf);
	Z_clearLists =					CPP PATH(z_at_clearLists.sqf);
	Z_clearSellableList =			CPP PATH(z_at_clearSellableList.sqf);
	Z_clearBuyList = 				CPP PATH(z_at_clearBuyList.sqf);
	Z_clearBuyingList = 			CPP PATH(z_at_clearBuyingList.sqf);
	Z_fillCategories = 				CPP PATH(z_at_fillCategories.sqf);
	Z_getContainer = 				CPP PATH(z_at_getContainer.sqf);
	Z_getBackpackItems = 			CPP PATH(z_at_getBackpackItems.sqf);
	Z_getVehicleItems = 			CPP PATH(z_at_getVehicleItems.sqf);
	Z_getGearItems = 				CPP PATH(z_at_getGearItems.sqf);
	Z_logTrade = 					CPP PATH(z_at_logTrade.sqf);
	Z_filterList =					CPP PATH(z_at_filterList.sqf);
	Z_checkArrayInConfig = 			CPP PATH(z_at_checkArrayInConfig.sqf);
	Z_calcPrice = 					CPP PATH(z_at_calcPrice.sqf);
	Z_fillCategoryList =			CPP PATH(z_at_fillCategoryList.sqf);
	Z_fillSellList = 				CPP PATH(z_at_fillSellList.sqf);
	Z_fillSellingList = 			CPP PATH(z_at_fillSellingList.sqf);
	Z_pushItemToList = 				CPP PATH(z_at_pushItemToList.sqf);
	Z_removeItemFromList = 			CPP PATH(z_at_removeItemFromList.sqf);
	Z_pushAllToList = 				CPP PATH(z_at_pushAllToList.sqf);
	Z_removeAllToList = 			CPP PATH(z_at_removeAllToList.sqf);
	Z_SellItems = 					CPP PATH(z_at_sellItems.sqf);
	Z_BuyItems = 					CPP PATH(z_at_buyItems.sqf);
	Z_removeAllFromBuyingList = 	CPP PATH(z_at_removeAllFromBuyingList.sqf);
	Z_removeItemFromBuyingList =	CPP PATH(z_at_removeItemFromBuyingList.sqf);
	Z_toBuyingList =				CPP PATH(z_at_toBuyingList.sqf);
	Z_calcBuyableList = 			CPP PATH(z_at_calcBuyableList.sqf);
	Z_fillBuyableList = 			CPP PATH(z_at_fillBuyableList.sqf);
	Z_fillBuyingList = 				CPP PATH(z_at_fillBuyingList.sqf);
	Z_displayFreeSpace = 			CPP PATH(z_at_displayFreeSpace.sqf);
	Z_allowBuying =  				CPP PATH(z_at_allowBuying.sqf);
	DZE_deleteTradedVehicle =		CPP PATH(DZE_deleteTradedVehicle.sqf);
	TRADER_CAT_INIT = true;
};


Z_BuyingArray = [];
Z_ResetContainer = true;
Z_Selling = true;
Z_CategoryView = true; 
createDialog "TradingCatalogue";

call ZC_ChangeBuySell;

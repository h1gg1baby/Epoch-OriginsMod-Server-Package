#define Z_AT_DIALOGWINDOW 711197
#define Z_AT_SELLABLELIST 7401
#define Z_AT_SELLINGLIST 7402
#define Z_AT_BUYABLELIST 7421
#define Z_AT_BUYINGLIST 7422
#define Z_AT_ITEMINFO 7445
#define Z_AT_SLOTSDISPLAY 7404
#define Z_AT_TRADERLINE1 7412
#define Z_AT_TRADERLINE2 7413
#define Z_AT_PRICEDISPLAY 7410
#define Z_AT_SELLBUYTOGGLE 7416
#define Z_AT_RIGHTLISTTITLE 7409
#define Z_AT_REMOVESELLITEMBUTTON 7432
#define Z_AT_REMOVEALLSELLITEMBUTTON 7433
#define Z_AT_REMOVEBUYITEMBUTTON 7442
#define Z_AT_REMOVEALLBUYITEMBUTTON 7443
#define Z_AT_BUYINGAMOUNT 7441
#define Z_AT_BUYBUTTON 7436
#define Z_AT_SELLBUTTON 7435
#define Z_AT_ADDBUYITEMBUTTON 7440
#define Z_AT_ADDSELLITEMBUTTON 7430
#define Z_AT_ADDALLSELLITEMBUTTON 7431
#define Z_AT_TOGGLECURRENCYBUTTON 7450
#define Z_AT_CONTAINERINFO 7446
#define Z_AT_FILTERBOX 7444
#define Z_AT_FILTERBUTTON 7498
#define Z_AT_BACKBUTTON 7449
/*	_fill = {
		private "_index";
		call Z_clearBuyList;
		{	_index = lbAdd [Z_AT_BUYABLELIST,_x select 0];
			lbSetPicture [Z_AT_BUYABLELIST,_index,"\z\addons\dayz_code\gui\gear\arrow_right.paa"];
		} forEach Z_traderData;
	};
*/
Z_Selling = !Z_Selling;
if (Z_Selling) then {
	(findDisplay Z_AT_DIALOGWINDOW displayCtrl Z_AT_SELLBUYTOGGLE) ctrlSetText localize "STR_EPOCH_PLAYER_291";
	(findDisplay Z_AT_DIALOGWINDOW displayCtrl Z_AT_FILTERBUTTON) ctrlSetText localize "STR_UI_FILTER";
	{ctrlShow [_x,true];} forEach [Z_AT_SELLABLELIST,Z_AT_SELLINGLIST,Z_AT_SELLBUTTON,Z_AT_ADDSELLITEMBUTTON,Z_AT_ADDALLSELLITEMBUTTON,Z_AT_REMOVESELLITEMBUTTON,Z_AT_REMOVEALLSELLITEMBUTTON,Z_AT_FILTERBOX]; // show
	{ctrlShow [_x,false];} forEach [Z_AT_BUYABLELIST,Z_AT_BUYINGLIST,Z_AT_BUYBUTTON,Z_AT_ADDBUYITEMBUTTON,Z_AT_BUYINGAMOUNT,Z_AT_REMOVEBUYITEMBUTTON,Z_AT_REMOVEALLBUYITEMBUTTON,Z_AT_SLOTSDISPLAY,Z_AT_BACKBUTTON]; // hide											
} else {
	(findDisplay Z_AT_DIALOGWINDOW displayCtrl Z_AT_SELLBUYTOGGLE) ctrlSetText localize "STR_EPOCH_PLAYER_292";
	(findDisplay Z_AT_DIALOGWINDOW displayCtrl Z_AT_FILTERBUTTON) ctrlSetText localize "STR_UI_FILTER";
	{ctrlShow [_x,true];} forEach [Z_AT_BUYABLELIST,Z_AT_BUYINGLIST,Z_AT_BUYBUTTON,Z_AT_ADDBUYITEMBUTTON,Z_AT_BUYINGAMOUNT,Z_AT_REMOVEBUYITEMBUTTON,Z_AT_REMOVEALLBUYITEMBUTTON,Z_AT_SLOTSDISPLAY,Z_AT_FILTERBOX,Z_AT_BACKBUTTON]; // show
	{ctrlShow [_x,false];} forEach [Z_AT_SELLABLELIST,Z_AT_SELLINGLIST,Z_AT_SELLBUTTON,Z_AT_ADDSELLITEMBUTTON,Z_AT_ADDALLSELLITEMBUTTON,Z_AT_REMOVESELLITEMBUTTON,Z_AT_REMOVEALLSELLITEMBUTTON]; // hide
	(findDisplay Z_AT_DIALOGWINDOW displayCtrl Z_AT_BUYABLELIST) ctrlSetFontHeight 0.023; // reset
	(findDisplay Z_AT_DIALOGWINDOW displayCtrl Z_AT_BUYABLELIST) ctrlCommit 0;
	
	if (Z_CategoryView) then {
		(findDisplay Z_AT_DIALOGWINDOW displayCtrl Z_AT_FILTERBUTTON) ctrlSetText localize "STR_EPOCH_VIEW";
		(findDisplay Z_AT_DIALOGWINDOW displayCtrl Z_AT_BUYABLELIST) ctrlSetFontHeight 0.026; // Slightly bigger in category view	
		(findDisplay Z_AT_DIALOGWINDOW displayCtrl Z_AT_BUYABLELIST) ctrlCommit 0;
		{ctrlShow [_x,false];} forEach [Z_AT_ADDBUYITEMBUTTON,Z_AT_BUYINGAMOUNT,Z_AT_FILTERBOX,Z_AT_BACKBUTTON]; // hide
		call Z_fillCategories;
//		lbSetColor [Z_AT_BUYABLELIST, 53, [0.8, 0, 0, 1]];
	};
};

if (Z_ResetContainer) then {
	//Only reset to gear if dialog was closed or switching between buy and sell modes
	Z_ResetContainer = false;
	[2] call Z_getContainer;
} else {
	// Switching between categories
	(findDisplay Z_AT_DIALOGWINDOW displayCtrl Z_AT_ITEMINFO) ctrlSetStructuredText parseText "";
	ctrlSetText [Z_AT_TRADERLINE2, " "];
	ctrlSetText [Z_AT_TRADERLINE1, localize "STR_EPOCH_TRADE_SELLING_ALL"];
};
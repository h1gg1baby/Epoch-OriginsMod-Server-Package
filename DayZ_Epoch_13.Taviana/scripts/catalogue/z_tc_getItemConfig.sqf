private ['_item', '_type'];

_item = _this select 0;
_type = _item select 1;


switch (true) do {
	case (_type == "trade_items") :
	{
		[_item] call ZC_displayItemInfo;
	};
	case (_type == "trade_weapons") :
	{
		[_item] call ZC_displayWeaponInfo;
		[_item] call weapon_preview;
	};
	case (_type == "trade_backpacks") :
	{
		[_item] call ZC_displayBackpackInfo;
	};
	case (_type in DZE_tradeVehicle) :
	{
		[_item] call ZC_displayVehicleInfo;
		[_item] call vehicle_preview;
	};
	default {
		(findDisplay 711197 displayCtrl 7445) ctrlSetStructuredText (parseText format["<t color='#ffffff'>%1</t>",localize "STR_EPOCH_TRADE_NO_INFO"]);
	}
};
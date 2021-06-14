/*
 fnc_use_item, used in Origins Items, for Epochins by Schalldampfer
 ";[_id,'useMeds'] call fnc_use_item"
*/
//Check player state
local _onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {localize "str_player_21" call dayz_rollingMessages;};

//Config
local _item = _this select 0;
local _action = _this select 1;
local _text = getText (configFile >> "CfgMagazines" >> _item >> "displayName");

//Check item
local _hasitem = _item in magazines player;
if (!_hasitem) exitWith {format[localize "str_player_31",_text,localize "str_player_31_use"] call dayz_rollingMessages;};

//Action
switch (_item) do {
	case "ItemBandL2": {'ItemBandL2' call unpackBandage; 'ItemBandage' spawn player_useMeds;};
	case "ItemBandL3": {'ItemBandL3' call unpackBandage; 'ItemBandage' spawn player_useMeds;};
	default {diag_log format["Origins call: %1 call fnc_use_item",_this];};
};


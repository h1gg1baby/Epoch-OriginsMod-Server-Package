/*
 Unpack Bandage by Schalldampfer
 Unpack Origins Packed Bandages
*/
local _item = _this;
local _output = [];

//Check item
if (!(_item in magazines player)) exitWith {format["Missing %1", _item] call dayz_rollingMessages;};

//Check type
if (_item == "ItemBandL2") then {
	_output = ["ItemBandage","ItemBandage"];
} else {
	if (_item == "ItemBandL3") then {
		_output = ["ItemBandL2","ItemBandage"];
	};
};

//Remove
player removeMagazine _item;

//Add
{player addMagazine _x;} forEach _output;

private ['_item','_selectedList','_selectedIndex'];

_selectedList = _this select 0;
_selectedIndex = _this select 1;

_item = [];

if (_selectedIndex >= 0) then {
	call {
		if (_selectedList == 'sellable') exitwith {
			_item = Z_SellableArray select _selectedIndex;
		};
		if (_selectedList == 'selling') exitwith {
			_item = Z_SellArray select _selectedIndex;
		};
		if (_selectedList == 'buyable') exitwith {
			_item = Z_BuyableArray select _selectedIndex;
		};
		if (_selectedList == 'buying') exitwith {
			_item = Z_BuyingArray select _selectedIndex;
		};
	};
};

if (count _item > 0) then {
	[_item] call ZC_getItemConfig;
};

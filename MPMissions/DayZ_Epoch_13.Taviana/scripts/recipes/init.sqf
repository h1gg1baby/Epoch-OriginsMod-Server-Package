	building_catalog = {
		disableSerialization;
		if (dayz_actionInProgress) exitWith { localize "str_player_actionslimit" call dayz_rollingMessages; };
		local _inCombat = player getVariable ["inCombat",false];
		if (_inCombat) exitWith {"Cannot open while in combat." call dayz_rollingMessages;};
		if (!(isNull (findDisplay 7121197))) exitwith  { closeDialog 0; };
		createDialog "BuildingCatalogue";
		local _display = uiNamespace getVariable "BuildingCatalogue"; 
		local _infobox	= _display displayCtrl 4442;
		local _listbox	= _display displayCtrl 27421;
		local _cfgmags = configFile >> "CfgMagazines";

		for "_i" from 0 to (count _cfgmags)-1 do {
				local _magazine = _cfgmags select _i;
				local _cfgname = configName(_magazine);
				local _dispname = getText(configFile >> "CfgMagazines" >> _cfgname >> "displayName");   
				local _model = getText(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Build" >> "create");    
					if !(_model=="") then {
					_listbox lbAdd _dispname;
					_listbox lbSetData [(lbSize _listbox) -1,_cfgname];
					};		
			};		
				
		lbSort _listbox;
		local _stats = format["<br /><br /><br /><br /><br /><t size='1' font='Zeppelin33' align='center' color='#b00000'> Build Previews </t>"];
		_infobox ctrlSetStructuredText parseText _stats;
	};
	building_previews = {
			disableSerialization;
			local _display = uiNamespace getVariable "BuildingCatalogue"; 
			local _infobox	= _display displayCtrl 4442;
			local _return = lbData [27421,lbCurSel 27421];
			local _cfgmags = configFile >> "CfgMagazines";
	        local _class = getText(configFile >> "CfgMagazines" >> _return >> "ItemActions" >> "Build" >> "create");    
	        local _titlename = getText(configFile >> "CfgMagazines" >> _return >> "displayName");    
			format ["Loading %1 crafting recipes.", _class] call dayz_rollingMessages;
			local _recipe=[];
			local _stats=[];
			local _formatedText= "<br /><t size='0.8' font='Zeppelin33' align='center' color='#b00000'>Craft into:</t><br /><t size='0.7' font='Zeppelin33' align='center' color='#ffffff'>%1</t><br /><t size='0.8' font='Zeppelin33' align='center' color='#b00000'>Required: </t><br /><t size='0.7' font='Zeppelin33' align='center' color='#ffffff'>%2</t>";
		_arrayToText = {
			private ["_output","_type","_quantity"];
			local _output = "";
			{
				if (typeName _x == "ARRAY") then {
					_output = _output + format ["%1 x %2<br/>", _x select 1, (_x select 0) call _fnc_getName];
				} else {
					_output = _output + format ["%1<br/>", _x call _fnc_getName];
				};
			} count _this;
			_output
		};
		local _fnc_getName = {
			if (typeName _this == "OBJECT") then { _this = typeOf _this; };
			{
				if (isClass (configFile >> _x >> _this)) exitWith { getText (configFile >> _x >> _this >> "displayName") };
				_this
			} forEach ["CfgVehicles","CfgWeapons","CfgMagazines"];
		};	
		
		_stats = format ["<br /><t size='1' font='Zeppelin33' align='center' color='#ffc400'> %1</t> <br />",_titlename];
		
			for "_i" from 0 to (count _cfgmags)-1 do {
				local _magazine = _cfgmags select _i;
				local _cfgname = configName(_magazine);
				local _actions = ["Crafting"];
				for "_i" from 1 to 7 do { _actions set [count _actions, "Crafting" + str _i]; };
				{
				local _actionsCfg = configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> _x;
			for "_i" from 1 to count _actionsCfg - 1 do {
						local _actionCfg = _actionsCfg select _i;
						local _actionName = configName _actionCfg;
						local _dispname = getText(configFile >> "CfgMagazines" >> _cfgname >> "displayName");    
						local _output = getArray(_actionsCfg >> "output");    
						local _input = getArray(_actionsCfg >> "input");    
					if (_return == (_output select 0) select 0) then {
							_recipe set [0, _input];
						};
					};
				}count _actions;	
			};	

		if (count _recipe >0) then {
			_stats = _stats + format ["<t size='0.7' font='Zeppelin33' align='center' color='#ffffff'> %1</t> <br />", (_recipe select 0 call _arrayToText) ];
		}else{
			_stats = _stats + format [" <br /> <t size='0.7' font='Zeppelin33' align='center' color='#ffffff'> Cannot be crafted.</t> <br />" ];
		};
// this needs to be redone 
		for "_i" from 0 to (count _cfgmags)-1 do {
			_magazine = _cfgmags select _i;
			_cfgname = configName(_magazine);
			_dispname = getText(configFile >> "CfgMagazines" >> _cfgname >> "displayName");    
			_check = getText(configFile >> "CfgMagazines" >> _cfgname);    
			local _model = getText(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Build" >> "create");    
			if (_class == _model) then {
			_recipe = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting" >> "input");    
			local _cancraft = _recipe select 0;
		if !(isNil "_cancraft") then {
			local _craftInto = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting" >> "output");    
			local _craftInto1 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting1" >> "output");    
			local _craftInto2 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting2" >> "output");    
			local _craftInto3 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting3" >> "output"); 
			local _craftInto4 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting4" >> "output"); 
			local _craftInto5 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting5" >> "output"); 
			local _craftInto6 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting6" >> "output"); 
			local _craftInto7 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting7" >> "output"); 
			local _craftInto8 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting8" >> "output"); 
			local _recipe1 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting1" >> "input");    
			local _recipe2 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting2" >> "input");    
			local _recipe3 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting3" >> "input");   
			local _recipe4 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting4" >> "input");   
			local _recipe5 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting5" >> "input");   
			local _recipe6 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting6" >> "input");   
			local _recipe7 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting7" >> "input");   
			local _recipe8 = getArray(configFile >> "CfgMagazines" >> _cfgname >> "ItemActions" >> "Crafting8" >> "input");   
		if (count _craftInto > 0) then {
			_stats = _stats+ format [_formatedText,(_craftInto call _arrayToText),(_recipe call _arrayToText) ];
				if (count _craftInto1 > 0) then {_stats = _stats + format [_formatedText,(_craftInto1 call _arrayToText),(_recipe1 call _arrayToText)];};
				if (count _craftInto2 > 0) then {_stats = _stats + format [_formatedText,(_craftInto2 call _arrayToText),(_recipe2 call _arrayToText)];};
				if (count _craftInto3 > 0) then {_stats = _stats + format [_formatedText,(_craftInto3 call _arrayToText),(_recipe3 call _arrayToText)];};
				if (count _craftInto4 > 0) then {_stats = _stats + format [_formatedText,(_craftInto4 call _arrayToText),(_recipe4 call _arrayToText)];};
				if (count _craftInto5 > 0) then {_stats = _stats + format [_formatedText,(_craftInto5 call _arrayToText),(_recipe5 call _arrayToText)];};
				if (count _craftInto6 > 0) then {_stats = _stats + format [_formatedText,(_craftInto6 call _arrayToText),(_recipe6 call _arrayToText)];};	
				if (count _craftInto7 > 0) then {_stats = _stats + format [_formatedText,(_craftInto7 call _arrayToText),(_recipe7 call _arrayToText)];};
				if (count _craftInto8 > 0) then {_stats = _stats + format [_formatedText,(_craftInto8 call _arrayToText),(_recipe8 call _arrayToText)];};
				};
			};		
		};		
	};		
//--
		_infobox ctrlSetStructuredText parseText _stats;
		local _pos=getPos player;
		local _offset = [(_pos select 0)+2,(_pos select 1)+4,1000];
		preview_cameraPos = _offset;
		preview_camera = "camera" camCreate preview_cameraPos;
		preview_camera cameraEffect ["external","back"];
		preview_camera camSetFOV 0.7;
		preview_camera camCommit 0;
		waitUntil {camCommitted preview_camera};
		preview_camera setDir 190;
		deleteVehicle vehicle_bot;
		vehicle_bot = (_class) createVehicleLocal preview_cameraPos;
		vehicle_bot enableSimulation false;
		vehicle_bot setPosATL preview_cameraPos;
		vehicle_bot setVectorDirAndUp [[0,0,0],[0,0,0]];
		_pos = getPosASL vehicle_bot;
		_offset = [(_pos select 0)+2,(_pos select 1)+8,(_pos select 2)+2];
		preview_camera setPosATL (ASLtoATL _offset);
	};
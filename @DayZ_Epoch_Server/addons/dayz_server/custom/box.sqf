
private ["_crate","_crate2"];


DZMSProtectObj = {
	private ["_object","_objectID"];
	_object = _this select 0;
	
	_objectID = str(round(random 999999));
	_object setVariable ["ObjectID", _objectID, true];
	_object setVariable ["ObjectUID", _objectID, true];
	
	if (_object isKindOf "ReammoBox") then {
		// PermaLoot on top of ObjID because that "arma logic"
		_object setVariable ["permaLoot",true];
		_object setVariable ["Mission", "1", true];
	}; 
};


WeaponBox = {
private ["_object","_crate"];
_crate = _this select 0;
_wpns = ["M24","M4SPR","Sa58V_RCO_EP1","m16a4","m16a4_acg","FN_FAL_ANPVS4","FN_FAL","BAF_L85A2_RIS_Holo","Mk_48_DZ","PK_DZ","Pecheneg_DZ","ChainSawB","ChainSawP","m240_scoped_EP1_DZE","M60A4_EP1_DZE","DMR_DZ"];

_pstl = ["glock17_EP1","M9","M9SD","UZI_SD_EP1","MakarovSD","revolver_gold_EP1"];

_bld = ["CinderBlocks","MortarBucket","ItemLockbox","ItemDocument"];

_bld_rare = ["metal_floor_kit","cinder_door_kit","cinder_garage_kit","PartPlywoodPack","PartPlankPack","bulk_PartGeneric","storage_shed_kit"];

_tools = ["ItemToolbox","NVGoggles_DZE","Binocular_Vector"];
// Define lists. Some lists are defined in DZMSWeaponCrateList.sqf in the ExtConfig.
_bpackList = ["DZ_LargeGunBag_EP1","DZ_British_ACU","DZ_CivilBackpack_EP1","DZ_Backpack_EP1"];
_gshellList = ["HandGrenade_west","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","FlareRed_M203","FlareYellow_M203","Skin_GUE_Soldier_MG_DZ","Skin_GUE_Soldier_Sniper_DZ","Skin_GUE_Soldier_Crew_DZ","Skin_GUE_Soldier_CO_DZ","Skin_GUE_Soldier_2_DZ","Skin_TK_INS_Warlord_EP1_DZ","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","6Rnd_HE_M203","6Rnd_FlareWhite_M203","6Rnd_FlareGreen_M203","6Rnd_SmokeRed_M203"];
_medical = ["ItemBandage","ItemMorphine","ItemEpinephrine","ItemPainkiller","ItemWaterbottle","FoodMRE","ItemAntibiotic","ItemBloodbag"];
_money = ["ItemBriefcase100oz","ItemGoldBar10oz"];



	_scount = count _gshellList;
	for "_x" from 0 to 8 do {
		_sSelect = floor(random _sCount);
		_item = _gshellList select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
   
	// load packs
	_scount = count _bpackList;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = _bpackList select _sSelect;
		_crate addBackpackCargoGlobal [_item,1];
	};
	 
	// load pistols
	_scount = count _pstl;
	for "_x" from 0 to 4 do {
		_sSelect = floor(random _sCount);
		_item = _pstl select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 4))];
		};
	};

	//load primary
	_scount = count _wpns;
	for "_x" from 0 to 4 do {
		_sSelect = floor(random _sCount);
		_item = _wpns select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 4))];
		};
	};
	
	_scount = count _money;
	for "_x" from 0 to 4 do {
		_sSelect = floor(random _sCount);
		_item = _money select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
	_scount = count _medical;
	for "_x" from 0 to 8 do {
		_sSelect = floor(random _sCount);
		_item = _medical select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
};

BuildBox = {
private ["_object","_crate2"];
_crate2 = _this select 0;

_wpns = ["M24","M4SPR","Sa58V_RCO_EP1","m16a4","m16a4_acg","FN_FAL_ANPVS4","FN_FAL","BAF_L85A2_RIS_Holo","Mk_48_DZ","PK_DZ","Pecheneg_DZ","ChainSawB","ChainSawP","m240_scoped_EP1_DZE","M60A4_EP1_DZE","DMR_DZ"];

_pstl = ["glock17_EP1","M9","M9SD","UZI_SD_EP1","MakarovSD","revolver_gold_EP1"];

_bld = ["CinderBlocks","MortarBucket","ItemLockbox","ItemDocument"];

_bld_rare = ["metal_floor_kit","cinder_door_kit","cinder_garage_kit","PartPlywoodPack","PartPlankPack","bulk_PartGeneric","storage_shed_kit"];

_tools = ["ItemToolbox","NVGoggles_DZE","Binocular_Vector"];
// Define lists. Some lists are defined in DZMSWeaponCrateList.sqf in the ExtConfig.
_bpackList = ["DZ_LargeGunBag_EP1","DZ_British_ACU","DZ_CivilBackpack_EP1","DZ_Backpack_EP1"];
_gshellList = ["HandGrenade_west","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203","FlareRed_M203","FlareYellow_M203","Skin_GUE_Soldier_MG_DZ","Skin_GUE_Soldier_Sniper_DZ","Skin_GUE_Soldier_Crew_DZ","Skin_GUE_Soldier_CO_DZ","Skin_GUE_Soldier_2_DZ","Skin_TK_INS_Warlord_EP1_DZ","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","6Rnd_HE_M203","6Rnd_FlareWhite_M203","6Rnd_FlareGreen_M203","6Rnd_SmokeRed_M203"];
_medical = ["ItemBandage","ItemMorphine","ItemEpinephrine","ItemPainkiller","ItemWaterbottle","FoodMRE","ItemAntibiotic","ItemBloodbag"];
_money = ["ItemBriefcase100oz","ItemGoldBar10oz"];


	// load tools
	_scount = count _tools;
	for "_x" from 0 to 6 do {
		_sSelect = floor(random _sCount);
		_item = _tools select _sSelect;
		_crate2 addWeaponCargoGlobal [_item, 1];
	};
	
	// load construction
	_scount = count _bld_rare;
	for "_x" from 0 to 6 do {
		_sSelect = floor(random _sCount);
		_item = _bld_rare select _sSelect;
		_crate2 addMagazineCargoGlobal [_item,1];
	};
	_scount = count _bld;
	for "_x" from 0 to 20 do {
		_sSelect = floor(random _sCount);
		_item = _bld select _sSelect;
		_crate2 addMagazineCargoGlobal [_item,(round(random 2))];
	};
	_scount = count _money;
	for "_x" from 0 to 4 do {
		_sSelect = floor(random _sCount);
		_item = _money select _sSelect;
		_crate2 addMagazineCargoGlobal [_item,(round(random 2))];
	};
	_scount = count _medical;
	for "_x" from 0 to 8 do {
		_sSelect = floor(random _sCount);
		_item = _medical select _sSelect;
		_crate2 addMagazineCargoGlobal [_item,(round(random 2))];
	};
};	
	


_coords = [[22757,19639,0], [22951,19538,0], [23019.5,19744.7,0], [22766.9,19992,0], [22594.6,20197,0]] call BIS_fnc_selectRandom;
_coords2 = [[22380.7,19680.6,0], [22563,20028.7,0], [22448.1,20072.8,0], [22163,19918.8,0], [22160.5,19781.1,0], [22273.7,19820.6,0], [22321.9,19876,0], [22231.9,20000,0], [22300,19942,0], [22216,19854,0]] call BIS_fnc_selectRandom;
_coords3 = [[22174.8,19856.9,0]] call BIS_fnc_selectRandom;
_coords4 = [[22515.6,20038.2,0]] call BIS_fnc_selectRandom;
_coords5 = [[22449.9,19219.6,0], [22202.1,19268.2,0], [22741.3,19119.2,0]] call BIS_fnc_selectRandom;

// fills the box, DZMSProtectObj prevents it from disappearing
_crate = createVehicle ["RUVehicleBox",[(_coords select 0) + 2.6778,(_coords select 1) - 3.0889,0],[], 0, "CAN_COLLIDE"];
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
[_crate] call WeaponBox;
[_crate] call DZMSProtectObj;
_crate setDir -28.85478;

_crate2 = createVehicle ["RUVehicleBox",[(_coords2 select 0) + 1.4805,(_coords2 select 1) - 3.7432,0],[], 0, "CAN_COLLIDE"];
clearWeaponCargoGlobal _crate2;
clearMagazineCargoGlobal _crate2;
[_crate2] call BuildBox;
[_crate2] call DZMSProtectObj;
_crate2 setDir 62.744293;

_crate3 = createVehicle ["RUVehicleBox",[(_coords3 select 0) + 1.4805,(_coords3 select 1) - 3.7432,0],[], 0, "CAN_COLLIDE"];
clearWeaponCargoGlobal _crate3;
clearMagazineCargoGlobal _crate3;
[_crate3] call BuildBox;
[_crate3] call DZMSProtectObj;
_crate3 setDir 62.744293;

_crate4 = createVehicle ["RUVehicleBox",[(_coords4 select 0) + 1.4805,(_coords4 select 1) - 3.7432,0],[], 0, "CAN_COLLIDE"];
clearWeaponCargoGlobal _crate4;
clearMagazineCargoGlobal _crate4;
[_crate4] call BuildBox;
[_crate4] call DZMSProtectObj;
_crate4 setDir 62.744293;

_crate5 = createVehicle ["RUVehicleBox",[(_coords5 select 0) + 1.4805,(_coords5 select 1) - 3.7432,0],[], 0, "CAN_COLLIDE"];
clearWeaponCargoGlobal _crate5;
clearMagazineCargoGlobal _crate5;
[_crate5] call BuildBox;
[_crate5] call DZMSProtectObj;
_crate5 setDir 62.744293;




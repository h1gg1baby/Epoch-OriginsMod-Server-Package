private ["_RoadsAsphalt1","_RoadsAsphalt2","_RoadsAsphalt3","_RoadsGravel","_RoadsIntersect","_RoadsMud","_RoadsPaved","_RoadsRunways","_Helipads","_Structure",
"_cmbTypes","_cmbType","_types","_typ","_getMats","_arry"];
GlobalCraftingVariable = 1;
GlobalComboboxVariable = 99;
GlobalPreviewVariable = 0;
Crafting_Object_Direction = -0.5;
Crafting_Object_Radius = 7;
Crafting_Object_Height = 0;
Admin_Crafting = ["76561198155787911"]; //ListOfPUIDsofAdmin
AAC_1=false;
AAC_2=false;
AAC_3=false;

_RoadsAsphalt1 = ["MAP_asf1_0_2000","MAP_asf1_1_1000","MAP_asf1_10_100","MAP_asf1_10_25","MAP_asf1_10_50","MAP_asf1_10_75","MAP_asf1_12","MAP_asf1_15_75","MAP_asf1_22_50","MAP_asf1_25","MAP_asf1_30_25","MAP_asf1_6","MAP_asf1_60_10","MAP_asf1_6konec","MAP_asf1_7_100"];
_RoadsAsphalt2 = ["MAP_asf2_0_2000","MAP_asf2_1_1000","MAP_asf2_10_100","MAP_asf2_10_25","MAP_asf2_10_50","MAP_asf2_10_75","MAP_asf2_12","MAP_asf2_15_75","MAP_asf2_22_50","MAP_masf2_25","MAP_asf2_30_25","MAP_asf2_6","MAP_asf2_60_10","MAP_asf2_6konec","MAP_asf2_7_100"];
_RoadsAsphalt3 = ["MAP_asf3_0_2000","MAP_asf3_1_1000","MAP_asf3_10_100","MAP_asf3_10_25","MAP_asf3_10_50","MAP_asf3_10_75","MAP_asf3_12","MAP_asf3_15_75","MAP_asf3_22_50","MAP_asf3_25","MAP_asf3_30_25","MAP_asf3_6","MAP_asf3_60_10","MAP_asf3_6konec","MAP_asf3_7_100"];
_RoadsGravel = ["MAP_mud_0_2000","MAP_mud_1_1000","MAP_mud_10_100","MAP_mud_10_25","MAP_mud_10_50","MAP_mud_10_75","MAP_mud_12","MAP_mud_15_75","MAP_mud_22_50","MAP_mud_25","MAP_mud_30_25","MAP_mud_6","MAP_mud_60_10","MAP_mud_6konec","MAP_mud_7_100"];
_RoadsIntersect = ["MAP_kr_t_asf1_asf2","MAP_kr_t_asf1_asf3","MAP_kr_t_asf1_city","MAP_kr_t_asf2_asf2","MAP_kr_t_asf2_asf3","MAP_kr_t_asf3_asf2","MAP_kr_t_asf3_asf3","MAP_kr_t_asf3_grav","MAP_kr_t_asf3_mud","MAP_kr_t_city_asf3","MAP_kr_t_city_city","MAP_kr_t_mud_mud","MAP_kr_x_asf1_asf3","MAP_kr_x_asf1_city","MAP_kr_x_asf2_asf3","MAP_kr_x_asf2_city","MAP_kr_x_city_asf3","MAP_kr_x_city_city","MAP_kr_x_city_city_asf3"];
_RoadsMud = ["MAP_grav_0_2000","MAP_grav_1_1000","MAP_grav_10_100","MAP_grav_10_25","MAP_grav_10_50","MAP_grav_10_75","MAP_grav_12","MAP_grav_15_75","MAP_grav_22_50","MAP_grav_25","MAP_grav_30_25","MAP_grav_6","MAP_grav_60_10","MAP_grav_6konec","MAP_grav_7_100"];
_RoadsPaved = ["MAP_city_0_2000","MAP_city_1_1000","MAP_city_10_100","MAP_city_10_25","MAP_city_10_50","MAP_city_10_75","MAP_city_12","MAP_city_15_75","MAP_city_22_50","MAP_city_25","MAP_city_30_25","MAP_city_6","MAP_city_60_10","MAP_city_6konec","MAP_city_7_100"];
_RoadsRunways = ["MAP_runway_beton","MAP_runway_beton_end1","MAP_runway_beton_end2","MAP_runway_dirt_1","MAP_runway_dirt_2","MAP_runway_dirt_3","MAP_runway_end15","MAP_runway_end33","MAP_runway_main","MAP_runway_main_40","MAP_runway_poj_draha","MAP_runway_poj_L_1","MAP_runway_poj_L_1_end","MAP_runway_poj_L_2","MAP_runway_poj_L_2_end","MAP_runway_poj_spoj","MAP_runway_poj_spoj_2","MAP_runway_poj_T_1","MAP_runway_poj_T_2DefaultRunway","MAP_runwayold_40_main","MAP_runwayold_80_dirt"];
_Helipads = ["HeliH","HeliHCivil","HeliHRescue","MAP_Heli_H_army","MAP_Heli_H_cross","Sr_border"];
_Structure = ["MAP_bridge_asf1_25","MAP_Bridge_stone_asf2_25","MAP_Bridge_wood_25","MAP_Dam_Barrier_40","MAP_Dam_Conc_20","MAP_Dam_ConcP_20"];
publicTransportation = _RoadsAsphalt1 + _RoadsAsphalt2 + _RoadsAsphalt3 + _RoadsGravel + _RoadsIntersect + _RoadsMud + _RoadsPaved + _RoadsRunways + _Helipads + _Structure;

Custom_Buildables = [];
_cmbTypes = (missionConfigFile >> "Custom_Buildables" >> "Buildables");
for "_i" from 0 to ( count _cmbTypes ) -1 do
{
 private ["_cmbType","_typ","_getMats","_arry"];
 _x = _cmbTypes select _i;
 if( isClass _x ) then {
  _cmbType = configName _x;
  _types = (missionConfigFile >> "Custom_Buildables" >> "Buildables" >> _cmbType);
  for "_j" from 0 to ( count _types ) -1 do
  {
   _x = _types select _j; 
   if( isClass _x ) then {
     _typ = configName _x;
     _getMats = getArray(missionConfigFile >> "Custom_Buildables" >> "Buildables" >> _cmbType >> _typ >> "requiredmaterials");
     _arry = [];
     {
      if (_x in ["ItemTopaz","ItemObsidian","ItemSapphire","ItemAmethyst","ItemEmerald","ItemCitrine","ItemRuby"]) then {
       _arry = _arry + [[_x,1]];
      } else {
       _arry = _arry + [[_x,[0,1]]];
      };
     } foreach _getMats;
     if (!isDedicated) then {
     	DZE_modularConfig = DZE_modularConfig + [[_typ,_arry]];
     };
     Custom_Buildables = Custom_Buildables + [_typ];
     DayZ_SafeObjects = DayZ_SafeObjects + [_typ];
   };
  };
 };
};

if (!isDedicated) then {
	DZE_maintainClasses = DZE_maintainClasses + Custom_Buildables;
};
//{ diag_log format["Item in DZE_modularConfig : %1",_x];} foreach DZE_modularConfig;

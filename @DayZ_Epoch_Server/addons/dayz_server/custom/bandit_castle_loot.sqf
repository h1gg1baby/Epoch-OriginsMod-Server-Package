if (isServer) then {

//Crate0
_vehicle_103795 = objNull;
if (true) then
{
  _this = createVehicle ["TKVehicleBox_EP1", [967.58142, 17826.109, -0.022747643], [], 0, "CAN_COLLIDE"];
  _vehicle_103795 = _this;
    //Clear Cargo	
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  //Add Cargo
  
//Add Cargo
  _this addWeaponCargoGlobal ["DMR_DZ",5];
  _this addWeaponCargoGlobal ["NVGoggles",10];
  _this addWeaponCargoGlobal ["Binocular_Vector",10];
  _this addWeaponCargoGlobal ["ItemGPS",5];

  _this addmagazineCargoGlobal ["2000Rnd_762x51_L94A1",10];
  _this addmagazineCargoGlobal ["2000Rnd_762x51_M134",10];
  _this addmagazineCargoGlobal ["100Rnd_127x99_M2",10];
  _this addmagazineCargoGlobal ["150Rnd_127x107_DSHKM",10]; 
  _this addmagazineCargoGlobal ["20Rnd_762x51_FNFAL",10];
  _this addmagazineCargoGlobal ["ItemPainkiller",5];
  _this addmagazineCargoGlobal ["ItemMorphine",5];
  _this addmagazineCargoGlobal ["ItemBloodBag",5];
  _this addmagazineCargoGlobal ["ItemAntibiotic",5];

  _this addbackpackCargoGlobal ["DZ_LargeGunBag_EP1",3]; 
  
  _this setPos [967.58142, 17826.109, -0.022747643];
  _this setVariable ["permaLoot",true];
};


//Crate1
_vehicle_103797 = objNull;
if (true) then
{
  _this = createVehicle ["TKVehicleBox_EP1", [967.36365, 17831.914, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_103797 = _this;
    //Clear Cargo	
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  //Add Cargo
  
  _this addWeaponCargoGlobal ["ChainSawB",2];
  _this addWeaponCargoGlobal ["ChainSawP",2];

  _this addmagazineCargoGlobal ["metal_floor_kit",10];
  _this addmagazineCargoGlobal ["cinder_door_kit",10];
  _this addmagazineCargoGlobal ["cinder_garage_kit",10];
  _this addmagazineCargoGlobal ["PartPlywoodPack",10];
  _this addmagazineCargoGlobal ["PartPlankPack",10];
  _this addmagazineCargoGlobal ["bulk_PartGeneric",10];
  _this addmagazineCargoGlobal ["storage_shed_kit",10];  
  _this addmagazineCargoGlobal ["CinderBlocks",10];  
  _this addmagazineCargoGlobal ["MortarBucket",10];
  _this addmagazineCargoGlobal ["ItemLockbox",5];

  _this addbackpackCargoGlobal ["DZ_LargeGunBag_EP1",3]; 
  
  _this setPos [967.36365, 17831.914, -9.5367432e-006];
  _this setVariable ["permaLoot",true];
};


//Crate2
_vehicle_103798 = objNull;
if (true) then
{
  _this = createVehicle ["TKVehicleBox_EP1", [1111.3899, 17738.779, 0.56865621], [], 0, "CAN_COLLIDE"];
  _vehicle_103798 = _this;
    //Clear Cargo	
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  //Add Cargo
  
  _this addWeaponCargoGlobal ["DMR_DZ",5];
  _this addWeaponCargoGlobal ["NVGoggles_DZE",10];
  _this addWeaponCargoGlobal ["Binocular_Vector",10];
  _this addWeaponCargoGlobal ["ItemGPS",5];

  _this addmagazineCargoGlobal ["2000Rnd_762x51_L94A1",10];
  _this addmagazineCargoGlobal ["2000Rnd_762x51_M134",10];
  _this addmagazineCargoGlobal ["100Rnd_127x99_M2",10];
  _this addmagazineCargoGlobal ["150Rnd_127x107_DSHKM",10];
  _this addmagazineCargoGlobal ["20Rnd_762x51_FNFAL",10];
  _this addmagazineCargoGlobal ["ItemPainkiller",5];
  _this addmagazineCargoGlobal ["ItemMorphine",5];
  _this addmagazineCargoGlobal ["ItemBloodBag",5];
  _this addmagazineCargoGlobal ["ItemAntibiotic",5];
  _this addbackpackCargoGlobal ["DZ_LargeGunBag_EP1",3]; 
  _this setPos [1111.3899, 17738.779, 0.56865621];
  _this setVariable ["permaLoot",true];
};

//Crate3
_vehicle_103798 = objNull;
if (true) then
{
  _this = createVehicle ["TKVehicleBox_EP1", [1107.3418, 17785.561, 0.40967989], [], 0, "CAN_COLLIDE"];
  _vehicle_103798 = _this;
    //Clear Cargo	
  clearweaponcargoGlobal _this;
  clearmagazinecargoGlobal _this;
  //Add Cargo
  
  _this addWeaponCargoGlobal ["ChainSawB",2];
  _this addWeaponCargoGlobal ["ChainSawP",2];

  _this addmagazineCargoGlobal ["metal_floor_kit",10];
  _this addmagazineCargoGlobal ["cinder_door_kit",10];
  _this addmagazineCargoGlobal ["cinder_garage_kit",10];
  _this addmagazineCargoGlobal ["PartPlywoodPack",10];
  _this addmagazineCargoGlobal ["PartPlankPack",10];
  _this addmagazineCargoGlobal ["bulk_PartGeneric",10];
  _this addmagazineCargoGlobal ["storage_shed_kit",10];  
  _this addmagazineCargoGlobal ["CinderBlocks",10];  
  _this addmagazineCargoGlobal ["MortarBucket",10];
  _this addmagazineCargoGlobal ["ItemLockbox",5];

  _this addbackpackCargoGlobal ["DZ_LargeGunBag_EP1",3]; 
  
  _this setPos [1107.3418, 17785.561, 0.40967989];
  _this setVariable ["permaLoot",true];
};

};
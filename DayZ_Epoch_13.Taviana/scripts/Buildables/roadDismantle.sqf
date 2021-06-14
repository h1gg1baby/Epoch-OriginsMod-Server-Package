private["_objName","_found","_object","_roadType","_reqTools","_getMats","_objectID","_objectUID","_isOk","_proceed","_limit","_counter","_roadTar","_arrow"];

if (dayz_actionInProgress) exitWith {localize "str_player_actionslimit" call dayz_rollingMessages;};
dayz_actionInProgress = true;

_player = player;
_pos = getPos _player;
_types = publicTransportation;
_found = [];
_object = [];
_onRoad = isOnRoad _pos;
_search = nearestObjects [_pos, [], 5];
_subTypes = ["RoadsAsphalt1","RoadsAsphalt2","RoadsAsphalt3","RoadsGravel","RoadsIntersect","RoadsMud","RoadsPaved","RoadsRunways","Helipads"];

{
_road = _x;
  if ((typeOf _road) in publicTransportation) then {
    _objName = _road call fn_getModelName;
    _found = _found + [_objName];
    _object = _object + [_road];
  };
} forEach _search;

if !(count _found >= 1) exitWith { "You are not near any roads..." call dayz_rollingMessages;dayz_actionInProgress = false;};

if (count _found >= 1) then {
  {
  _branch = _x;
  _roadTar = _object select 0;
  _roadType = typeOf _roadTar;
  if (isClass(missionConfigFile >> "Custom_Buildables" >> "Buildables" >> _branch >> _roadType)) exitWith {
    _reqTools = getArray(missionConfigFile >> "Custom_Buildables" >> "Buildables" >> _branch >> _roadType >> "requiredtools");
    _getMats = getArray(missionConfigFile >> "Custom_Buildables" >> "Buildables" >> _branch >> _roadType >> "requiredmaterials");
    _objectID = _roadTar getVariable ["ObjectID","0"];
    _objectUID = _roadTar getVariable ["ObjectUID","0"];
    };
  } forEach _subTypes;
};

_hasAccess = [player, _roadTar] call FNC_check_access;
_allowed = ((_hasAccess select 0) || (_hasAccess select 2) || (_hasAccess select 3) || (_hasAccess select 4));

if !(_allowed || (_hasAccess select 1)) exitWith { "You have no rights to this road..." call dayz_rollingMessages;dayz_actionInProgress = false;};

_hasTools = _reqTools call player_hasTools;

if (!_hasTools) exitWith { format["You require all of these %1, to dismantle...",_reqTools] call dayz_rollingMessages;dayz_actionInProgress = false;};

_isOk = true;
_proceed = false;
_limit = 3;
_counter = 0;


//Arrow
_arrow = "Sign_arrow_down_EP1" createVehicleLocal (getPos _roadTar);
_arrow setVehiclePosition [(_roadTar modelToWorld [0,0,1]), [], 0];
_arrow attachTo [_roadTar,[0,0,1],""];

while {_isOk} do {
  
  ["Working",0,[20,48,15,0]] call dayz_NutritionSystem;
  player playActionNow "Medic";
  
  format["Dismantling of road in progress, stage %1 of %2",(_counter + 1),_limit] call dayz_rollingMessages;
  
  _dis=20;
  _sfx = "repair";
  [player,_sfx,0,false,_dis] call dayz_zombieSpeak;
  [player,_dis,true,(getPosATL player)] spawn player_alertZombies;
  
  r_interrupt = false;
  r_doLoop = true;
  _started = false;
  _finished = false;
  DZE_cancelBuilding = false;
  
  while {r_doLoop} do {
    _animState = animationState player;
    _isMedic = ["medic",_animState] call fnc_inString;
    
    if (_isMedic) then {
        _started = true;
    };
    if (_started && !_isMedic) then {
        r_doLoop = false;
        _finished = true;
    };
    if (r_interrupt || (player getVariable["inCombat",false])) exitWith {
        r_doLoop = false;
    };
    if (DZE_cancelBuilding) exitWith {
      r_doLoop = false;
    };
    sleep 0.1;
  };
  r_doLoop = false;
    
  if(!_finished) exitWith {
    _isOk = false;
    _proceed = false;
  };
  
  if(_finished) then {
		_counter = _counter + 1;
	};
  
  if(_counter == _limit) exitWith {
		_isOk = false;
		_proceed = true;
	};

};

if (_proceed) then {
  _countMats = count _getMats;
  _dir = getDir _player;
  _pos = getPos _player;
  _pos = [(_pos select 0)+2*sin(_dir),(_pos select 1)+2*cos(_dir),0];
  _holder = createVehicle ['Weaponholder',_pos,[],0,'NONE'];
  for "_i" from 0 to ((_countMats)- 1) do {
    if (random 1 > 0.5) then {
      _holder addMagazineCargoGlobal [(_getMats select _i),1];
    };
  };
  PVDZ_obj_Destroy = [_objectID,_objectUID,player,_roadTar,dayz_authKey];
  publicVariableServer "PVDZ_obj_Destroy";
  if (isServer) then {
    PVDZ_obj_Destroy call server_deleteObj;
  };
  deleteVehicle _roadTar;
  _holder setPosATL _pos;
  _roadTar reveal [_holder];
  DZE_GearCheckBypass = true;
  player action ["Gear", _holder];
};

deleteVehicle _arrow;

dayz_actionInProgress = false;
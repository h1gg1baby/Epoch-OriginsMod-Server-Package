/*
    Author: Sarge
 
    Description:
    Kills all zombies in a given distance from a given point.
 
    Needs 2 parameters:
 
    _location = the exact x/y/z location of the center of the area that should be zed free
    _range = the radius within which zeds get killed
 
 
*/
 
    private["_location","_radius","_nuker","_obj_text_string"];
 
    if(!isServer) exitwith{};
 
    _location = _this select 0;
    _radius = _this select 1;
 
    _nuker = createvehicle ["Sign_sphere25cm_EP1",[_location select 0,_location select 1,1] ,[],0,"NONE"];
    _nuker allowDamage false;
 
    _obj_text_string = format["#(argb,8,8,3)color(%1,%2,%3,%4,ca)",1,1,0,1];
    [nil,nil,rSETOBJECTTEXTURE,_nuker,0,_obj_text_string] call RE;
 
    [_nuker,_radius] spawn {
 
        private ["_nuker","_radius","_entity_array"];
        _nuker = _this select 0;
        _radius = _this select 1;
     
        while {true} do {
     
            _entity_array = (getPos _nuker) nearEntities ["CAManBase",_radius];
            {
                if (_x isKindof "zZombie_Base") then {
                    _x setDamage 1;
                };
            } forEach _entity_array;
            sleep 2;
        };
    };
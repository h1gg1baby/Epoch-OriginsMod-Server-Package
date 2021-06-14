private ["_item","_class"];
	disableSerialization;
	
	_class = _this select 0;
	
	if (_class=="") exitWith{	diag_log "Previewing: Input Error";	};

		_unittype = getText (configFile >> "CfgMagazines" >> _class >> "playerModel");
		
		preview_cameraPos = [(random 99999),(random 99999),1000];
		preview_camera = "camera" camCreate preview_cameraPos;
		preview_camera cameraEffect ["external","back"];
		preview_camera camSetFOV 0.7;
		preview_camera camCommit 0;
		waitUntil {camCommitted preview_camera};
		preview_camera setDir 180;

		deleteVehicle preview_bot;
		preview_bot = createAgent [_unittype,preview_cameraPos,[],0,"CAN_COLLIDE"];
		preview_bot switchMove "aidlpercmstpsnonwnondnon_player_idlesteady04";
		removeAllWeapons  preview_bot;
		preview_bot enableSimulation false;
		preview_bot setPosATL preview_cameraPos;

		preview_light = "#lightpoint" createVehicleLocal [0,0,0];
		preview_light setLightBrightness 290;
		preview_light setLightAmbient [1,1,1];
		preview_light setLightColor [1,1,1];
		preview_light lightAttachObject [preview_bot,[0,2,.1]];

		_pos = getPosASL preview_bot;
		_offset = [(_pos select 0),(_pos select 1)+2,(_pos select 2)+1];
		preview_camera setPosATL (ASLtoATL _offset);

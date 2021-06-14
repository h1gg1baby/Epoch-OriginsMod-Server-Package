private ["_pos","_class","_offset"];
	disableSerialization;

	_class = (_this select 0) select 0;


if (_class isKindOf "AllVehicles") then {
		preview_cameraPos = [(random 99999),(random 99999),1000];
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
		_offset = [(_pos select 0)+2,(_pos select 1)+15,(_pos select 2)+2];
		preview_camera setPosATL (ASLtoATL _offset);
	};
	
private ["_pos","_class","_offset"];
	disableSerialization;

		_class = (_this select 0) select 0;
		preview_cameraPos = [(getPos player select 0)+2,(getPos player select 1)+4,1000];
		preview_camera = "camera" camCreate preview_cameraPos;
		preview_camera cameraEffect ["external","back"];
		preview_camera camSetFOV 0.7;
		preview_camera camCommit 0;
		waitUntil {camCommitted preview_camera};
		preview_camera setDir 190;
		deleteVehicle vehicle_bot;
		
		vehicle_bot = "WeaponHolder" createVehicle preview_cameraPos;
		vehicle_bot enableSimulation false;
		vehicle_bot setPosATL preview_cameraPos;
		vehicle_bot addWeaponCargoGlobal [_class,1];
		vehicle_bot setVectorDirAndUp [[0,0.1,0.5],[0,-0.5,0.5]];
		_pos = getPosASL vehicle_bot;    
		_offset = [(_pos select 0)+0.6,(_pos select 1)+3,(_pos select 2)];
		preview_camera setPosATL (ASLtoATL _offset);

	
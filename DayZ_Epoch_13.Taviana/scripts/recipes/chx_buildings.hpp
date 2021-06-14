class BuildingCatalogue {
		idd = 8456;
		name= "BuildingCatalogue";
		movingEnabled = true;
		onload = "systemChat 'Press 4 and 6 to rotate left and right.'; uiNamespace setVariable ['BuildingCatalogue', _this select 0]; player setVariable['isBusy',true,true];vehicle_bot=objNull; preview_bot=objNull; preview_camera cameraEffect ['terminate','back']; camDestroy preview_camera; preview_camera = nil; preview_cameraPos = nil; "; 
		onUnload = "player setVariable['isBusy',false,true]; deleteVehicle vehicle_bot; deleteVehicle preview_bot; vehicle_bot=objNull; preview_bot=objNull; preview_camera cameraEffect ['terminate','back']; camDestroy preview_camera; preview_camera = nil; preview_cameraPos = nil; ";
	class ControlsBackground {
		class CHXBCATLBG: CHX_RscPicture {
			idc = -1;
			text = CHXBACKGROUND4;
			x = 0.0164805 * safezoneW + safezoneX;
			y = 0.115 * safezoneH + safezoneY;
			w = 0.277218 * safezoneW;
			h = 0.78375 * safezoneH;
		};
		class CHXBCATINFOBG: CHX_RscPicture {
			idc = -1;
			text = CHXBACKGROUND4;
			x = 0.706302 * safezoneW + safezoneX;
			y = 0.115 * safezoneH + safezoneY;
			w = 0.277218 * safezoneW;
			h = 0.78375 * safezoneH;
		};
		class CHXBCATTITLELIST: CHX_RscStructuredText {
			idc = -1;
			text = "Epoch Buildings";
			x = 0.0229274 * safezoneW + safezoneX;
			y = 0.12875 * safezoneH + safezoneY;
			w = 0.264324 * safezoneW;
			h = 0.04125 * safezoneH;
		};
	};
	class Controls {
		class CHXBCATLB: CHX_RscListbox {
			idc = 27421;
			idcLeft = -1;
			idcRight = -1;
			x = 0.0229274 * safezoneW + safezoneX;
			y = 0.18375 * safezoneH + safezoneY;
			w = 0.264324 * safezoneW;
			h = 0.70125 * safezoneH;
			soundSelect[] = {"",0.1,1};
			onLBDblClick  = "player spawn building_previews;  ";
			};
		class CHXBCATINFO: CHX_RscStructuredText {
			idc = 4442;
			text = "";
			x = 0.719195 * safezoneW + safezoneX;
			y = 0.1975 * safezoneH + safezoneY;
			w = 0.25143 * safezoneW;
			h = 0.6875 * safezoneH;
		};
		class CHXBCATBT2: CHX_RscButton {
			idc = 21601;
			text = "Exit";
			x = 0.422637 * safezoneW + safezoneX;
			y = 0.885 * safezoneH + safezoneY;
			w = 0.154726 * safezoneW;
			h = 0.04125 * safezoneH;
			onButtonClick = "closeDialog 0;";
			colorBackground[] = {0, 0, 0, 0.5};
		};
	};
};

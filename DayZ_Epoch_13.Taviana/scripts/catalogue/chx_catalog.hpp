class TradingCatalogue {
		idd = 711197;
		movingEnabled = false;
		onload = "systemChat 'Press 4 and 6 to rotate left and right.';  player setVariable['isBusy',true,true];vehicle_bot=objNull; preview_bot=objNull; preview_camera cameraEffect ['terminate','back']; camDestroy preview_camera; preview_camera = nil; preview_cameraPos = nil; "; 
		onUnload = "Z_AdvancedTradingInit = Nil; player setVariable['isBusy',false,true]; deleteVehicle vehicle_bot; deleteVehicle preview_bot; vehicle_bot=objNull; preview_bot=objNull; preview_camera cameraEffect ['terminate','back']; camDestroy preview_camera; preview_camera = nil; preview_cameraPos = nil; ";
	class Controls {
		class CHXCATALOGLBG: CHX_RscPicture {
			idc = 1500;
			text = CHXBACKGROUND4;
			x = 0.0294922 * safezoneW + safezoneX;
			y = 0.15625 * safezoneH + safezoneY;
			w = 0.238477 * safezoneW;
			h = 0.67375 * safezoneH;
		};
		class CHXCATALOGLB: CHX_RscListbox {
			idc = 7421;
			idcLeft = -1;
			idcRight = -1;
			x = 0.0294922 * safezoneW + safezoneX;
			y = 0.15625 * safezoneH + safezoneY;
			w = 0.238477 * safezoneW;
			h = 0.67375 * safezoneH;
			soundSelect[] = {"",0.1,1};
//			onload = "ctrlShow [_this,false]";
			onLBDblClick = "if (Z_CategoryView) then {(lbCurSel 7421) call Z_fillCategoryList;};";
			onLBSelChanged = "if (!Z_CategoryView) then {['buyable',(lbCurSel 7421)] call ZC_getItemInfo;};";
			};
		class CHXCATALOGINFOBG: CHX_RscPicture {
			idc = 1100;
			text = CHXBACKGROUND4;
			x = 0.732031 * safezoneW + safezoneX;
			y = 0.15625 * safezoneH + safezoneY;
			w = 0.238477 * safezoneW;
			h = 0.67375 * safezoneH;
		};
		class CHXCATALOGINFO: CHX_RscStructuredText {
			idc = 7445;
			text = "";
			x = 0.732031 * safezoneW + safezoneX;
			y = 0.15625 * safezoneH + safezoneY;
			w = 0.238477 * safezoneW;
			h = 0.67375 * safezoneH;
		};
		class CHXCATALOGBT1: CHX_RscButton {
			idc = 5681601;
			text = "Back";
			x = 0.0294922 * safezoneW + safezoneX;
			y = 0.84375 * safezoneH + safezoneY;
			w = 0.238477 * safezoneW;
			h = 0.0275 * safezoneH;
			onButtonClick = "Z_Selling = true; Z_CategoryView = true; call ZC_ChangeBuySell;"; 
			colorBackground[] = {0, 0, 0, 0.8};
		};
		class CHXCATALOGBT2: CHX_RscButton {
			idc = 1601;
			text = "Exit";
//			x = 0.886719 * safezoneW + safezoneX;
			x = 0.732031 * safezoneW + safezoneX;
			y = 0.84375 * safezoneH + safezoneY;
//			y = 0.89875 * safezoneH + safezoneY;
			w = 0.238477 * safezoneW;
			h = 0.0275 * safezoneH;
//			w = 0.103125 * safezoneW;
//			h = 0.06875 * safezoneH;
			onButtonClick = "closeDialog 0;";
			colorBackground[] = {0, 0, 0, 0.8};
		};
		class CHXCATALOGBT3: CHX_RscButton {
			idc = 1602;
			text = "Search";
			x = 0.60957 * safezoneW + safezoneX;
			y = 0.885 * safezoneH + safezoneY;
			w = 0.0902344 * safezoneW;
			h = 0.04125 * safezoneH;
			onButtonClick = "[(ctrlText 1400)] call Z_filterList";
			colorBackground[] = {0, 0, 0, 0.8};
		};
		class CHXCATALOGSERC: CHX_RscEdit {
			idc = 1400;
			x = 0.300195 * safezoneW + safezoneX;
			y = 0.885 * safezoneH + safezoneY;
			w = 0.283594 * safezoneW;
			h = 0.04125 * safezoneH;
		};
	};
};

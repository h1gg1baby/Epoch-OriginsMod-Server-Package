class ZCraft
{
	idd = 711196;
	onLoad = "uiNamespace setVariable ['ZCraft', _this select 0]";
	class Controls {
		class RscText_f7030: RscTextT
		{
			idc = -1;
			x = 0.30 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.30 * safezoneW;
			h = 0.40 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};	
		
		class RscText_e7037: RscTextT
		{
			idc = -1;
			text = "Crafting Menu";
			x = 0.30 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.30 * safezoneW;
			h = 0.05 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
			colorText[] = {1,1,1,1};
		};
		
		class Zupa_RscButtonMenu_d7039: Zupa_RscButtonMenu //1st row left
		{
			idc = -1;
			text = "Signs";
			x = 0.31 * safezoneW + safezoneX;
			y = 0.22 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			onButtonClick = "closeDialog 0;createDialog 'Advanced_Crafting';[] execVM 'scripts\Buildables\Amethyst.sqf';"; //signs
		};
		
		class Zupa_RscButtonMenu_c7040: Zupa_RscButtonMenu //1st row middle
		{
			idc = -1;
			text = "Interior";
			x = 0.41 * safezoneW + safezoneX;
			y = 0.22 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			onButtonClick = "closeDialog 0;createDialog 'Advanced_Crafting';[] execVM 'scripts\Buildables\Citrine.sqf';"; //interior
		};
		
		class Zupa_RscButtonMenu_a7031: Zupa_RscButtonMenu //1st row right
		{
			idc = -1;
			text = "Construction";
			x = 0.51 * safezoneW + safezoneX;
			y = 0.22 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			onButtonClick = "closeDialog 0;createDialog 'Advanced_Crafting';[] execVM 'scripts\Buildables\Emerald.sqf';"; //construction
		};

		class Zupa_RscButtonMenu_b7059: Zupa_RscButtonMenu //2nd row left
		{
			idc = -1;
			text = "Garden Accents";
			x = 0.31 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			onButtonClick = "closeDialog 0;createDialog 'Advanced_Crafting';[] execVM 'scripts\Buildables\Obsidian.sqf';"; //garden accents
		};
		
		class Zupa_RscButtonMenu_a7040: Zupa_RscButtonMenu //2nd row middle
		{
			idc = -1;
			text = "Furniture";
			x = 0.41 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			onButtonClick = "closeDialog 0;createDialog 'Advanced_Crafting';[] execVM 'scripts\Buildables\Ruby.sqf';"; //furniture
		};
		
		class Zupa_RscButtonMenu_a7051: Zupa_RscButtonMenu //2nd row right
		{
			idc = -1;
			text = "Flags";
			x = 0.51 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			onButtonClick = "closeDialog 0;createDialog 'Advanced_Crafting';[] execVM 'scripts\Buildables\Sapphire.sqf';"; //flags
		};
		
		class Zupa_RscButtonMenu_b7049: Zupa_RscButtonMenu //3rd row left
		{
			idc = -1;
			text = "Fortification";
			x = 0.31 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			onButtonClick = "closeDialog 0;createDialog 'Advanced_Crafting';[] execVM 'scripts\Buildables\Topaz.sqf';"; //fortification
		};
		
		class Zupa_RscButtonMenu_b7040: Zupa_RscButtonMenu //3rd row middle
		{
			idc = -1;
			text = "Lighting";
			x = 0.41 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			onButtonClick = "closeDialog 0;createDialog 'Advanced_Crafting';[] execVM 'scripts\Buildables\Lights.sqf';"; //lights
		};
		
		class Zupa_RscButtonMenu_c7031: Zupa_RscButtonMenu //3rd row right
		{
			idc = -1;
			text = "Transportation";
			x = 0.51 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			onButtonClick = "closeDialog 0;createDialog 'Advanced_Crafting';[] execVM 'scripts\Buildables\Transportation.sqf';"; //transportation
		};
		
		class Zupa_RscButtonMenu_d7031: Zupa_RscButtonMenu //4th row right
		{
			idc = -1;
			text = "Exit";
			x = 0.51 * safezoneW + safezoneX;
			y = 0.52 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 9000);";
		};
	};
};

/*----------------------------------------------------------------------------------
Global defines for all my menus to keep things easy.

Helpful links:
	http://killzonekid.com/hex-2-arma-gui-colour-converter/
	Google search "color picker"
	https://community.bistudio.com/wiki/FXY_File_Format#Arma_2


	Below are some quick settings to change the look of the menus :)
----------------------------------------------------------------------------------*/
#define CHXSERVERCOLOR							0.541,0,0.09												// 
#define CHXSERVERCOLORALF					0.541,0,0.09,1												// 
#define CHXSERVERCOLORHEX					"#8a0017"												// 
//--------------	
//----	Colors
#define CHXNULL												-1,-1,-1,-1							// NULL
#define CHXMAINBLACKBG								0,0,0,0.95							// MAINBG
#define CHXMAINBLACKBGT							1,1,1,1							// MAINBG
#define CHXWHITE											1,1,1,9								// White
#define CHXBLACK											0,0,0,9								// Black
#define CHXBGCOLORBGO								1,1,1,0.8							// Black 0.8
#define CHXCOLORGREY								0.216,0.231,0.263,1		// Dark Grey
#define CHXCOLORRED			 						0.541,0,0.09,1						// Dark Red
#define CHXCOLORGREEN								0.122,0.557,0.384,1			// Dark Green
#define CHXCOLORORANGE							0.831,0.42,0.157,1			// Dark Orange 
#define CHXCOLORLORANGE						1,0.471,0,1						// Light Orange 
#define CHXCOLORHEXW								"#FFFFFF"							// HEX White
#define CHXCOLORHEXB								"#000000"							// HEX Black
#define CHXCOLORHEXO								"#D46B28"						// HEX Dark Orange 
#define CHXCOLORHEXR								"#8a0017"						// HEX Dark Red 
#define CHXCOLORHEXG								"#204838"							// HEX Dark Green
#define CHXCOLORHEXLG								"#E5E5E5"						// HEX Light Grey

#define PM_MAINBACKGROUND					"#(argb,8,8,3)color(0,0,0,0.95)"		// Main Background Color (only seen without tablet)
#define CHX_BACKGROUNDDRK				"#(argb,8,8,3)color(0,0,0,0.95)"		
#define CHX_BACKGROUNDLIT					"#(argb,8,8,3)color(0.9,0.9,0.9,0.95)"		
#define PM_TABLET										"dayz_code\external\pmenu\tabby.paa"							// Set to "" to Disable
//#define PM_TABLET											""														// Disabled
#define PM_LOGO												"dayz_code\external\pmenu\logo.paa"							// Set to "" to Disable

#define PM_HEADERCOLOR							CHXCOLORHEXW
#define PM_HEADERTITLE								"PLAYER MENU"

#define PM_LISTBOXBAKGROUND				"#(argb,8,8,3)color(0,0,0,0.5)"

//----	Basics
#define CHXTEXTCOLOR									CHXWHITE									// Text Color
#define CHXFONT												"Zeppelin32"								// Font
#define CHXTEXTSIZE										0.03921											// Font Size
#define CHXBACKGROUND							"#(argb,8,8,3)color(0,0,0,0.95)"	//  Background Colour
#define CHXBACKGROUND4							"#(argb,8,8,3)color(0,0,0,0.65)"	//  Background Colour
#define CHXBACKGROUND2							"#(argb,8,8,3)color(0,0,0,0.3)"	//  Background Colour

//----------------------------------------------------------------------------------
//----	Buttons
#define CHXBTNTEXTSIZE								0.03921										// Font Size
#define CHXBTNTEXTCOLOR							1,1,1,0.9									// Text Color
#define CHXBTNTEXTCOLOR2						1,1,1,0.25									// Text Color
#define CHXBTNDISCOLOR								0,0,0,0.5										// Disabled Text Color
#define CHXBTNBGCOLOR								1,1,1,0.1									// Background Color
#define CHXBTNBGCOLOR2							1,1,1,0.25									// Background Color
#define CHXBTNACTBG									1,1,1,0.03									// BG Active Button
#define CHXBTNDISBG										1,1,1,0.03									// BG Disabled Button
#define CHXBTNFCSBG									1,1,1,0.3									// Focused
#define CHXBTNBORDERS								0													// Border Size
#define CHXBTNSHADOW								1													// Shadow
//----	List-box
#define CHXLBFONT											CHXFONT								//  
#define CHXLBCOLOR										CHXWHITE								//  
#define CHXLBTEXTSIZE									"(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .9)"										//  
#define CHXLBTEXTSHADOW							0													//  
#define CHXLBCOLORSCROLLBAR				CHXCOLORGREY					//  
#define CHXLBCOLORSELECT						CHXWHITE								//  
#define CHXLBCOLORSELECT2						CHXCOLORGREY					//  
#define CHXLBCOLORBACKGROUND			CHXBLACK								//  
#define CHXLBCOLORSELECTBG2				CHXCOLORGREY					//  
#define CHXLBARROWEMPTY						CHXBLACK								//  
#define CHXLBARROWFULL							CHXBLACK								//  
#define CHXARROWEMPTY								"#(argb,8,8,3)color(1,1,1,1)"	//
#define CHXARROWFULL								"#(argb,8,8,3)color(1,1,1,1)"	//
//----	Titles
#define CHXTEXTTBGCOLOR							CHXNULL								//  
#define CHXTEXTTCOLOR								CHXSERVERCOLORALF			// 
#define CHXTEXTTSIZE									0.04421										// Font Size
//----	Header
#define CHXBHEADBGCOLOR						CHXSERVERCOLORALF			// Header Background Dark Red 
#define CHXHDTEXTC										CHXCOLORHEXW					// Header Color / Arma Yellow 
#define CHXHDTEXTSIZE									0.03921										// Font Size
//----	Footer
#define CHXFOOTBGCOLOR							CHXSERVERCOLORALF			// Footer Background Dark Red 
#define CHXFTTEXTC										CHXCOLORHEXW					// Footer Color / Arma Yellow 
#define CHXFOOTTEXTSIZE							0.04421										// Font Size
//--------------

//----------------------------------------------------------------------------------
class CHX_RscText	{
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {CHXNULL};
	colorText[] = {CHXTEXTCOLOR};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 2;
	font = CHXFONT;
	sizeEx = 0.03921;
};
class CHX_RscStructuredText	{
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {CHXTEXTCOLOR};
	colorBackground[] = {CHXTEXTTBGCOLOR};
	class Attributes	{
		font = CHXFONT;
		color = CHXCOLORHEXW;
		align = "center";
		valign = "middle";	
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = CHXTEXTTSIZE;
	shadow = 2;
};
class CHX_RscStructuredTextOld	{
	access = 1;
	type = 13;
	idc = -1;
	style = 2; 
	font = CHXFONT;
	size = CHXTEXTTSIZE;
	colorText[] = {CHXTEXTTCOLOR};
	colorBackground[] = {CHXTEXTTBGCOLOR};
	text = "";
	shadow = 1;
	class Attributes {
		align = "center";
		valign = "middle";	
	};
};
class CHX_RscStructuredTitleText	{
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {CHXTEXTTCOLOR};
	colorBackground[] = {CHXTEXTTBGCOLOR};
	class Attributes	{
		font = CHXFONT;
		color = CHXSERVERCOLORHEX;
		align = "center";
		valign = "middle";	
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = CHXTEXTTSIZE;
	shadow = 2;
};
class CHX_RscHeader	{
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {CHXTEXTTCOLOR};
	colorBackground[] = {CHXBHEADBGCOLOR};
	class Attributes	{
		font = CHXFONT;
		color = CHXHDTEXTC;
		align = "center";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = CHXHDTEXTSIZE;
	shadow = 2;
};
class CHX_RscFooter	{
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {CHXFTTEXTC};
	colorBackground[] = {CHXFOOTBGCOLOR};
	class Attributes	{
		font = CHXFONT;
		color = CHXFTTEXTC;
		align = "center";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = CHXFOOTTEXTSIZE;
	shadow = 2;
};
class CHX_RscPictureFrame	{
	access = 0;
	type = 0;
	idc = -1;
	style = 64;
	colorBackground[] = {CHXBGCOLORBGO};
	colorText[] = {CHXBGCOLORBGO};
	font = CHXFONT;
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};
class CHX_RscPictureTitle	{
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[] = {CHXMAINBLACKBGT};
	colorText[] = {CHXMAINBLACKBGT};
	font = CHXFONT;
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};
class CHX_RscPicture	{
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[] = {CHXMAINBLACKBG};
	colorText[] = {CHXMAINBLACKBG};
	font = CHXFONT;
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};
class CHX_RscPictureTab	{
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[]={0,0,0,0};
	colorText[]={1,1,1,1};
	font = CHXFONT;
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};
class CHX_RscEdit	{
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = {CHXBGCOLORBGO};
	colorText[] = {CHXTEXTCOLOR};
	colorSelection[] = {CHXCOLORGREY};
	autocomplete = "";
	text = "";
	size = 0.2;
	style = "0x00 + 0x40";
	font = CHXFONT;
	shadow = 2;
	sizeEx = CHXTEXTSIZE;
};
class CHX_RscCombo	{
	access = 0;
	type = 4;
	style = 0x02;
	colorSelect[] = {CHXSERVERCOLORALF};
	colorText[] = {CHXWHITE};
	colorBackground[] = {CHXBLACK};
	colorScrollbar[] = {CHXCOLORGREY};
	soundSelect[] = {"",0.1,1};
	soundExpand[] = {"",0.1,1};
	soundCollapse[] = {"",0.1,1};
	maxHistoryDelay = 1;
	class ScrollBar	{
		color[] = {1,1,1,0.6};
		colorActive[] = {CHXBTNDISCOLOR};
		colorDisabled[] = {CHXCOLORGREY};
		shadow = 0;
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
	x = 0;
	y = 0;
	w = 0.12;
	h = 0.035;
	shadow = 0;
	colorSelectBackground[] = {CHXBTNDISCOLOR};
	arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	color[] = {CHXWHITE};
	colorActive[] = {CHXBTNDISCOLOR};
	colorDisabled[] = {CHXCOLORGREY};
	font = CHXFONT;
	sizeEx = CHXTEXTSIZE;
};
class CHX_RscListBox {
	style = 0; 
	type = 102;
	shadow = 0;
	font = "Zeppelin32";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .9)";
	color[] = {CHXCOLORGREY};
	colorText[] = {1,1,1,1.0};
	colorDisabled[] = {1,1,1,0.25};
	colorScrollbar[] = {CHXWHITE};
	colorSelect[] = {CHXSERVERCOLORALF};
	colorSelect2[] = {CHXWHITE};
	colorSelectBackground[] = {1,1,1,0.2};
	colorSelectBackground2[] = {1,1,1,0.2};
	period = 1.2;
	rowHeight = 0;
	soundSelect[] = {"",.1,1};
	soundExpand[] = {"",.1,1};
	soundCollapse[] = {"",.1,1};
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;  
	drawSideArrows = 1;
	idcRight = -1;
	idcLeft = -1;
class ListScrollBar {  

	color[] = {CHXWHITE};
//	colorActive[] = {CHXSERVERCOLORALF};
//	colorDisabled[] = {CHXCOLORGREY};
    colorActive[] = {1,1,1,1};
    colorDisabled[] = {1,1,1,0.3};
	shadow = 0;
	scrollSpeed = 0.06;
	width = 0;
	height = 0;
	autoScrollEnabled = 0;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
	arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
	border = "\ca\ui\data\ui_border_scroll_ca.paa";
};
class ScrollBar {  
	color[] = {1,1,1,0.6};
    colorActive[] = {1,1,1,1};
    colorDisabled[] = {1,1,1,0.3};
	shadow = 0;
	scrollSpeed = 0.06;
	width = 0;
	height = 0;
	autoScrollEnabled = 0;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
	arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
	border = "\ca\ui\data\ui_border_scroll_ca.paa";
   };
};
class CHX_RscButton	{
	access = 0;
	type = 1;
	text = "";
	colorText[] = {CHXBTNTEXTCOLOR};
	colorDisabled[] = {CHXBTNDISBG};
	colorBackground[] = {CHXBTNBGCOLOR2};
	colorBackgroundDisabled[] = {CHXBTNDISCOLOR};
	colorBackgroundActive[] = {CHXBTNBGCOLOR2};
	colorFocused[] = {CHXBTNBGCOLOR2};
	colorShadow[] = {0,0,0,0};
	colorBorder[] = {1,1,1,0.05};
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
	style = 2;
	x = 0;
	y = 0;
	w = 0.055589;
	h = 0.039216;
	shadow = 1;
	font = CHXFONT;
	sizeEx = CHXBTNTEXTSIZE;
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	borderSize = 0;
};
class CHX_RscButton2	{
	access = 0;
	type = 1;
	text = "";
	colorText[] = {CHXBTNTEXTCOLOR};
	colorDisabled[] = {CHXBTNDISBG};
	colorBackground[] = {CHXBTNBGCOLOR};
	colorBackgroundDisabled[] = {CHXBTNDISCOLOR};
	colorBackgroundActive[] = {CHXBTNACTBG};
	colorFocused[] = {CHXBTNFCSBG};
	colorShadow[] = {0,0,0,0};
	colorBorder[] = {1,1,1,0.05};
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
	style = 2;
	x = 0;
	y = 0;
	w = 0.055589;
	h = 0.039216;
	shadow = 1;
	font = CHXFONT;
	sizeEx = CHXBTNTEXTSIZE;
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	borderSize = 0;
};
class CHX_RscShortcutButton	{
	type = 16;
	x = 0.1;
	y = 0.1;
	class HitZone	{
		left = 0.004;
		top = 0.029;
		right = 0.004;
		bottom = 0.029;
	};
	class ShortcutPos	{
		left = 0.0145;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos	{
		left = 0.05;
		top = 0.034;
		right = 0.005;
		bottom = 0.005;
	};
	shortcuts[] = {};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	color[] = {CHXBTNTEXTCOLOR};
	color2[] = {CHXBTNTEXTCOLOR2};
	colorDisabled[] = {CHXBTNDISTEXTCOLOR};
	colorBackground[] = {CHXBTNBGCOLOR};
	colorBackground2[] = {CHXBTNBGCOLOR2};
	class Attributes	{
		font = CHXFONT;
		color = CHXCOLORHEXLG;
		align = "left";
		shadow = "true";
	};
	idc = -1;
	style = 0;
	default = 0;
	shadow = CHXBTNSHADOWS;
	w = 0.183825;
	h = 0.104575;
	periodFocus = 1.2;
	periodOver = 0.8;
	animTextureNormal = "\ca\ui\data\ui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\ui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\ui_button_focus_ca.paa";
	animTexturePressed = "\ca\ui\data\ui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\ui_button_default_ca.paa";
	period = 0.4;
	font = CHXFONT;
	size =CHXTEXTSIZE;
	sizeEx = CHXTEXTSIZE;
	text = "";
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
	action = "";
	class AttributesImage	{
		font = CHXFONT;
		color = CHXCOLORHEXLG;
		align = "left";
	};
};
class CHX_RscShortcutButtonMain	{
	idc = -1;
	style = 0;
	default = 0;
	w = 0.313726;
	h = 0.104575;
	color[] = {CHXTEXTCOLOR};
	colorDisabled[] = {1,1,1,0.25};
	class HitZone	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos	{
		left = 0.0204;
		top = 0.026;
		w = 0.0392157;
		h = 0.0522876;
	};
	class TextPos	{
		left = 0.08;
		top = 0.034;
		right = 0.005;
		bottom = 0.005;
	};
	animTextureNormal = "\ca\ui\data\ui_button_main_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_main_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\ui_button_main_over_ca.paa";
	animTextureFocused = "\ca\ui\data\ui_button_main_focus_ca.paa";
	animTexturePressed = "\ca\ui\data\ui_button_main_down_ca.paa";
	animTextureDefault = "\ca\ui\data\ui_button_main_normal_ca.paa";
	period = 0.5;
	font = CHXFONT;
	size = CHXTEXTSIZE;
	sizeEx = CHXTEXTSIZE;
	text = "";
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
	action = "";
	class Attributes	{
		font = CHXFONT;
		color = CHXCOLORHEXLG;
		align = "left";
		shadow = "false";
	};
	class AttributesImage	{
		font = CHXFONT;
		color = CHXCOLORHEXLG;
		align = "false";
	};
};
class CHX_RscExitButton {
	access = 0;
	type = 1;
	text = "";
	colorText[] = {1,1,1,0.4};
	colorDisabled[] = {0,0,0,0.1};
	colorBackground[] = {0,0,0,0.1};
	colorBackgroundDisabled[] = {0,0,0,0.1};
	colorBackgroundActive[] = {0,0,0,0.1};
	colorFocused[] = {0,0,0,0.1};
	colorShadow[] = {0.023529,0,0.0313725,0};
	colorBorder[] = {0.023529,0,0.0313725,0};
	soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
	soundPush[] = {"\ca\ui\data\sound\new1",0,0};
	soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
	soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "Zeppelin32";
	sizeEx = 0.03921;
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	borderSize = 0;
};
class CHX_RscFrame	{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] = {CHXBGCOLORBGO};
	colorText[] = {CHXBGCOLORBGO};
	font = CHXFONT;
	sizeEx = 0.02;
	text = "";
};
class CHX_RscSlider	{
	access = 0;
	type = 3;
	style = 1024;
	w = 0.3;
	color[] = {CHXTEXTCOLOR};
	colorActive[] = {CHXCOLORGREY};
	shadow = 0;
	h = 0.025;
};
class CHX_SPAWNMAP {
	moveOnEdges = 0;
	shadow = 0;
	maxSatelliteAlpha = .85;
	alphaFadeStartScale = .35;
	alphaFadeEndScale = .4;
	colorOutside[] = {0,0,0,1};			
	style = 48;
	font = "EtelkaNarrowMediumPro";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .6)";
	type = 101;
	colorBackground[] = {.8,.8,.8,1};
	colorText[] = {0,0,0,1};
	colorRailway[] = {.5,.5,.5,.5};
	colorSea[] = {.56,.8,.98,.5};
	colorForest[] = {.6,.8,.2,.5};
	colorRocks[] = {.5,.5,.5,.5};
	colorCountlines[] = {.65,.45,.27,.5};
	colorMainCountlines[] = {.65,.45,.27,1};
	colorCountlinesWater[] = {0,.53,1,.5};
	colorMainCountlinesWater[] = {0,.53,1,1};
	colorForestBorder[] = {.4,.8,0,1};
	colorRocksBorder[] = {.5,.5,.5,1};
	colorPowerLines[] = {0,0,0,1};
	colorNames[] = {0,0,0,1};
	colorInactive[] = {1,1,1,.5};
	colorLevels[] = {.286,.177,.094,.5};
	fontLabel = CHXFONT;
	sizeExLabel = .04;
	fontGrid = CHXFONT;
	sizeExGrid = .04;
	fontUnits = CHXFONT;
	sizeExUnits = .04;
	fontNames = CHXFONT;
	sizeExNames = .04;
	fontInfo = CHXFONT;
	sizeExInfo = .04;
	fontLevel = CHXFONT;
	sizeExLevel = .04;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	stickX[] = {.2,{"Gamma",1,1.5}};
	stickY[] = {.2,{"Gamma",1,1.5}};
	ptsPerSquareSea = 6;
	ptsPerSquareTxt = 8;
	ptsPerSquareCLn = 8;
	ptsPerSquareExp = 8;
	ptsPerSquareCost = 8;
	ptsPerSquareFor = "4.0f";
	ptsPerSquareForEdge = "10.0f";
	ptsPerSquareRoad = 2;
	ptsPerSquareObj = 10;
	showCountourInterval = 0;
	onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)";
	onMouseButtonDown = "mouseButtonDown = _this Select 1";
			onMouseButtonUp = "mouseButtonUp = _this Select 1";		
	class CustomMark {
		icon = "\ca\ui\data\map_waypoint_ca.paa";
		color[] = {0,0,1,1};
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class Bunker {
		icon = "\ca\ui\data\map_bunker_ca.paa";
		color[] = {0,0,1,1};
		size = 14;
		importance = 1.5 * 14 * .05;
		coefMin = .25;
		coefMax = 4;
	};
	class Bush {
		icon = "\ca\ui\data\map_bush_ca.paa";
		color[] = {.55,.64,.43,1};
		size = 14;
		importance = .2 * 14 * .05;
		coefMin = .25;
		coefMax = 4;
	};
	class BusStop {
		icon = "\ca\ui\data\map_busstop_ca.paa";
		color[] = {0,0,1,1};
		size = 10;
		importance = 1 * 10 * .05;
		coefMin = .25;
		coefMax = 4;
	};
	class Command {
		icon = "#(argb,8,8,3)color(1,1,1,1)";
		color[] = {0,.9,0,1};
		size = 18;
		importance = 1;
		coefMin = 1;
		coefMax = 1;
	};
	class Cross {
		icon = "\ca\ui\data\map_cross_ca.paa";
		color[] = {0,0,1,1};
		size = 16;
		importance = .7 * 16 * .05;
		coefMin = .25;
		coefMax = 4;
	};
	class Fortress {
		icon = "\ca\ui\data\map_bunker_ca.paa";
		color[] = {0,0,1,1};
		size = 16;
		importance = 2 * 16 * .05;
		coefMin = .25;
		coefMax = 4;
	};
	class Fuelstation {
		icon = "#(argb,8,8,3)color(0,0,0,1)";
		color[] = {0,0,0,1};
		size = 16;
		importance = 2 * 16 * .05;
		coefMin = .75;
		coefMax = 4;
	};
	class Fountain {
		icon = "\ca\ui\data\map_fountain_ca.paa";
		color[] = {0,.35,.7,1};
		size = 12;
		importance = 1 * 12 * .05;
		coefMin = .25;
		coefMax = 4;
	};
	class Hospital {
		icon = "\ca\ui\data\map_hospital_ca.paa";
		color[] = {.78,0,.05,1};
		size = 16;
		importance = 2 * 16 * .05;
		coefMin = .5;
		coefMax = 4;
	};
	class Chapel {
		icon = "\ca\ui\data\map_chapel_ca.paa";
		color[] = {0,0,1,1};
		size = 16;
		importance = 1 * 16 * .05;
		coefMin = .9;
		coefMax = 4;
	};
	class Church {
		icon = "\ca\ui\data\map_church_ca.paa";
		color[] = {0,0,1,1};
		size = 16;
		importance = 2 * 16 * .05;
		coefMin = .9;
		coefMax = 4;
	};
	class Legend {
		x = "SafeZoneX";
		y = "SafeZoneY";
		w = .34;
		h = .152;
		font = "Zeppelin32";
		sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .6)";
		colorBackground[] = {0,0,0,1};
		color[] = {0,0,0,1};
	};
	class Lighthouse {
		icon = "\ca\ui\data\map_lighthouse_ca.paa";
		color[] = {.78,0,.05,1};
		size = 20;
		importance = 3 * 16 * .05;
		coefMin = .9;
		coefMax = 4;
	};
	class Quay {
		icon = "\ca\ui\data\map_quay_ca.paa";
		color[] = {0,0,1,1};
		size = 16;
		importance = 2 * 16 * .05;
		coefMin = .5;
		coefMax = 4;
	};
	class Rock {
		icon = "\ca\ui\data\map_rock_ca.paa";
		color[] = {0,0,1,1};
		size = 12;
		importance = .5 * 12 * .05;
		coefMin = .25;
		coefMax = 4;
	};
	class Ruin {
		icon = "\ca\ui\data\map_ruin_ca.paa";
		color[] = {.78,0,.05,1};
		size = 16;
		importance = 1.2 * 16 * .05;
		coefMin = 1;
		coefMax = 4;
	};
	class SmallTree {
		icon = "\ca\ui\data\map_smalltree_ca.paa";
		color[] = {.55,.64,.43,1};
		size = 12;
		importance = .6 * 12 * .05;
		coefMin = .25;
		coefMax = 4;
	};
	class Stack {
		icon = "\ca\ui\data\map_stack_ca.paa";
		color[] = {0,0,1,1};
		size = 20;
		importance = 2 * 16 * .05;
		coefMin = .9;
		coefMax = 4;
	};
	class Task {
		icon = "\ca\ui\data\ui_taskstate_current_CA.paa";
		iconCreated = "\ca\ui\data\ui_taskstate_new_CA.paa";
		iconCanceled = "#(argb,8,8,3)color(0,0,0,0)";
		iconDone = "\ca\ui\data\ui_taskstate_done_CA.paa";
		iconFailed = "\ca\ui\data\ui_taskstate_failed_CA.paa";
		color[] = {.863,.584,.0,1};
		colorCreated[] = {.95,.95,.95,1};
		colorCanceled[] = {.606,.606,.606,1};
		colorDone[] = {.424,.651,.247,1};
		colorFailed[] = {.706,.0745,.0196,1};
		size = 10;
		coefMin = 1;
		coefMax = 4;
		importance = 1;
	};
	class Tree {
		icon = "\ca\ui\data\map_tree_ca.paa";
		color[] = {.55,.64,.43,1};
		size = 12;
		importance = .9 * 16 * .05;
		coefMin = .25;
		coefMax = 4;
	};
	class Tourism {
		icon = "\ca\ui\data\map_tourism_ca.paa";
		color[] = {.78,0,.05,1};
		size = 16;
		importance = 1 * 16 * .05;
		coefMin = .7;
		coefMax = 4;
	};
	class Transmitter {
		icon = "\ca\ui\data\map_transmitter_ca.paa";
		color[] = {0,0,1,1};
		size = 20;
		importance = 2 * 16 * .05;
		coefMin = .9;
		coefMax = 4;
	};
	class ViewTower {
		icon = "\ca\ui\data\map_viewtower_ca.paa";
		color[] = {0,0,1,1};
		size = 16;
		importance = 2.5 * 16 * .05;
		coefMin = .5;
		coefMax = 4;
	};
	class Watertower {
		icon = "\ca\ui\data\map_watertower_ca.paa";
		color[] = {0,.35,.7,1};
		size = 32;
		importance = 1.2 * 16 * .05;
		coefMin = .9;
		coefMax = 4;
	};
	class Waypoint {
		icon = "\ca\ui\data\map_waypoint_ca.paa";
		color[] = {0,0,1,1};
		size = 14;
		importance = 2.5 * 16 * .05;
		coefMin = .5;
		coefMax = 4;
	};
	class WaypointCompleted {
		icon = "\ca\ui\data\map_waypoint_completed_ca.paa";
		color[] = {0,0,1,1};
		size = 14;
		importance = 2.5 * 16 * .05;
		coefMin = .5;
		coefMax = 4;
	};
	class ActiveMarker {
		icon = "";
		color[] = {0,0,1,1};
		size = 14;
		importance = 2.5 * 16 * .05;
		coefMin = .5;
		coefMax = 4;
	};
};
class CHX_RscProgressLoad {
	type = 8;
	style = 0;
	colorFrame[] = {1,1,1,1};
	colorBar[] = {1,1,1,0.5};
	texture = "#(argb,8,8,3)color(1,1,1,1)";
	w = 1;
	h = 0.02;
};



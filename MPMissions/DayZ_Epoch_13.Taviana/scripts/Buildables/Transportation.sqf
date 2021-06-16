disableSerialization;
{ctrlShow [_x,false];} forEach [1105,4903,4904,4905,4906,4907,4908,4909]; 	
_comboBox = 3900; 
ctrlSetText [1001,"Transportation"];
GlobalCraftingVariable = 1;
GlobalComboboxVariable = 99;
ComboBoxResult="";

{_index = lbAdd [_comboBox, _x]; } 
forEach [
"RoadsAsphalt1",
"RoadsAsphalt2",
"RoadsAsphalt3",
"RoadsGravel",
"RoadsIntersect",
"RoadsMud",
"RoadsPaved",
"RoadsRunways",
"RoadsStructures"
]; 

while {GlobalCraftingVariable==1} do {

	switch(GlobalComboboxVariable) do
	{
	case 0:
	{
	ComboBoxResult="RoadsAsphalt1";
	call fnc_Load_Items;
	};
	case 1:
	{
	ComboBoxResult="RoadsAsphalt2";
	call fnc_Load_Items;
	};
	case 2:
	{
	ComboBoxResult="RoadsAsphalt3";
	call fnc_Load_Items;
	};
	case 3:
	{
	ComboBoxResult="RoadsGravel";
	call fnc_Load_Items;
	};
	case 4:
	{
	ComboBoxResult="RoadsIntersect";
	call fnc_Load_Items;
	};
	case 5:
	{
	ComboBoxResult="RoadsMud";
	call fnc_Load_Items;
	};
	case 6:
	{
	ComboBoxResult="RoadsPaved";
	call fnc_Load_Items;
	};
	case 7:
	{
	ComboBoxResult="RoadsRunways";
	call fnc_Load_Items;
	};
	case 8:
	{
	ComboBoxResult="RoadsStructures";
	call fnc_Load_Items;
	};

	default { };
	};

};

closeDialog 0;
//player_selectSlot = compile preprocessFileLineNumbers "scripts\Buildables\ui_selectSlot.sqf";
//fnc_usec_selfActions = compile preprocessFileLineNumbers "scripts\fn_selfActions.sqf"; 

fnc_Load_Mats_and_Tools = {
//5900-5903 tools
//6901-6912 materials
ctrlSetText [5900,""];
ctrlSetText [5901,""];
ctrlSetText [5902,""];
ctrlSetText [5903,""];

ctrlSetText [6900,""];
ctrlSetText [6901,""];
ctrlSetText [6902,""];
ctrlSetText [6903,""];
ctrlSetText [6904,""];
ctrlSetText [6905,""];
ctrlSetText [6906,""];
ctrlSetText [6907,""];
ctrlSetText [6908,""];
ctrlSetText [6909,""];
ctrlSetText [6910,""];
ctrlSetText [6911,""];

_lbIndex=lbCurSel 3901;
_lbText=lbText [3901,_lbIndex];

_toolTmp = "";
_weaps = weapons player;
_requiredtools = getArray (missionConfigFile >> "Custom_Buildables" >> "Buildables" >> ComboBoxResult >> _lbText >> "requiredtools");
_craftdialog = uiNamespace getVariable "Advanced_CraftingV";
_counter=0;

while {count _requiredtools > 0} do { 
_toolTmp = _requiredtools select 0;
_tmp_Pos=_weaps find _toolTmp;
_toolTmp = getText (configFile >> "CfgWeapons" >> _toolTmp >> "displayName");
switch (_counter) do {
case 0: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 5900) ctrlSetTextColor [0.2,0.839,0.2,1];
_weaps set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 5900) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [5900,_toolTmp];
};
case 1: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 5901) ctrlSetTextColor [0.2,0.839,0.2,1];
_weaps set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 5901) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [5901,_toolTmp];
};
case 2: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 5902) ctrlSetTextColor [0.2,0.839,0.2,1];
_weaps set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 5902) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [5902,_toolTmp];
};
case 3: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 5903) ctrlSetTextColor [0.2,0.839,0.2,1];
_weaps set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 5903) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [5903,_toolTmp];
};
default {};
};
_requiredtools set [0,objNull];
_requiredtools=_requiredtools-[objNull];
_weaps = _weaps-[objNull];
_counter=_counter + 1;
};


_materialTmp = "";
_mags = magazines player;
_requiredmaterials = getArray (missionConfigFile >> "Custom_Buildables" >> "Buildables" >> ComboBoxResult >> _lbText >> "requiredmaterials");
_counter=0;

while{count _requiredmaterials>0} do { 

_materialTmp = _requiredmaterials select 0;
_tmp_Pos=_mags find _materialTmp;
_materialTmp = getText(configFile >> "cfgMagazines" >> _materialTmp >> "displayName");
switch (_counter) do {
case 0: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6900) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6900) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6900,_materialTmp];
};
case 1: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6901) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6901) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6901,_materialTmp];
};
case 2: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6902) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6902) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6902,_materialTmp];
};
case 3: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6903) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6903) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6903,_materialTmp];
};
case 4: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6904) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6904) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6904,_materialTmp];
};
case 5: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6905) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6905) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6905,_materialTmp];
};
case 6: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6906) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6906) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6906,_materialTmp];
};
case 7: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6907) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6907) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6907,_materialTmp];
};
case 8: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6908) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6908) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6908,_materialTmp];
};
case 9: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6909) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6909) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6909,_materialTmp];
};
case 10: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6910) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6910) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6910,_materialTmp];
};
case 11: 
{
if (_tmp_Pos > -1) then {
(_craftdialog displayCtrl 6911) ctrlSetTextColor [0.2,0.839,0.2,1];
_mags set [_tmp_Pos,objNull];
} else {
(_craftdialog displayCtrl 6911) ctrlSetTextColor [1,0.278,0.278,1];
};
ctrlSetText [6911,_materialTmp];
};

default {};
};
_requiredmaterials set [0,objNull];
_requiredmaterials=_requiredmaterials-[objNull];
_mags=_mags-[objNull];
_counter=_counter + 1;
}; 





};

fnc_Load_Items = {
_itemsBox = 3901;
lbClear _itemsBox;
_cmbArray=[];
_cmbType=[];
_cmbType = (missionConfigFile >> "Custom_Buildables" >> "Buildables" >> ComboBoxResult); 
for "_i" from 0 to ( count _cmbType ) -1 do 
{ 
    _entry = _cmbType select _i; 
    if( isClass _entry ) then 
    { 
        _class = configName _entry; 
        _cmbArray set [count _cmbArray, _class]; 
        }; 
    }; 
//Add to Shelf
{lbAdd [_itemsbox, _x]} forEach _cmbArray;
//_count= count _cmbArray;
//diag_log format ["%1",_cmbArray];
//diag_log format ["%1",_count];
GlobalComboboxVariable=99;
};
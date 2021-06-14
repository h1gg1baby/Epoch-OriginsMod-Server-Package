/*
 Combine Bandage by Schalldampfer
 Count and combine Origins Packed Bandages
*/

//Count Bandages
local _numBand1 = { _x == "ItemBandage" } count magazines player;
local _numBand2 = { _x == "ItemBandL2" } count magazines player;
local _numBand3 = { _x == "ItemBandL3" } count magazines player;

//Calculate whole No. of bandages
local _numBand = _numBand1 + 2 * _numBand2 + 3 * _numBand3;
format["You have %1 Bandages.", _numBand] call dayz_rollingMessages;

local _numNewBand3 = floor (_numBand / 3);
local _numNewBand2 = floor ((_numBand - 3 * _numNewBand3) / 2);
local _numNewBand1 = floor (_numBand - 3 * _numNewBand3 - 2 * _numNewBand2);

//Remove
{player removeMagazines _x;} forEach ["ItemBandage","ItemBandL2","ItemBandL3"];

//Add
for "_i" from 1 to _numNewBand3 do {player addMagazine "ItemBandL3"};
for "_i" from 1 to _numNewBand2 do {player addMagazine "ItemBandL2"};
for "_i" from 1 to _numNewBand1 do {player addMagazine "ItemBandage"};

//"You combined Bandages." call dayz_rollingMessages;

_refinery=player getvariable ["RefineryObject","non"];
_refList=getitemcargo _refinery;
	_refineryItems=_refList select 0;
	_Refinerynumbers=_refList select 1;
_PlayerInvArray=[player] call aph_fnc_CheckPlayerInventory;
	_PlayerItems=_PlayerInvArray select 0;
	_PlayerCounts=_PlayerInvArray select 1;
//End Variables

//Sort only accepted
_acceptedPlayerList=[_PlayerItems] call aph_fnc_Ref_QueryAccepted;
_acceptedRefList=[_refineryItems] call aph_fnc_Ref_QueryAccepted;

//Edit Listboxes
lbclear 1500;
lbclear 1501;

//Add to player list
{	
	_index=(_PlayerItems find _x);
	_var=_PlayerCounts select _index;
lbadd [1500,format ["%1 %2",_var,gettext (configfile >> "CfgWeapons" >> _x >> "displayName")]];
lbsetpicture [1500,_ForeachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1500,_ForeachIndex,[1,1,1,1]];
}
foreach _acceptedPlayerList;


//add to _refine list
{
	_index=(_refineryItems find _x);
	_var=_Refinerynumbers select _index;
lbadd [1501,format ["%1 %2",_var,gettext (configfile >> "CfgWeapons" >> _x >> "displayName")]];
lbsetpicture [1501,_ForeachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_ForeachIndex,[1,1,1,1]];
}
foreach _acceptedRefList; 

/*
	//Raw
if (_x=="aph_IronOre") then {
lbadd [1500,format ["%1 Iron ore",_var]];
};
if (_x=="aph_GoldOre") then {
lbadd [1500,format ["%1 Gold ore",_var]];
};
if (_x=="aph_PlatinumOre") then {
lbadd [1500,format ["%1 Platinum ore",_var]];
};
if (_x=="aph_StoneGravel") then {
lbadd [1500,format ["%1 Stone gravel",_var]];
};
if (_x=="aph_WoolFiber") then {
lbadd [1500,format ["%1 Wool fiber",_var]];
};
if (_x=="aph_FlaxFiber") then {
lbadd [1500,format ["%1 Flax fiber",_var]];
};
if (_x=="aph_WoodPiece") then {
lbadd [1500,format ["%1 Wood piece(s)",_var]];
};
if (_x=="aph_Switchgrass") then {
lbadd [1500,format ["%1 switchgrass bundle(s)",_var]];
};
	//Processed
if (_x=="aph_IronBar") then {
lbadd [1500,format ["%1 Iron bar(s)",_var]];
};
if (_x=="aph_SteelBar") then {
lbadd [1503,format ["%1 Steel bar(s)",_var]];
};
if (_x=="aph_GoldBar") then {
lbadd [1500,format ["%1 Gold bar(s)",_var]];
};
if (_x=="aph_PlatinumBar") then {
lbadd [1500,format ["%1 Platinum bar(s)",_var]];
};
if (_x=="aph_StoneBrick") then {
lbadd [1500,format ["%1 Stone brick(s)",_var]];
};
if (_x=="aph_WoolCloth") then {
lbadd [1500,format ["%1 Wool cloth",_var]];
};
if (_x=="aph_FlaxCloth") then {
lbadd [1500,format ["%1 Flax cloth",_var]];
};
if (_x=="aph_WoodPlank") then {
lbadd [1500,format ["%1 Wood plank(s)",_var]];
};
if (_x=="aph_PlasticBar") then {
lbadd [1500,format ["%1 Plastic bar(s)",_var]];
};
	//Raw
if (_x=="aph_IronOre") then {
lbadd [1501,format ["%1 Iron ore",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_GoldOre") then {
lbadd [1501,format ["%1 Gold ore",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_PlatinumOre") then {
lbadd [1501,format ["%1 Platinum ore",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_StoneGravel") then {
lbadd [1501,format ["%1 Stone gravel",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_WoolFiber") then {
lbadd [1501,format ["%1 Wool fiber",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_FlaxFiber") then {
lbadd [1501,format ["%1 Flax fiber",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_WoodPiece") then {
lbadd [1501,format ["%1 Wood piece(s)",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_Switchgrass") then {
lbadd [1501,format ["%1 switchgrass bundle(s)",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
	//Processed
if (_x=="aph_IronBar") then {
lbadd [1501,format ["%1 Iron bar(s)",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_SteelBar") then {
lbadd [1501,format ["%1 Steel bar(s)",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_GoldBar") then {
lbadd [1501,format ["%1 Gold bar(s)",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_PlatinumBar") then {
lbadd [1501,format ["%1 Platinum bar(s)",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_StoneBrick") then {
lbadd [1501,format ["%1 Stone brick(s)",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_WoolCloth") then {
lbadd [1501,format ["%1 Wool cloth",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_FlaxCloth") then {
lbadd [1501,format ["%1 Flax cloth",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_WoodPlank") then {
lbadd [1501,format ["%1 Wood plank(s)",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
if (_x=="aph_PlasticBar") then {
lbadd [1501,format ["%1 Plastic bar(s)",_var]];
lbsetpicture [1501,_foreachIndex,gettext (configfile >> "CfgWeapons" >> _x >> "picture")];
lbSetPictureColor [1501,_foreachIndex,[1,1,1,1]];
};
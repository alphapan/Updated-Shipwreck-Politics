disableSerialization;
	_display = uiNameSpace getVariable "PlayerUINotebookCrafting";
	_LeftText = _display displayCtrl 11100;
	_RightText=	_display displayCtrl 11101;
			_LeftTopLB=_display displayCtrl 11500;
			_LeftBottomLB=_display displayCtrl 11501;
_indexT=lbcursel _LeftTopLB;
_indexB=lbcursel _LeftBottomLB;
_text=_LeftTopLB lbText _indexT;

if (_toptext=="Plants") exitwith {hint "Place plant"};
if !(_text=="Wheat Stalk") then {[] spawn aph_fnc_Jrl_ClearUI;};

//Build Selected Object
_fortlist=player getvariable ["APH_FortificationBuildList","none"];
_buildinglist=player getvariable ["APH_BuildingBuildList","none"];
_BExtlist=player getvariable ["APH_BExtensionBuildList","none"];
_Towerlist=player getvariable ["APH_FurnitureBuildList","none"];

switch(_indexTop) do {
	case 0: {player setvariable ["CurrentBuildingArrayShown",_fortlist];};
	case 1: {player setvariable ["CurrentBuildingArrayShown",_buildinglist];};
	case 2: {player setvariable ["CurrentBuildingArrayShown",_BExtlist];};
	case 3: {player setvariable ["CurrentBuildingArrayShown",_Towerlist];};
};
_list=player getvariable "CurrentBuildingArrayShown";
_create=(_list select _indexbttm) select 1;
_CostArray=(_list select _indexbttm) select 2;

if (_create=="aph_bp_PersonalGarage") then {_create="ap_BuildGarage";};
if (_create=="aph_bp_BuildingTable") then {_create="ap_BuildTable";};

_veh= _create createVehicle position player;
	_type=typeof _veh;
//set distance from player based on object type
	//default
_veh attachto [player, [0, 2, 0.5] ];
	//others
	if (_type=="Land_i_Garage_V1_F") then {_veh attachto [player, [0, 5, 0.5] ];};
	if (_type=="Land_ShelvesWooden_F") then {_veh attachto [player, [0, 1.5, 0.5] ];};
	
(findDisplay 46) displaySetEventHandler ["MouseZchanged","_this call AP_AdjustAttached"];
(findDisplay 46) displaySetEventHandler ["KeyDown","_this call AP_key;false;"];
player setvariable ["AP_CurrentCarryObject",_veh,true];
player setvariable ["HoldingObject",true,true];
_veh setVariable ["NeedsBuilt",true,true];
_veh setVariable ["CostArray",_CostArray,true];
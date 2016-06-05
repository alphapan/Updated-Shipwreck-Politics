//Controls Picture Frame Handling
disableSerialization;
_indexTop = lbCurSel 1501;
_indexBtm= lbCurSel 1500;
_text = lbText [1500, _indexTop];
_1list=player getvariable ["APH_LandVehBuildList",[]];
_2list=player getvariable ["APH_AirVehBuildList",[]];
_3list=player getvariable ["APH_WaterVehBuildList",[]];
_4list=player getvariable ["APH_VehiclePartBuildList",[]];
_5list=player getvariable ["APH_VehicleAccesorybuildList",[]];

switch(_indexTop) do {
	case 0: {player setvariable ["CurrentBuildingArrayShown",_1list];};
	case 1: {player setvariable ["CurrentBuildingArrayShown",_2list];};
	case 2: {player setvariable ["CurrentBuildingArrayShown",_3list];};
	case 3: {player setvariable ["CurrentBuildingArrayShown",_4list];};
	case 4: {player setvariable ["CurrentBuildingArrayShown",_5list];};
};

if ( (count (player getvariable "CurrentBuildingArrayShown")) <=0) exitwith {};
_item=(((player getvariable "CurrentBuildingArrayShown") select _indexBtm) select 1);
_CFG="";
if ( isClass (configFile >> "CFGweapons" >> _item)) then {
    //is weapon
	_CFG="CfgWeapons";
}else{
    if ( isClass (configFile >> "CFGMagazines" >> _item)) then {
        //is magazine
		_CFG="CfgMagazines";
    }else{
        //is some other class
		_CFG="CfgVehicles";
    };
}; 

ctrlSetText [1200,getText (configfile >> _CFG >> _item >> "picture")];

_TopText=(((player getvariable "CurrentBuildingArrayShown") select _indexBtm) select 0);
_costArray=(((player getvariable "CurrentBuildingArrayShown") select _indexBtm) select 2);
_display = uiNameSpace getVariable "VehicleBuildTableUI";
	_Text = _display displayCtrl 1000;
_text ctrlSetStructuredText (parsetext format ["<t size='1.8' color='#ffffff'  shadow='2' >Item Information: <br/>%1 <br/> %2</t>",_TopText,_costArray]);

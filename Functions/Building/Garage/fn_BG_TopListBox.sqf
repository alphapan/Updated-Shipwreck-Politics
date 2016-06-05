disableSerialization;
_display = uiNameSpace getVariable "BuildGarageUI";
	_Text = _display displayCtrl 1000;
_text ctrlSetStructuredText (parsetext format [""]);
ctrlSetText [1200,""];
_index = lbCurSel 1501;
_1list=player getvariable ["APH_LandVehBuildList",[]];
_2list=player getvariable ["APH_AirVehBuildList",[]];
_3list=player getvariable ["APH_WaterVehBuildList",[]];
_4list=player getvariable ["APH_VehiclePartBuildList",[]];
_5list=player getvariable ["APH_VehicleAccesorybuildList",[]];

if (_index==0) then {
lbClear 1500;
{lbadd [1500,(_x select 0)];} foreach _1list;
};
if (_index==1) then {
lbClear 1500;
{lbadd [1500,(_x select 0)];} foreach _2list;
};
if (_index==2) then {
lbClear 1500;
{lbadd [1500,(_x select 0)];} foreach _3list;
};
if (_index==3) then {
lbClear 1500;
{lbadd [1500,(_x select 0)];} foreach _4list;
};
if (_index==4) then {
lbClear 1500;
{lbadd [1500,(_x select 0)];} foreach _5list;
};


lbSetCurSel [1500, 0];
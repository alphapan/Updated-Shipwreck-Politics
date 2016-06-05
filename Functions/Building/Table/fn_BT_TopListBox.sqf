disableSerialization;
_display = uiNameSpace getVariable "BuildTableUI";
	_Text = _display displayCtrl 1000;
_text ctrlSetStructuredText (parsetext format [""]);
ctrlSetText [1200,""];
_index = lbCurSel 1500;
lbSetCurSel [1501, 0];
_ammolist=player getvariable ["APH_AmmoBuildList",[]];
_weaponlist=player getvariable ["APH_WeapBuildList",[]];
_objectlist=player getvariable ["APH_ObjBuildList",[]];
_accesslist=player getvariable ["APH_AccessoryBuildList",[]];
_partlist=player getvariable ["APH_SmallPartBuildList",[]];
_gearlist=player getvariable ["APH_BuildableGearList",[]];

if (_index==0) then {
lbClear 1501;
	{
		_Name=gettext (Missionconfigfile >> "BluePrintInfo" >> _x >> "name");
		lbadd [1501,_Name];
	} foreach _ammolist;
lbSetCurSel [1501,0];
};
if (_index==1) then {
lbClear 1501;
	{
		_Name=gettext (Missionconfigfile >> "BluePrintInfo" >> _x >> "name");
		lbadd [1501,_Name];
	}  foreach _weaponlist;
lbSetCurSel [1501,0];
};
if (_index==2) then {
lbClear 1501;
	{
		_Name=gettext (Missionconfigfile >> "BluePrintInfo" >> _x >> "name");
		lbadd [1501,_Name];
	}  foreach _objectlist;
lbSetCurSel [1501,0];
};
if (_index==3) then {
lbClear 1501;
	{
		_Name=gettext (Missionconfigfile >> "BluePrintInfo" >> _x >> "name");
		lbadd [1501,_Name];
	}  foreach _accesslist;
lbSetCurSel [1501,0];
};
if (_index==4) then {
lbClear 1501;
	{
		_Name=gettext (Missionconfigfile >> "BluePrintInfo" >> _x >> "name");
		lbadd [1501,_Name];
	}  foreach _partlist;
lbSetCurSel [1501,0];
};
if (_index==5) then {
lbClear 1501;
	{
		_Name=gettext (Missionconfigfile >> "BluePrintInfo" >> _x >> "name");
		lbadd [1501,_Name];
	}  foreach _gearlist;
lbSetCurSel [1501,0];
};

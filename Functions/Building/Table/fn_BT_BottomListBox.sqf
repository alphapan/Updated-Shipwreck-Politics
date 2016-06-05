//Controls Picture Frame Handling
_indexTop = lbCurSel 1500;
_indexBtm= lbCurSel 1501;
_ammolist=player getvariable ["APH_AmmoBuildList",[]];
_weaponlist=player getvariable ["APH_WeapBuildList",[]];
_objectlist=player getvariable ["APH_ObjBuildList",[]];
_vehiclelist=player getvariable ["APH_AccessoryBuildList",[]];
_partlist=player getvariable ["APH_SmallPartBuildList",[]];
_gearlist=player getvariable ["APH_BuildableGearList",[]];
switch(_indexTop) do {
	case 0: {player setvariable ["CurrentBuildingArrayShown",_ammolist];};
	case 1: {player setvariable ["CurrentBuildingArrayShown",_weaponlist];};
	case 2: {player setvariable ["CurrentBuildingArrayShown",_objectlist];};
	case 3: {player setvariable ["CurrentBuildingArrayShown",_vehiclelist];};
	case 4: {player setvariable ["CurrentBuildingArrayShown",_partlist];};
	case 5: {player setvariable ["CurrentBuildingArrayShown",_gearlist];};
};
_Array=player getvariable ["CurrentBuildingArrayShown",[]];
hint format ["%1",count _Array];
if ( (count _Array) <=0) exitwith {};

//Get selected item
_selected=_Array select _indexBtm;
	//get blueprint specifics
	_CFG=gettext (Missionconfigfile >> "BluePrintInfo" >> _selected >> "CFG");
	_Name=gettext (Missionconfigfile >> "BluePrintInfo" >> _selected >> "name");
	_ItemMade=gettext (Missionconfigfile >> "BluePrintInfo" >> _selected >> "ItemCreated");
	_cost=getarray (Missionconfigfile >> "BluePrintInfo" >> _selected >> "cost");
	_BuildList=gettext (Missionconfigfile >> "BluePrintInfo" >> _selected >> "type");
	_description=gettext (Missionconfigfile >> "BluePrintInfo" >> _selected >> "description");

ctrlSetText [1200,getText (configfile >> _CFG >> _ItemMade >> "picture")];

_display = uiNameSpace getVariable "BuildTableUI";
	_Text = _display displayCtrl 1000;
_text ctrlSetStructuredText (parsetext format ["<t size='1.8' color='#ffffff' shadow='2' align='center'>Item Information: <br/><br/>%1 <br/>%2</t>",_Name,_cost]);


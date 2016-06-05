player setvariable ["InDialog",true];
_target=_this;
_var=_target getVariable ["AttachedBuildingPad",""];
if ((typename _var)=="STRING") exitwith {hint "You need to place a build pad first."; 
[_target] spawn aph_fnc_BG_SetBuildPad;
};

_handle= createdialog "BuildGarageUI";
lbAdd[1501,"Land Vehicle"];
lbAdd[1501,"Air Vehicle"];
lbAdd[1501,"Water Vehicle"];
lbAdd[1501,"Vehicle parts"];
lbAdd[1501,"Vehicle Fuel and Ammo"];
	if ((_target getvariable ["CurrentlyBuilding",[false,""]]) select 0) then 
	{
		_obj=(_target getvariable ["CurrentlyBuilding",[false,""]]) select 1;
		//adjust que pic
		_CFG= _obj call aph_fnc_classType;
		ctrlSetText [1202,getText (configfile >> _CFG >> _obj >> "picture")];
	};

disableserialization;
_display=uinamespace getvariable "BuildGarageUI";
_Progress=_display displayCtrl 1800;

//adjust progres bar
while {!(isnull (uiNameSpace getVariable "BuildGarageUI"))} do 
	{
		sleep 0.01;
		_status=(_target getvariable ["CurrentBuildProgress",0.01]);
		_Progress progressSetPosition (_status*0.01);
	};
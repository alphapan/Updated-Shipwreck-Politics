player setvariable ["InDialog",true];

_refinery= _this;
_caller=player;
_caller setVariable ["RefineryObject",_refinery];
_handle= createdialog "LowRefineryUI";
disableserialization;
_display=uinamespace getvariable "LowRefineryUI";
	_Progress=_display displayCtrl 1600;
	
//Set Buttons and light 
_OnOffBool=_refinery getvariable ["MachineOn",false];

	if (_OnOffBool) then 
		{
			ctrlSetText [1205,"\Images\Refinery\OnSwitch.paa"];	
			ctrlSetText [1206,"\Images\Refinery\OnLight.paa"];
		} else 
			{
				ctrlSetText [1205,"\Images\Refinery\OffSwitch.paa"];	
				ctrlSetText [1206,"\Images\Refinery\OffLight.paa"];
			};	
	
//_Progress progressSetPosition (_refinery getvariable ["ProcessingStatus",0.01]);
sliderSetPosition [1900, 100];
lbSetCurSel [1500,0];
lbSetCurSel [1501,0];

[] spawn aph_fnc_Ref_RefreshRefineUI;
[] spawn aph_fnc_Ref_Slidervalue;
[] spawn aph_fnc_Ref_AdjustQuePics;
while {!(isnull (uiNameSpace getVariable "LowRefineryUI"))} do 
	{
		sleep 0.01;
		_status=(_refinery getvariable ["ProcessingStatus",0.01]);
		_Progress progressSetPosition (_status*0.01);
	};
	
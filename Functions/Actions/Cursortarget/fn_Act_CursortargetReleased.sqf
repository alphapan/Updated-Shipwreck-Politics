if (player getvariable ["InDialog",false]) exitwith {player setvariable ["InDialog",false];};

disableserialization;
_display = uiNameSpace getVariable "CursortargetUI";
	_LB=_display displayCtrl 1500;
12 cutrsc ["Default","PLAIN"];

_Target=player getvariable ["Cursortarget",[false,"",""]];
	_Bool=_Target select 0;
	_typeA=_Target select 1;
	_obj=_Target select 2;

if !(_bool) exitwith {};

_index=player getvariable ["CursortargetPos",0];
	switch (_index) do 
	{
		case -1: {_index=1};
		
		case 0: {_index=0};
		
		case 1: {_index=2};
	
	};
_type= _typeA select _index;

if (_bool) then 
	{

		switch (_type) do
		{
			
			case "Build Table": {
				_obj spawn aph_fnc_BT_StartUI;
			};
			
			case "Build Garage": {
				_obj spawn aph_fnc_BG_StartUI;
			};
			
			case "Refinery": {
				_obj spawn aph_fnc_Ref_Startup;
			};
			
			case "Conversation": {
				_obj spawn aph_fnc_Cvo_Start;
			};
			
			case "Switch Player": {
				_obj spawn aph_fnc_Act_SwitchCharacter;
			};
			
			case "Mine": {
				_obj spawn aph_fnc_Act_MineMineral;
			};
	
			case "Harvest": {
				hint "Harvest";
			};
			
			case "Pickup": {
				_obj spawn aph_fnc_Act_PickupObject;
			};
			
			case "Drop Object": {
				_obj spawn aph_fnc_Act_PickupObject;
			};
			
			case "Learn Blueprint": {
				_obj spawn aph_fnc_Act_LearnBlueprint;
			};
			
			case "Attach Fuel Can": {
				_obj spawn aph_fnc_Act_AttachFuelCan;
			};
			
			case "Refuel": {
				_obj spawn aph_fnc_Act_RefuelTarget;
			};
			
			
			case "Exit": {};
		};



	} else {};
	
	
	hint format ["%1",_type];

player setvariable ["Cursortarget",[false,"",""]];
player setvariable ["CursortargetPos",0];





	//archive
	/*
if (player getvariable ["HoldingObject",false]) then 
	{
		if !( (typeof (player getvariable ["AP_CurrentCarryObject",objnull]))=="ap_FuelCan") then 
			{
				(findDisplay 46) displaySetEventHandler ["MouseZchanged","_this call aph_fnc_CarryAdjustHeight"];
			} else {};
	};


	
			

			
			
			case "Conversation": {
				_obj spawn aph_fnc_Cvo_Start;
			};

			case "Refinery": {
				_obj spawn aph_fnc_Ref_Startup;
			};
			
			
			
			
			
			
			case "Learn Blueprint": {
				_obj spawn aph_fnc_Act_LearnBlueprint;
			};

			case "Use Build Table": {
				_obj spawn aph_fnc_BT_StartUI;
			};
			
			case "Use Build Garage": {
				_obj spawn aph_fnc_BG_StartUI;
			};
			
			case "Drop Object": {
				_obj spawn aph_fnc_Act_PickupObject;
			};
			
			case "Exit": {
			
			};


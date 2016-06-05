_refinery=player getvariable ["RefineryObject","non"];
_OnOffBool=_refinery getvariable ["MachineOn",false];
_que=_refinery getvariable ["CurrentQue",[]];
	if ( (count _que)==0) exitwith {hint "No items in que";};
	if (_OnOffBool) then 
		{
			_refinery setvariable ["MachineOn",false];
			ctrlSetText [12505,"\Images\Refinery\OffSwitch.paa"];	
			ctrlSetText [1206,"\Images\Refinery\OffLight.paa"];
		} else 
			{
				_refinery setvariable ["MachineOn",true];
				ctrlSetText [12505,"\Images\Refinery\OnSwitch.paa"];	
				ctrlSetText [1206,"\Images\Refinery\OnLight.paa"];
					//Start Processing			
					[_refinery] spawn aph_fnc_Ref_ActiveProcessing;
			};
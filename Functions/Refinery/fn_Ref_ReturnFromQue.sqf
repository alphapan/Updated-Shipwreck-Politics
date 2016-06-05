_index=_this select 0;
_refinery=player getvariable ["RefineryObject","non"];
_que=_refinery getvariable ["CurrentQue",[]];
_refinery setvariable ["ProcessingStatus",0];
	if ( (count _que)<=0) exitwith {hint "empty que"};
_count=(_que select _index) select 1;
_item=(_que select _index) select 0;
_count=_count - 1;
	if (_count==0) then 
		{
			_que deleteAt _index;
			_refinery additemcargoglobal [_item,1];
				if ((count _que)==0) then	
					{
						_refinery setvariable ["MachineOn",false];
						ctrlSetText [12505,"\Images\Refinery\OffSwitch.paa"];	
						ctrlSetText [1206,"\Images\Refinery\OffLight.paa"];
						_refinery setvariable ["ProcessingStatus",0];
					};
		} else 
			{
				_que set [_index,[(_que select _index) select 0,_count]];
				_refinery additemcargoglobal [_item,1];
			};
[] spawn aph_fnc_Ref_AdjustQuePics;
[] spawn aph_fnc_Ref_RefreshRefineUI;
[] spawn aph_fnc_Ref_SelectionChanged;
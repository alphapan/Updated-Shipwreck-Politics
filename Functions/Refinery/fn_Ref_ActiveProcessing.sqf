_refinery=_this select 0;

//end Variables

//Function while machine is on
while {_refinery getvariable ["MachineOn",false]} do	
	{
		_que=_refinery getvariable ["CurrentQue",[]];
		_item=toLower ((_que select 0) select 0);
		_wait=0.1;
		_wait=getnumber (Missionconfigfile >> "MineralInfo" >> _item >> "ProcessDifficulty");
				
		sleep _wait;
		_val=(_refinery getvariable ["ProcessingStatus",0]);
		_val=_val + 1 ;
		_refinery setvariable ["ProcessingStatus",_val];
			if (_val>=100) then 
				{
					_Items=[];
					_counts=[];
						{
							_items pushback (_x select 0);
							_counts pushback (_x select 1);
						}foreach _que;
					_current=_counts select 0;
					_Current=_current-1;
						if (_current==0) then 
							{
								_que deleteAt 0;
								{
									((uinamespace getvariable "LowRefineryUI") displayCtrl (1800 + _foreachIndex )) ctrlSetStructuredText parsetext "";
								}foreach [0,1,2,3];
							} else 
								{
									_que set [0,[_items select 0,_current]];
								};
					_refinery getvariable ["CurrentQue",_que];
					_refinery setvariable ["ProcessingStatus",0];
					
					//add refined mineral
					_Reference=gettext (Missionconfigfile >> "MineralInfo" >> _item >> "RefinedItem");
					_refinery additemcargoglobal [_Reference,1];		
					[] spawn aph_fnc_Ref_adjustQuePics;
					[] spawn aph_fnc_Ref_RefreshRefineUI;
					_refinery setvariable ["ProcessingStatus",0];
				};
			if ((count _que)==0) exitwith {_refinery setvariable ["ProcessingStatus",0];};
	};
//reset progress bar if above 100%
sleep 1.5;
	if ((_refinery getvariable ["ProcessingStatus",0]) >=100) then 
		{
			_refinery setvariable ["ProcessingStatus",0];
		};


12 cutrsc ["CursortargetUI","PLAIN"];

disableserialization;
_display = uiNameSpace getVariable "CursortargetUI";
	_topPic=_display displayCtrl 1202;
	_middlePic= _display displayCtrl 1200;
	_bottomPic=_display displayCtrl 1201;
		_top1Pic=_display displayCtrl 1204;
		_bot1Pic=_display displayCtrl 1203;

(findDisplay 46) displaySetEventHandler ["MouseZchanged","_this call aph_fnc_Act_CTScrollMouse"];	
inGameUISetEventhandler ["PrevAction","true"];
inGameUISetEventhandler ["NextAction","true"];
while {!(isnull _display)} do 
	{
	
		_obj=cursortarget;
		_target=cursortarget;
		_dist=player distance _obj;
		
			if (player getvariable ["HoldingObject",false]) then {_obj= player getvariable ["AP_CurrentCarryObject",objnull];};
			
						
			if ( (isnull _obj) ) then 
				{
					_top1Pic ctrlsettext "";
					_topPic	ctrlsettext "";
					_middlePic ctrlsettext "\Images\Cursortarget\NoAction.paa";
					_bottomPic	ctrlsettext "";
					_bot1Pic ctrlsettext "";
					player setvariable ["Cursortarget",[false,"","",""]];
				} else 
					{
					_TargetBool=_obj call aph_fnc_Act_CTCheckCondition;
						_bool=_TargetBool select 0;
						_reason=_TargetBool select 1;
						_pictures=_TargetBool select 2;
					player setvariable ["Cursortarget",[_bool,_reason,_obj,_pictures]];
					
						if (_bool) then 
							{
							
							//Flashing icons (clearing text then adding picture)
							
								_ctrl=1200;
								{
									_picture= _pictures select _foreachIndex;
									 (_display displayCtrl _ctrl) ctrlsettext _picture;
									_ctrl=_ctrl + 1;
								}foreach _reason;
								
								
							
							} else 
								{
									_topPic	ctrlsettext "";
									_middlePic ctrlsettext "\Images\Cursortarget\NoAction.paa";
									_bottomPic	ctrlsettext "";
									player setvariable ["Cursortarget",[false,"","",""]];
								};
					};
					
					
					
		if (player getvariable ["HoldingObject",false]) then 
			{
				waituntil 
				{	
					(	!(_target==cursortarget) && !(isnull cursortarget) ) or 
					( 	(abs((player distance cursortarget)-(player distance _target)) > 0.20) && !(isnull cursortarget) ) or
					( isnull cursortarget ) 
				};
			} else
				{
					waituntil 
					{	
						(	!(_obj==cursortarget)) or 
						( 	(isnull _obj)	) or 
						( 	(abs((player distance cursortarget)-_dist) > 0.20) && !(isnull _obj))
					};
				
				};

		
		
						
					
				
	};
	(findDisplay 46) displaySetEventHandler ["MouseZchanged",""];
	inGameUISetEventhandler ["PrevAction",""];
	inGameUISetEventhandler ["NextAction",""];
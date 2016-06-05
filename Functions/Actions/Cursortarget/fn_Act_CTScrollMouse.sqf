if (isnull (uiNameSpace getVariable "CursortargetUI")) exitwith {};

//UI 
disableserialization;
_display=uiNameSpace getvariable "CursortargetUI";

_topBox1=_display displayctrl 1204;
	_topBox=_display displayctrl 1202;
	_middleBox=_display displayctrl 1200;
	_bottomBox=_display displayctrl 1201;
		_bottomBox1=_display displayctrl 1203;
	
_PosArray= [
	[(0.505 * safezoneW + safezoneX),(0.39 * safezoneH + safezoneY),(0.0175 * safezoneW),(0.018 * safezoneH)],
	[(0.505 * safezoneW + safezoneX),(0.44 * safezoneH + safezoneY),(0.01875 * safezoneW),(0.02 * safezoneH)],
	[(0.5 * safezoneW + safezoneX),(0.48 * safezoneH + safezoneY),(0.028125 * safezoneW),(0.04 * safezoneH)],
	[(0.505 * safezoneW + safezoneX),(0.54 * safezoneH + safezoneY),(0.01875 * safezoneW),(0.02 * safezoneH)],
	[( 0.505 * safezoneW + safezoneX),(0.59 * safezoneH + safezoneY),(0.017 * safezoneW),(0.017 * safezoneH)]
];

_top1Pos=(_PosArray select 0);
	_topPos=(_PosArray select 1);
	_midPos=(_PosArray select 2);
	_botPos=(_PosArray select 3);
		_bot1Pos=(_PosArray select 4);
	
//Information	
_Pos=player getvariable ["CursortargetPos",0];
_Info=player getvariable "Cursortarget";
	_bool=_Info select 0;
	_reasons=_Info select 1;
	_obj=_Info select 2;

	
if (	(count _reasons==1) or (count _reasons==0) ) exitwith {};



//Control
_ctrl=_this select 0;
_change=_this select 1;


//Scroll down
if (_change <=0.01) then {


	switch (count _reasons) do
		{
			case 2: {
			
				switch (_Pos) do
				{
					case 0: {
					
						//move mid and bottom up one
					
						_middleBox ctrlSetPosition _topPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _midPos; 
						_bottomBox ctrlcommit 0.25;
					
					_pos= -1;
					};
					
					case 1: {
					
					//with two options this will never be a case
					};
					
					case -1: {
					
					//with two option will not allow moving down further
					
					};
					
				
				};//end Pos switch
				
			}; //end case 2 
			
			case 3: {
			
				switch (_Pos) do
				{
					case 0: {
					//move all down 1 
					
						_topBox ctrlSetPosition _top1Pos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _topPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _midPos; 
						_bottomBox ctrlcommit 0.25;
					
					_pos = -1;
					};
					
					case 1: {
					//move options to default
					
						_topBox ctrlSetPosition _topPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _midPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _botPos; 
						_bottomBox ctrlcommit 0.25;
						
					_pos = 0;
					};
					
					case -1: {
					//no more moving
					
					};
					
				
				};//end Pos switch
			
			};//end case 3 
		
			case 4: {
			
				switch (_Pos) do
				{
					case 0: {
					//move all down 1 
					
						_topBox ctrlSetPosition _top1Pos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _topPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _midPos; 
						_bottomBox ctrlcommit 0.25;
						
						_bottomBox1 ctrlSetPosition _botPos; 
						_bottomBox1 ctrlcommit 0.25;
					
					_pos = -1;
					};
					
					case 1: {
					//move options to default
					
						_topBox ctrlSetPosition _topPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _midPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _botPos; 
						_bottomBox ctrlcommit 0.25;
						
					_pos = 0;
					};
					
					case -1: {

						_middleBox ctrlSetPosition _top1Pos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _topPos; 
						_bottomBox ctrlcommit 0.25;
						
						_bottomBox1 ctrlSetPosition _midPos; 
						_bottomBox1 ctrlcommit 0.25;
						
						_pos= -2;
					};
					
				
				};//end Pos switch
			
			};//end case 4
		
			default {
				switch (_Pos) do
				{
					case 0: {
					//move all up 1 
					
						_topBox ctrlSetPosition _midPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _botPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _bot1Pos; 
						_bottomBox ctrlcommit 0.25;
					
					_pos = 1;
					};
					
					case 1: {
					//move options to default
					
						_topBox ctrlSetPosition _topPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _midPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _botPos; 
						_bottomBox ctrlcommit 0.25;
						
					_pos = 2;
					};
					
					case -1: {
					//move all back to default
						_topBox ctrlSetPosition _topPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _midPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _botPos; 
						_bottomBox ctrlcommit 0.25;
					
					_pos = 0;
					
					};
					
				};
				
				
				};//end Pos switch
		};//end count switch
	
	
player setvariable ["CursortargetPos",_Pos];
};



if (_change >=0.01) then {


	switch (count _reasons) do
		{
			case 2: {
			
				switch (_Pos) do
				{
					case 0: {
						//with 2 options there is no up option
						
					};
					
					case 1: {
						//with 2 option this will never be a case
					};
					
					case -1: {
						//put mid and bottom back in place
						
						_middleBox ctrlSetPosition _midPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _botPos; 
						_bottomBox ctrlcommit 0.25;
						
					_pos = 0;
					
					};
					
				
				};//end Pos switch
				
			}; //end case 2 
			
			case 3: {
			
				switch (_Pos) do
				{
					case 0: {
					//move all up 1 
					
						_topBox ctrlSetPosition _midPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _botPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _bot1Pos; 
						_bottomBox ctrlcommit 0.25;
					
					_pos = 1;
					};
					
					case 1: {
					//no more moves allowed
					
					
					};
					
					case -1: {
					//move all back to default
						_topBox ctrlSetPosition _topPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _midPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _botPos; 
						_bottomBox ctrlcommit 0.25;
					
					_pos = 0;
					};
					
				
				};//end Pos switch
			
			};//end case 3 
		
			case 4: {
			
				switch (_Pos) do
				{
					case 0: {
					//move all up 1 
						
						_topBox1 ctrlSetPosition _topPos; 
						_topBox1 ctrlcommit 0.25;
					
						_topBox ctrlSetPosition _midPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _botPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _bot1Pos; 
						_bottomBox ctrlcommit 0.25;
						
					
					_pos = 1;
					};
					
					case 1: {
						_topBox1 ctrlSetPosition _midPos; 
						_topBox1 ctrlcommit 0.25;
					
						_topBox ctrlSetPosition _botPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _midPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _bot1Pos; 
						_bottomBox ctrlcommit 0.25;
						
					_pos=2;
					};
					
					case -1: {
					//move all back to default
					
						_topBox1 ctrlSetPosition _top1Pos; 
						_topBox1 ctrlcommit 0.25;
					
						_topBox ctrlSetPosition _topPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _midPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _botPos; 
						_bottomBox ctrlcommit 0.25;
						
						_bottomBox1 ctrlSetPosition _bot1Pos; 
						_bottomBox1 ctrlcommit 0.25;
					
					_pos = 0;
					};
					
					
				
				};//end Pos switch
			
			};//end case 4
			
			default {
				switch (_Pos) do
				{
					case 0: {
					//move all up 1 
					
						_topBox ctrlSetPosition _midPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _botPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _bot1Pos; 
						_bottomBox ctrlcommit 0.25;
					
					_pos = 1;
					};
					
					case 1: {
					//move options to default
					
						_topBox ctrlSetPosition _topPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _midPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _botPos; 
						_bottomBox ctrlcommit 0.25;
						
					_pos = 2;
					};
					
					case -1: {
					//move all back to default
						_topBox ctrlSetPosition _topPos; 
						_topBox ctrlcommit 0.25;

						_middleBox ctrlSetPosition _midPos; 
						_middleBox ctrlcommit 0.25;
						
						_bottomBox ctrlSetPosition _botPos; 
						_bottomBox ctrlcommit 0.25;
					
					_pos = 0;
					
					};
					
				
				};//end Pos switch
			
			
			};
		};//end count switch
	
	


	player setvariable ["CursortargetPos",_Pos];
};

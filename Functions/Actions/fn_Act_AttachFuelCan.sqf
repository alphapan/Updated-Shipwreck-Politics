_obj=player getvariable ["AP_CurrentCarryObject",objnull];
_target=cursortarget;


	if ( (typeof _obj) == "ap_fuelCan") then 
	
	//Fuel Can
		{
		
_attached=_Target getvariable ["AttachedFuelCans",[[false,""],[false,""],[false,""],[false,""]]];
	
	_index=0;
	{

		if !(_x select 0) exitwith {};
		
		_index=_index + 1;

	}foreach _attached;
	
if (_index==4) exitwith {hint "No attachable positions remaining"};
	
_attached set [_index,[true,_obj]];	
	
	
detach _obj;


_offsets=[
[1,-0.8,-1],
[-1.1,-0.8,-1],
[-1.1,-1.2,-1],
[1,-1.2,-1]
];

_offset=_offsets select _index;

_obj attachto [_target,_offset];

_obj setdir 90;



_Target setvariable ["AttachedFuelCans",_attached];
		
		
		} else 
		
		//Fuel Barrel
			{
_attached=_Target getvariable ["AttachedFuelBarrels",[[false,""],[false,""],[false,""],[false,""],[false,""],[false,""]]];
	
			
			
_offsets=
[
[0.30,-1.05,-0.25],
[-0.35,-1.05,-0.25],
[-0.35,-1.68,-0.25],
[0.30,-1.68,-0.25],
[0.30,-2.3,-0.25],
[-0.35,-2.3,-0.25]
];
			
	_index=0;
{

	if !(_x select 0) exitwith {};
	
	_index=_index + 1;

}foreach _attached;
	
if (_index==6) exitwith {hint "No more room for barrel"};
	
_attached set [_index,[true,_obj]];	
	
	
detach _obj;			

_offset=_offsets select _index;		

_obj attachto [_target,_offset];

_Target setvariable ["AttachedFuelBarrels",_attached];			
			};


player setvariable ["AP_CurrentCarryObject",objnull];
player setvariable ["HoldingObject",false];
player forcewalk false;
_obj setVariable ["BeingCarried",false];
_obj setvariable ["AttachedToVehicle",_Target];







/*
ap_a=
[
[0.30,-1.05,-0.25],
[-0.35,-1.05,-0.25],
[-0.35,-1.68,-0.25],
[0.30,-1.68,-0.25],
[0.30,-2.3,-0.25],
[-0.35,-2.3,-0.25]
];

_index=0;
{_x attachto [cursortarget,(ap_a select _index)];_index=_index +1}foreach [barrel1,barrel1_1,barrel1_2,barrel1_3,barrel1_4,barrel1_5];


	//BARREL
//[0.30,-1.05,-0.25] FL
//[-0.35,-1.05,-0.25] FR
//[-0.35,-1.68,-0.25] MR
//[0.30,-1.68,-0.25] ML
//[0.30,-2.3,-0.25] BR
//[-0.35,-2.3,-0.25] BL

	//CAN
//[8.84814,-0.39502,-2.08398] FL
//[-1.10059,-1.19775,-1.27347] RL
//[-1.10059,-0.797852,-1.27347] RB
//[0.999512,-0.797363,-1.27347] FB

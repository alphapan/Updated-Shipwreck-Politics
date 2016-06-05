_box=_this select 0;
_ReferenceBP=_this select 1;
	_BP=_ReferenceBP select 0;
	_Created=_ReferenceBP select 1;
		_Costarray=getarray (Missionconfigfile >> "BluePrintInfo" >> _BP >> "cost");
		_ItemMade=gettext (Missionconfigfile >> "BluePrintInfo" >> _BP >> "ItemCreated");
		_difficulty=getnumber (Missionconfigfile >> "BluePrintInfo" >> _BP >> "Difficulty");
_pad=_box getVariable "AttachedBuildingPad";
_pos=getPos _pad;
_wait=(0.1 * _difficulty);
//end variables

		//adjust que pic
		_CFG="";
		if ( isClass (configFile >> "CFGweapons" >> _Created)) then {
			//is weapon
			_CFG="CfgWeapons";
		}else{
			if ( isClass (configFile >> "CFGMagazines" >> _Created)) then {
				//is magazine
				_CFG="CfgMagazines";
			}else{
				//is some other class
				_CFG="CfgVehicles";
			};
		}; 
		ctrlSetText [1202,getText (configfile >> _CFG >> _Created >> "picture")];
		ctrlSetText [1200,""];


//build holder and start building function
_veh= createVehicle ["Land_JunkPile_F", _pos, [], 0, "CAN_COLLIDE"];
_box setvariable ["ObjectHolder",_veh];
	while {(_box getvariable ["CurrentBuildProgress",0])<=99} do 
		{
			sleep _wait;
			
			_status=(_box getvariable ["CurrentBuildProgress",0]);
			_box setvariable ["CurrentBuildProgress",_status + 1];
				
				//check if project request is canceled
				if (_box getvariable ["CancelProject",false]) exitwith {};
			
		};

deletevehicle _veh;	
ctrlSetText [1202,"\images\Building\Garage\BoxIcon.jpg"];	
_box setvariable ["CurrentBuildProgress",0];
_box setvariable ["CurrentlyBuilding",[false,""]];
	
	//if canceling project
	if (_box getvariable ["CancelProject",false]) exitwith 
		{ 
			_box setvariable ["CancelProject",false];
			hint format ["stopping \n %1",_costArray];
		};
	
_Built= createVehicle [_ItemMade, _pos, [], 0, "CAN_COLLIDE"];	
_Built setVariable ["APH_OBJECTBOOL",true,true];
_Built setVariable ["MaterialCost",_Costarray,true];
hint format ["Created %1",_name];
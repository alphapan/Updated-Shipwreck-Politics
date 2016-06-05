
_target=_this select 0;
player setvariable ["ReadytoDrop",false,true];
_Old=_target getvariable ["AttachedBuildingPad",""];

_mark="Land_JumpTarget_F" createVehicle position player;
_mark attachTo [player, [0, 2.5, 0] ]; 
			
	
	//Place buildpad action
	_action=player addAction ["Choose build location", {
					_distance=((_this select 3 select 0) distance (_this select 3 select 1));
					if (_distance > 15) then {
						Hint "Place build pad closer to garage";
						};
					if (_distance <3.5) then {
						Hint "Building pad too close. Place elsewhere.";
						};
					if ( (_distance <= 35)&&(_distance>=3.5)) then {
						Hint "Placed build pad";player setvariable ["ReadytoDrop",true,true];
						};
				},[_target,player]];



//when ready and correct place buildpad
waituntil {player getvariable "ReadytoDrop"};
player removeaction _Cancel;
player removeaction _action;
detach _mark;
_target setVariable ["AttachedBuildingPad",_mark];
deletevehicle _old;
player setvariable ["ReadytoDrop",false,true];




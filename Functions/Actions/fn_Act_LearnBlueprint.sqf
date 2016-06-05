if (player getvariable ["IsLearningBP",false]) exitwith {hint "already learning"};
_object=_this;
_blueprint="aph_bp_" + (typeof _object);

//Get blueprint info
	_difficulty=getnumber (Missionconfigfile >> "BluePrintInfo" >> _blueprint >> "Difficulty");
	_name=gettext (Missionconfigfile >> "BluePrintInfo" >> _blueprint >> "Name");
_blueprintTypes=(getarray (Missionconfigfile >> "MasterArrays" >> "BluePrints" >> "Blueprints"));

if (_difficulty > (player getvariable ["BlueprintSkill",4]))exitwith {hint "You are not skilled enough to make a blueprint of this"};



if (_blueprint in _blueprintTypes) then {
	//Get player info
	_initialPOS=position player;
	_KnownBP=player getvariable ["KnownBlueprints",[]];
	_KnownBPValues=player getvariable ["KnownBlueprintValues",[]];
	_skill=1;


player setvariable ["IsLearningBP",true];
	
_progress=0;	
_index=0;
	//If already have Blueprint
	if (_blueprint in _KnownBP) then 
	{
		_index=(_KnownBP find _blueprint);
		_Progress=_KnownBPValues select _index;
			
	} else 
		{
		//Start new Blueprint
			_KnownBP pushback _blueprint;
			player setvariable ["KnownBlueprints",_knownBP];
			_KnownBPValues pushback 0;
				_index=(_KnownBP find _blueprint);
				_Progress=_KnownBPValues select _index;
		};
		
	while {(_Progress<=99)} do 
			{
			hint parsetext format ["Learning BP: %1 <br/> %2" + " percent",_name,_progress];
			sleep ((_difficulty*0.5)/_skill);
			_PlayerInvArray=[player] call aph_fnc_CheckPlayerInventory;
				_PlayerItems=_PlayerInvArray select 0;
				_PlayerCounts=_PlayerInvArray select 1;
					if ( !("aph_bp_empty" in _PlayerItems) ) exitwith {hint "You must have an empty blueprint in your inventory";player setvariable ["IsLearningBP",false]};
					if  ( !((position player) distance _initialPOS<=1))exitwith {hint "You need to stay still to concentrate";player setvariable ["IsLearningBP",false]};
				_progress=_progress + 1;
				_KnownBPValues set [_index,_progress];
				player setVariable ["KnownBlueprintValues",_KnownBPValues];
			};
		
			if (_Progress>=100) exitwith 
				{
					player setvariable ["IsLearningBP",false];
					[player,"aph_bp_empty"] spawn aph_fnc_DeleteInventoryItem;
					hint "learned";
				};
} else 
	{
		hint "cannot learn this object"
	};
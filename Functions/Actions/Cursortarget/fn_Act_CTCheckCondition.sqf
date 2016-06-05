_target=_this;
_obj=cursortarget;

_bool=false;
_reason=[];
_picture=[];

//=================For holding object===========

	if ( player getvariable ["HoldingObject",false]) then 	{_bool=true;_reason pushback "Drop Object";_picture pushback "\Images\Cursortarget\ActionButtonBlue.paa";_reason pushback "Exit";_picture pushback "\Images\Cursortarget\NoAction.paa";};
	if ( 
			( (typeof (player getvariable ["AP_CurrentCarryObject",objnull]) )=="ap_fuelCan") &&
			( (cursortarget iskindof "Air") or (cursortarget iskindof "Car") or (cursortarget iskindof "Ship") or (cursortarget iskindof "AP_Refinery") ) && 
			( (player distance _obj) < 3.2 ) &&
			( (fuel _obj) < 1)
		
		) then {_bool=true;_reason pushback "Refuel"; _picture pushback "\Images\Cursortarget\Refuel.paa"};
		
	if ( 
			( (	(typeof (player getvariable ["AP_CurrentCarryObject",objnull]) )=="ap_fuelCan") or 
			  (	(typeof (player getvariable ["AP_CurrentCarryObject",objnull]) )=="ap_FuelBarrel")	) && 
				(  (cursortarget iskindof "Air") or (cursortarget iskindof "Car") or (cursortarget iskindof "Ship")	) && 
				( (player distance _obj) < 3.2 )
			
		) then {_bool=true;_reason pushback "Attach Fuel Can"; _picture pushback "\Images\Cursortarget\Attach.paa"};

	
//==============================		
//===============REJECT=========
//==============================	
	if ( ((player distance _obj) > 3.2) && !(_obj in (units group player)) ) exitwith {[_bool,_reason,_picture];};
	if (_obj getvariable ["LockedObject",false] ) exitwith {[_bool,_reason,_picture];};
	//if (_obj isKindOf "house") exitwith {_reason pushbackpushback "Exit";[_bool,_reason];};
	//if ( (_obj getvariable ["BeingCarried",false]) ) exitwith {hint "Someone is holding that object";[_bool,_reason];};
	
	


//==============================	
//==============ACCEPT==========
//==============================	


//=================For dialog===================
	if (_obj iskindof "ap_buildTableBase") then {_bool=true;_reason pushback "Build Table";_picture pushback "\Images\Cursortarget\ActivateTarget.paa"};
	if (_obj iskindof "ap_buildGarageBase") then {_bool=true;_reason pushback "Build Garage";_picture pushback "\Images\Cursortarget\ActivateTarget.paa"};
	if (_obj isKindOf "AP_Refinery") then {_bool=true;_reason pushback "Refinery";_picture pushback "\Images\Cursortarget\ActivateTarget.paa"};
	if ((_obj isKindOf "man") && (alive _obj) && !(isplayer _obj) && !(_obj in (units group player)) ) then {_bool=true;_reason pushback "Conversation";_picture pushback "\Images\Cursortarget\Conversation.paa"};




//=================Other======================		
	if (_obj in (units group player)) then {_bool=true;_reason pushback "Switch Player";_picture pushback "\Images\Cursortarget\SwitchCharacter.paa"};
	if (_obj isKindOf "AP_GroundRock") then {_bool=true;_reason pushback "Mine";_picture pushback "\Images\Cursortarget\Mining.paa"};
	if (_obj isKindOf "AP_GroundCrop") then {_bool=true;_reason pushback "Harvest";_picture pushback "\Images\Cursortarget\Harvest.paa"};
	
	//======
	if (	
			!(player getvariable ["HoldingObject",false]) &&
			!(_obj isKindOf "man") && 
			!((_obj isKindOf "AP_GroundRock")||(_obj isKindOf "AP_GroundCrop")||(_obj isKindOf "AP_Refinery")) &&
			!((getmass _obj) >= 600) &&
			!(_obj getvariable ["BeingCarried",false]) &&
			!(_obj getvariable ["LockedObject",false])

		)then {_bool=true;_reason pushback "Pickup";_picture pushback "\Images\Cursortarget\Harvest.paa"};
		
	//====	

		if (	("aph_bp_" + (typeof _obj)) in (getarray (Missionconfigfile >> "MasterArrays" >> "BluePrints" >> "Blueprints"))	 &&
			!(	("aph_bp_" + (typeof _obj)) in (player getvariable ["KnownBluePrints",[]])	) &&
			(	(getnumber (Missionconfigfile >> "BluePrintInfo" >> ("aph_bp_" + (typeof _obj)) >> "Difficulty")) <= (player getvariable ["BlueprintSkill",4]) ) 

		) then {_bool=true;_reason pushback "Learn Blueprint";_picture pushback "\Images\Cursortarget\LearnBP.paa"};

	

	
	
[_bool,_reason,_picture];
	

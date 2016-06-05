if (player getvariable ["PickupCooldown",false]) exitwith {};


_obj=player getvariable ["AP_CurrentCarryObject",objnull];
	if (isnull _obj) then {_obj=_this};
_HoldingBool=player getVariable ["HoldingObject",false];
disableSerialization;


//Already Holding Object
if (_holdingBool) then {
	player forcewalk false;
		
	//If the object already has been built  then drop	
	["EachFrame_Attach", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
	_obj enablesimulation true;
	
	//Set Variables
	(findDisplay 46) displaySetEventHandler ["MouseZchanged",""];
	player setvariable ["AP_CurrentCarryObject",objnull];
	player setvariable ["HoldingObject",false];
	_obj setvariable ["APH_OBJECTBOOL",true];
	_obj setVariable ["BeingCarried",false];
	
	0 cutrsc ["Default","PLAIN"];
	
	player spawn { _this setvariable ["PickupCooldown",true]; sleep 0.25; _this setvariable ["PickupCooldown",false];};
	
	
	} else 
		{

	//If object can be picked up
	if ((getmass _obj) > 50) then {player forcewalk true;};
	
	_type=typeof _obj;
	//_originalPos= _obj worldtoModel (getpos _obj);
	//_dirP=getdir _obj;
	_dist=player distance _obj;
		player setvariable ["CarryDistance",_dist];
		
//Attach
_obj enablesimulation false;
["EachFrame_Attach","onEachFrame",{
_obj=_this select 0;
_dist=_this select 1;
_worldPos = player modelToWorld [0,_dist, 0];
_pos=(getposatl _obj);
_worldPos set [2,(_pos select 2) + aph_V_ObjectCarryHeight];

_obj setpos _worldPos;

},[_obj,_dist]] call BIS_fnc_addStackedEventHandler;	

(findDisplay 46) displaySetEventHandler ["MouseZchanged","_this call aph_fnc_CarryAdjustHeight"];
				
		//Fuel Can
		if ( _obj iskindof "ap_Fuels") then 
		{
			_variable="";
			if (_type=="ap_fuelCan") then
				{
					_obj attachto [player,[-0.12,0.02,-0.25],"lefthand"];_obj setdir 270; 
					(findDisplay 46) displaySetEventHandler ["MouseZchanged",""];
					_variable="AttachedFuelCans";
				} else 
					{
						_variable="AttachedFuelBarrels";
					};
				
					_attached=(_obj getvariable ["AttachedToVehicle",objnull]);
						if !(isnull _attached) then 
						{
							_attachto=_attached getvariable _variable;
								_list=[_attachto,1] call aph_fnc_SortArray;
							_index=_list find _obj;	
							_attachto set [_index,[false,""]];
							_attached setvariable [_variable,_attachto];
						};
		};
	
	//Set new variables
	player setvariable ["AP_CurrentCarryObject",_obj];
	_obj setVariable ["AP_BeenBuilt",true];
	player setvariable ["HoldingObject",true];
	_obj setVariable ["BeingCarried",true];
			

	};		





	
//=============Archived Code==========	
	
	/* TO DO
	//If the object needs to be built
	if (_obj getvariable ["NeedsBuilt",false]) exitwith {
	[] spawn aph_fnc_setBuildObject;
	0 cutrsc ["Default","PLAIN"];
	player setVariable ["HoldingObject",false,true];
		};
	*/
	
	
	
	//(findDisplay 46) displaySetEventHandler ["KeyDown","_this call AP_key;false;"];
			/*
				//Icon UI
				0 cutrsc ["BottomRightFrame","PLAIN"];
				_display= uiNameSpace getVariable "BottomRightFrame";
				_PicBox= _display displayCtrl 1200;
				_textbox=_display displayCtrl 1100;
				_textbox ctrlSetStructuredText (parsetext format ["<t color='#FFFFFF' align= 'center' size= '1.5' shadow='2'>'Vertical'</t><br/>"]);
				_picbox ctrlsettext "JournalUI\Images\vertical.paa";
			*/	
	
//If player is not holding anything than attempt pickup

	//get obj info only pickup certain types
/* Possibly redundent
	if (isnull _obj) exitwith {};
	if ((player distance _obj) > 4.5) exitwith {};
	if (_obj isKindOf "house") exitwith {};
	if (_obj isKindOf "man") exitwith {};
	if ((_obj isKindOf "AP_GroundRock")||(_obj isKindOf "AP_GroundCrop")||(_obj isKindOf "AP_Refinery")) exitwith {};
	if ((getmass _obj) >= 600) exitwith {hint "Too heavy, need more people"};
	if ( (_obj getvariable ["BeingCarried",false]) ) exitwith {hint "Someone is holding that object";};
	if (_obj getvariable ["LockedObject",false]) exitwith {};
*/
	
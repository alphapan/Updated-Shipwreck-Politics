_index=lbcursel 1501;
if (_index==-1) exitwith {ctrlSetText [1222,""];};
_refinery=player getvariable ["RefineryObject","non"];
_array=getItemCargo _refinery;
	_items=_array select 0;
	_count=_array select 1;
	
//Sort only accepted
_acceptedList=[_items] call aph_fnc_Ref_QueryAccepted;
		
//which item
_selected=_acceptedList select _index;	
_pic=gettext (configfile >> "CfgWeapons" >> _selected >> "picture");
_Reference=gettext (Missionconfigfile >> "MineralInfo" >> _selected >> "RefinedItem");
_Fpic="";
	if (_Reference=="") then 
	{
		_Fpic="\Images\Refinery\XoutImage.paa";
	} 
		else 
		{
			_Fpic=gettext (configfile >> "CfgWeapons" >> _Reference >> "picture");
		};
//set picture
[] spawn aph_fnc_Ref_Slidervalue;
ctrlSetText [1222,_pic];
ctrlSetText [1223,_Fpic];
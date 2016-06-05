_val =sliderPosition 1900;
_val=_val*.1;
_index=lbcurSel 1501;
if (_index==-1) exitwith {hint "No selection"};
_refinery=player getvariable ["RefineryObject","non"];
	_array= getItemCargo _refinery;
		_refineryItems=_array select 0;
		_Refinerynumbers=_array select 1;

//Sort only accepted
_acceptedList=[_refineryItems] call aph_fnc_Ref_QueryAccepted;

//which item
_select=_acceptedList select _index;

//how many
_amt=_Refinerynumbers select _index;
_amt=_amt*_val;

//new count
_count=(_Refinerynumbers select _index) - _amt;

//adjust array
_refineryNumbers set [_index,_count];

//adjust refinery numbers
clearitemcargoglobal _refinery;

	{
		_refinery additemcargoglobal [_x,_refineryNumbers select _foreachIndex];
	} foreach _refineryItems;

//add to player inventory
for "_v" from 1 to (round _amt) do		
	{
		player additem _select;
	
	};
sliderSetPosition [1900, 100];
[] spawn aph_fnc_Ref_RefreshRefineUI;
[] spawn aph_fnc_Ref_Slidervalue;
[] spawn aph_fnc_Ref_SelectionChanged;
_index=lbCurSel 1500;
_refinery=player getvariable ["RefineryObject","non"];
if (_index==-1) exitwith {hint "No selection"};

_val =sliderPosition 1900;
_val=_val*.1;
_PlayerInvArray=[player] call aph_fnc_CheckPlayerInventory;
	_PlayerItems=_PlayerInvArray select 0;
	_PlayerCounts=_PlayerInvArray select 1;

//Sort only accepted
_acceptedList=[_PlayerItems] call aph_fnc_Ref_QueryAccepted;

//which item
_select=_acceptedList select _index;

//how many
_stop=_PlayerCounts select (_PlayerItems find _select);
_stop=_stop*_val;

	for "_m" from 1 to _stop do {
	player removeitem _select;
	_refinery additemcargoglobal [_select,1];	
	};

sliderSetPosition [1900, 100];
[] spawn aph_fnc_Ref_RefreshRefineUI;
[] spawn aph_fnc_Ref_SelectionChanged;
[] spawn aph_fnc_Ref_SliderValue;
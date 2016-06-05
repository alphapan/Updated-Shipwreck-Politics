_index=lbcurSel 1501;
_refinery=player getvariable ["RefineryObject","non"];

if (_index==-1) exitwith {hint "No selection";};
_val=sliderPosition 1900;
_Val= (_val*0.1);

_array=getItemCargo _refinery;
	_items=_array select 0;
	_count=_array select 1;
	
//Sort only accepted
_acceptedList=[_items] call aph_fnc_Ref_QueryAccepted;	

_iteminQuestion=(_acceptedList select _index);
_countinQuestion=(_count select (_items find _iteminQuestion));

//Que pics
_Reference=gettext (Missionconfigfile >> "MineralInfo" >> _iteminQuestion >> "RefinedItem");
	if (_Reference=="") exitwith {hint "This item cannot be refined"};
_que=_refinery getvariable ["CurrentQue",[]];
	_queitems=[];
	{_queitems pushback (_x select 0)}foreach _que;
if ( (count _que)>3) exitwith {hint "que is full"};

	if ((_items select _index) in _queitems) then
		{
			(_que select (_queitems find _iteminQuestion)) set [1,(_que select (_queitems find _iteminQuestion) select 1) + _countinQuestion];
		} else 
			{
				_que pushback [_items select _index,_count select _index];
			};

_refinery setvariable ["CurrentQue",_que];

//adjust refinery numbers
_items deleteAt _index;
_count deleteAt _index;

//adjust refinery inventory
clearitemcargoglobal _refinery;
{
	_refinery additemcargoglobal [_x,_count select _foreachIndex];
} foreach _items;

lbSetCurSel [1501,0];
[] call	aph_fnc_Ref_RefreshRefineUI;
[] spawn aph_fnc_Ref_AdjustQuePics;
[] spawn aph_fnc_Ref_SelectionChanged;
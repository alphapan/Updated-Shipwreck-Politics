_target=_this;
if !(_target isKindOf "man") exitwith {};

if (_target in (units group player)) then 
	{
		[] spawn aph_fnc_Jrl_ClearUI;
		_group=(player getvariable ["MemberArray",[]]);
			if (count (_target getvariable ["MemberArray",[]]) <=0) then {_target setvariable ["MemberArray",_group - [_target] + [player]];};
			selectplayer _target;
			{ if (_x==(leader group _x)) exitwith {};dostop _x;}foreach _group;
	};


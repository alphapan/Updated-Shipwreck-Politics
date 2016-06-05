disableSerialization;
_display = uiNameSpace getVariable "PlayerUINotebookCharacter";
	_LeftText = _display displayCtrl 11100;
	_RightText=	_display displayCtrl 11101;
			_LeftTopLB=_display displayCtrl 11500;
			_LeftBottomLB=_display displayCtrl 11501;
			_RightTopLB=_display displayCtrl 11502;
			_RightBottomLB=_display displayCtrl 11503;
_indexT=lbcursel _LeftTopLB;
_indexB=lbcursel _LeftBottomLB;
_textT=_LeftTopLB lbText _indexT;
_textB=_LeftBottomLB lbText _indexB;

lbclear _RightTopLB;
lbclear _RightBottomLB;

switch (_textT) do {

	case "Mission Journal": {
	_missionsID=player getVariable ["CurrentMissions_ID",[]];
	_missions=player getVariable ["CurrentMissions",[]];
	if (count _missions<=0) exitwith {
	_RightText ctrlSetStructuredText (parsetext format ["
<br/>
<br/>
<t size='1.5' color='#000000'>There an no active missions in your journal.</t>"]);
};
	_CurrentSelection=_missions select (_MissionsID find _textB);
	_description=_CurrentSelection select 1;
	_RightText ctrlSetStructuredText (parsetext format ["
<br/>
<br/>
<t size='1.8' color='#000000' underline='true' align=center>Mission_Description</t>
<br/>
<t size='1.5' color='#000000' >%1</t>",_description]);
	};
	case "Mining Locations":{
		switch (_textB) do {
			case "Known mining locations":{
			_RightText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000' t underline='true'>Known_Mining_Locations</t>
				"]);
			_locations=player getVariable ["KnownMiningLocations",[]];
		if (count _locations <=0) exitwith {_RightTopLB lbadd "No known mining locations"};
			{_RightTopLB lbadd ((_x select 0) + " at " + (_x select 1))}foreach _locations;
			};
		case "Add mining location":{
			_RightText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000' t underline='true'>Local_Mining_Locations</t>
				"]);
			_RockList= (position player) nearObjects ["AP_GroundRock",10];
			if (count _RockList<=0) exitwith {lbadd [11700,"No ore within range."];};
			player setVariable ["QueriedRockList",_rocklist,true];
			{_RightTopLB lbadd (typeof _x)}foreach _rocklist;
			};
		
		};
	
	};
	case "Military Locations": {
		switch (_textB) do {
			case "Review Guard Posts": {
			_RightText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000'  underline='true'>Guarding_Locations</t>
				"]);
			_ray=player getVariable ["GuardablePositions",[]];
			if ((count _ray)<=0) exitwith {lbclear _RightTopLB;_RightTopLB lbadd "No Guardable Positions."};
			{_RightTopLB lbadd ((_x select 0) + " at " + (mapGridPosition (_x select 1)))}foreach _ray;
			};
			case "Assign new Guard Post": {
			_RightText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000'  underline='true'>Guarding_Locations</t>
				"]);
			_RightTopLB lbadd "Assign Guard Post at this location.";
			};
		};
	
	};
	
	};//end switch top text


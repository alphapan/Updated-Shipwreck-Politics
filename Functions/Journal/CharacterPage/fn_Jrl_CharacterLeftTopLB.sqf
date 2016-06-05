_unit=player;
disableSerialization;
	_display = uiNameSpace getVariable "PlayerUINotebookCharacter";
		_LeftText = _display displayCtrl 11100;
		_RightText=	_display displayCtrl 11101;
			_LeftTopLB=_display displayCtrl 11500;
			_LeftBottomLB=_display displayCtrl 11501;
_index=lbcursel _LeftTopLB;
_text =_LeftTopLB lbText _index;			
//end variables		
	
_LeftText ctrlSetStructuredText (parsetext format [""]);	
_RightText ctrlSetStructuredText (parsetext format [""]);	
lbclear _LeftBottomLB;
	
//Various Commands
switch (_text) do {

	case "Mission Journal": {
	_LeftText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000'><t underline='true'>Character_Actions</t>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
<t underline='true'>Current_Missions</t>"]);	
	_Missions=player getVariable ["CurrentMissions_ID",[]];
	{_LeftBottomLB	lbadd _x }foreach _missions;
	_LeftBottomLB lbSetCurSel 0;
	};
	case "Military Locations": {
	_LeftText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000'>
<t underline='true'>Character_Actions</t>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<t underline='true'>Guarded_Locations</t>"]);
		_LeftBottomLB lbadd "Review Guard Posts";
		_LeftBottomLB lbadd "Assign new Guard Post";
		_LeftBottomLB lbSetCurSel 0;
		};
	case "Mining Locations": {
	_LeftText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000'>
<t underline='true'>Character_Actions</t>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<t underline='true'>Mining_Locations</t>"]);
		_LeftBottomLB lbadd "Known mining locations";
		_LeftBottomLB lbadd "Add mining location";
		_LeftBottomLB lbSetCurSel 0;
	
	};
	
	//OFFLINE ATM
	case "VA Character": {};
	case "Claim house": {};
	case "Claim garage": {};
	case "Claim vehicle": {};
	};//end switch
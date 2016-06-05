disableSerialization;
[] call aph_fnc_Jrl_ClearUI;
		(finddisplay 46) createdisplay "PlayerUINotebookCharacter";
		((findDisplay 2113) displayAddEventHandler ["KeyDown","_this call aph_fnc_ctrlKeyPressed;false;"]);
_display = uiNameSpace getVariable "PlayerUINotebookCharacter";
	_LeftTopLB=_display displayCtrl 11500;
	_LeftText = _display displayCtrl 11100;
	_RightText=	_display displayCtrl 11101;
//lbadd [1500,"VA Character"];
_LeftTopLB lbadd "Mission Journal";
_LeftTopLB lbadd "Military Locations";
_LeftTopLB lbadd "Mining Locations";

_LeftText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000'>
<t underline='true'>Character_Actions</t>
</t>
"]);

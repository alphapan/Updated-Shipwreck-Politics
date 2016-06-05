disableSerialization;
[] call aph_fnc_Jrl_ClearUI;
		(finddisplay 46) createdisplay "PlayerUINotebookInfluence";
		((findDisplay 2113) displayAddEventHandler ["KeyDown","_this call aph_fnc_ctrlKeyPressed;false;"]);
	_display = uiNameSpace getVariable "PlayerUINotebookInfluence";
		_LeftTopLB=_display displayCtrl 1500;
		_LeftText = _display displayCtrl 1100;
		_RightText=	_display displayCtrl 1101;
		
_LeftTopLB lbadd "Factions";
_LeftTopLB lbadd "Towns";
_LeftTopLB lbadd "Noteables";

_RightText ctrlSetStructuredText (parsetext format ["

"]);
_LeftText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000'>
<t underline='true'>Influence</t></t>
"]);
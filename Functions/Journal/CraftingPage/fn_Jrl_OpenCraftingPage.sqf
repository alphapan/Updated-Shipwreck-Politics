disableSerialization;
[] call aph_fnc_Jrl_ClearUI;
		(finddisplay 46) createdisplay "PlayerUINotebookCrafting";
		((findDisplay 2113) displayAddEventHandler ["KeyDown","_this call aph_fnc_ctrlKeyPressed;false;"]);
_display = uiNameSpace getVariable "PlayerUINotebookCrafting";
		_LeftTopLB=_display displayCtrl 11500;
		_LeftText = _display displayCtrl 11100;
		_RightText=	_display displayCtrl 11101;
lbclear _LeftTopLB;
_LeftTopLB lbadd "Fortifications";
_LeftTopLB lbadd "Buildings";
_LeftTopLB lbadd "Building extensions";
_LeftTopLB lbadd "Furniture";
_LeftTopLB lbadd "Plants";		

_RightText ctrlSetStructuredText (parsetext format [""]);
_LeftText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000'>
<t underline='true'>Buildable Objects</t></t>
"]);
_RightText ctrlSetStructuredText (parsetext format [
"<t size='1.8' color='#000000'>

</t>"]);
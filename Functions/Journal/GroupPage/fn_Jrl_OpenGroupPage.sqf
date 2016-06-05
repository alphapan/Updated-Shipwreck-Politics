disableSerialization;
[] call aph_fnc_Jrl_ClearUI;
		(finddisplay 46) createdisplay "PlayerUINotebookGroup";
		((findDisplay 2113) displayAddEventHandler ["KeyDown","_this call aph_fnc_ctrlKeyPressed;false;"]);
_display = uiNameSpace getVariable "PlayerUINotebookGroup";
		_LeftTopLB=_display displayCtrl 1500;
		_LeftText = _display displayCtrl 1100;
		_RightText=	_display displayCtrl 1101;
_RightText ctrlSetStructuredText (parsetext format [""]);
_LeftText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000'><t underline='true'>Group_Members</t><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</t>"]);

lbclear 1500;
_callerMembers=player getVariable ["MemberArray",[]];
{
	_LeftTopLB lbadd (name _x);
}foreach _callerMembers;
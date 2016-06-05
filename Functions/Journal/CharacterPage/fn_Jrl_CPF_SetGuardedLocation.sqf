disableSerialization;
_Display=uiNamespace getVariable "SetGuardedLocationUI";
_textBox=_display displayctrl 11400;
_Edittext= ctrlText _textBox;
if (_Edittext=="") exitwith {hint "Name cannot be blank."; };
_pos=position player;

_Positions=player getvariable ["GuardablePositions",[]];
_positions pushback [_editText,_pos,[]];
player setVariable ["GuardablePositions",_positions,true];

[] spawn aph_fnc_Jrl_OpenCharacterPage;
disableSerialization;
_Display=uiNamespace getVariable "PlayerUINotebookCharacter";
_LeftTopLB=_display displayctrl 11500;
_LeftBottomLB=_display displayctrl 11501;
sleep 0.25;
_LeftTopLB lbSetCurSel 1;
sleep 0.25;
_LeftBottomLB lbSetCurSel 0;
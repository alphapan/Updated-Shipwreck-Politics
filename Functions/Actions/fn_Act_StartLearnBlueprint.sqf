closedialog 0;

12 cutrsc ["CursortargetUI","PLAIN"];

disableserialization;
_display = uiNameSpace getVariable "CursortargetUI";
	_Pic= _display displayCtrl 1200;

_Pic ctrlsettext "\Images\Cursortarget\LearnBP.paa";

player setvariable ["LearningBP",true];

waituntil {!(player getvariable ["LearningBP",false])};

12 cutrsc ["Default","PLAIN"];

_obj=cursortarget;

if (isnull _obj) exitwith {"Failed"};

_obj spawn aph_fnc_Act_LearnBlueprint;
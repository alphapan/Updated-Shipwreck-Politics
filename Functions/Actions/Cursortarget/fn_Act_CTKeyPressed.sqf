if (!(isnull (uinamespace getvariable "CursortargetUI"))) exitwith {};
		if (player getvariable ["InDialog",false]) exitwith {closedialog 0;};
		if (player getvariable ["LearningBP",false]) exitwith {player setvariable ["LearningBP",false];};
		[] spawn aph_fnc_Act_Cursortarget;
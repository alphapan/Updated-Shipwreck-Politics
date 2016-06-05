_control=_this select 0;
_code=_this select 1;
_shift=_this select 2;
_ctrl=_this select 3;
_alt=_this select 4;



		

//F
if ((_code==33) ) exitwith 
	{ 
		0 cutrsc ["Default","PLAIN"];
		[] spawn aph_fnc_Act_CursortargetReleased
	};

		
		
//User Set	
switch (true) do {
		
	
		//Menu
		case (InputAction 'User1' > 0): {(uinamespace getvariable "MenuUI") closedisplay 0;};
		
		//Journal
		case (InputAction 'User2' > 0): {};
		
		case (InputAction 'User3' > 0): {};
		
		case (InputAction 'User4' > 0): {};
		
		case (InputAction 'User5' > 0): {};
		
		
		

};

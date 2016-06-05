_control=_this select 0;
_code=_this select 1;
_shift=_this select 2;
_ctrl=_this select 3;
_alt=_this select 4;




//Shift
if (_shift) exitwith { 


switch (_code) do {

	//F
	case 33: { 
		[] spawn aph_fnc_Act_CTKeyPressed;
	};

	//T
	case 20: {
			
		if (!(player getVariable ["HoldingObject",false]) || ((typeof (player getvariable "AP_CurrentCarryObject"))=="ap_FuelCan") ) exitwith {};
		(findDisplay 46) displaySetEventHandler ["MouseZchanged","_this call aph_fnc_CarryAdjustRotation"];
	};

};


};

//alt
if (_alt) exitwith { 

	switch (_code) do {

		//T
		case 20: {
			
			if (!(player getVariable ["HoldingObject",false]) || ((typeof (player getvariable "AP_CurrentCarryObject"))=="ap_FuelCan") ) exitwith {};
			(findDisplay 46) displaySetEventHandler ["MouseZchanged","_this call aph_fnc_CarryAdjustTilt"];
		};


	};

};

//ctrl
if (_ctrl) exitwith {

	switch (_code) do {

		//T
		case 20: {
		
			if (!(player getVariable ["HoldingObject",false]) || ((typeof (player getvariable "AP_CurrentCarryObject"))=="ap_FuelCan") ) exitwith {};
			(findDisplay 46) displaySetEventHandler ["MouseZchanged","_this call aph_fnc_CarryAdjustHeight"];
		};


	};

};

//F
if ((_code==33)) exitwith 
	{ 
		[] spawn aph_fnc_Act_CTKeyPressed;
	};


//User Set
switch (true) do {

		//Menu 
		case (InputAction 'User1' > 0): {[] spawn aph_fnc_Act_OpenMenu;};
		
		//Journal 
		case (InputAction 'User2' > 0): {[] spawn aph_fnc_Jrl_OpenJournal;};
		
		case (InputAction 'User3' > 0): {};
		
		case (InputAction 'User4' > 0): {};
		
		case (InputAction 'User5' > 0): {};
		
		
		

};


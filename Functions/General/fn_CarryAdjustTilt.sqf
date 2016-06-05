_ctrl=_this select 0;
_change=_this select 1;
_obj=player getvariable "AP_CurrentCarryObject";
_PBY=_obj getvariable ["AP_OPBY",[0,0,0]];
_pitch=_PBY select 0;
_bank=_PBY select 1;
_yaw=_PBY select 2;

if (_change >=0.0001) then {
	_pitch=_pitch+10;
	[_obj,[_pitch,_bank,_yaw]] call aph_fnc_SetPitchBankYaw;
	_obj setvariable ["AP_OPBY",[_pitch,_bank,_yaw]];
};			
if (_change <=0) then {	
	_pitch=_pitch-10;
	[_obj,[_pitch,_bank,_yaw]] call aph_fnc_SetPitchBankYaw;
	_obj setvariable ["AP_OPBY",[_pitch,_bank,_yaw]];
};	

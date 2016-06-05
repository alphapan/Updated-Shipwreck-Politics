_player=_this select 0;
_MissionTitle=_this select 1;
_MissionDescription=_this select 2;

// Check and add ID if needed
_missionsID=_player getVariable ["CurrentMissions_ID",[]];
_missions=_player getVariable ["CurrentMissions",[]];
	if !(_missionTitle in _missionsID) then {
		_missionsID pushback _MissionTitle;
		_missions pushback [_MissionTitle,_MissionDescription];
		_player setVariable ["CurrentMissions_ID",_missionsID];
		_player setVariable ["CurrentMissions",_missions];
	};
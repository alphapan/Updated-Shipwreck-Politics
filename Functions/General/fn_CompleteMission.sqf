_player=_this select 0;
_MissionTitle=_this select 1;


//remove Mission from current list
_missionsID=_player getVariable ["CurrentMissions_ID",[]];
_missions=_player getVariable ["CurrentMissions",[]];

_missions=_missions - [(_missions select (_missionsID find _missiontitle))];
_missionsID=_missionsID - [_missionTitle];

_player setVariable ["CurrentMissions_ID",_missionsID];
_player setVariable ["CurrentMissions",_missions];

_Completed=(_player getvariable ["CompletedMissions",[]]);
_Completed pushback _MissionTitle;

_player setvariable ["CompletedMissions",_Completed];
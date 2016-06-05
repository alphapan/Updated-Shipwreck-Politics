_Scontrol=_this select 0;
_sindex=0;
_partner=player getvariable "CurrentConversationPartner";
_ConversationArray=player getVariable "ConversationOptions";
_Options=_ConversationArray select 1;
switch (str _Scontrol) do {
		case "Control #1000": {_sindex=0;_Scontrol=1000;};
		case "Control #1001": {_sindex=1;_Scontrol=1001;};
		case "Control #1002": {_sindex=2;_Scontrol=1002;};
		case "Control #1003": {_sindex=3;_Scontrol=1003;};
		case "Control #1004": {_sindex=4;_Scontrol=1004;};
		
	};

//CURRENT PROBLEM: SORTED ARRAY DOES NOT MATCH CURRENT ARRAY PRESENTED HERE
	
		lbclear 1000;
		lbclear 1001;
		lbclear 1002;
		lbclear 1003;
		lbclear 1004;
		
//Available
_AvailableOptions=[];
{
	_condition=_x select 1;
	if ((typename _condition)=="STRING") then {_condition={true};};	
		if ([player,_partner] call _condition) then 
		{
		
			_AvailableOptions pushback _x;
		
		};

}foreach _Options;
		
		
//Conversation variables
_code=((_AvailableOptions select _Sindex) select 2);
_argu=((_AvailableOptions select _Sindex) select 3);
_NextID=((_AvailableOptions select _Sindex) select 4);

diag_log format ["code: %1",_code];

_id= aph_dialogNodes_ID find _NextID;
_dialogNode= aph_dialogNodes select _id;

//run code	
//[[[player,_partner,_argu],(compile _code)], "BIS_fnc_spawn",false, false] call BIS_fnc_MP;
if ((typename _code) =="STRING") then {} else
	{
		[player,_partner,_argu] spawn _code;
	};
	
	
if (_NextID=="") exitwith {[player] call aph_fnc_Cvo_PartnerReset;};	


//Character say text
((uiNamespace getVariable 'ConversationChat')displayCtrl 1100) ctrlSetStructuredText (parsetext format ["<t size='1' color='#000000'>%1</t>",(_dialogNode select 0)]);
	
	
//Query possible conversation options
_NewforListbox=(_dialogNode select 1);	
_LBaccepted=[];
{
	_condition=(_x select 1);
		if ((typename _condition)=="STRING") then {_condition={true};};	
	if ([player,_partner] call _condition) then {
		
		_LBaccepted pushback (_x select 0);
	};

}foreach _NewforListbox;


//Add new conversation options
	_display=1000;
{
	_text=_x;
			_run=[_text,_display] call 
				{
					if ((_this select 0)=="") exitwith {};
					((uiNamespace getVariable "ConversationChat") displayctrl (_this select 1)) lbAdd (_this select 0);	
				};	
	
_display=_display+1;	
}foreach _LBaccepted;


player setVariable ["ConversationOptions",_dialogNode];
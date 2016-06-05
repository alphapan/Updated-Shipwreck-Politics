player setvariable ["InDialog",true];
//Get Variables
_target=_this;
_unit= player;
//Reasons to exit code
if ((player distance _target) > 3.5) exitwith {};
if !(_target isKindOf "man") exitwith {};
if !(alive _target) exitwith {};
if (isPlayer (leader group _target)) exitwith {};
if (isPlayer _target) exitwith {};

_faction=faction _target;
_LoyaltyFaction=(str side _target) + "Rating";
_Loyalty=_unit getVariable [_LoyaltyFaction,0];

	
//Personal Conversation
_convo=[];
_Progress=0;
//get list of met people
_personalConversations=_unit getvariable ["PersonalConversations",[]];
	_HaveMetNames=[];	
	{_HaveMetNames pushback (_x select 0)}foreach _personalConversations;
		//If has conversation then start there
		if ( (name _target) in _HaveMetNames ) then {
		_Progress= (_personalConversations select (_HaveMetNames find (name _target)) ) select 1;
		};
		
//Check for conversation
_convoPrime=_target getvariable ["ConversationOptions","none"];

//If loyal add join group option
	if (typename _convoPrime=="String") then {
	
	_convoPrime=[(aph_dialogNodes select (aph_dialogNodes_ID find "Aph_Default"))];
		if (_loyalty >=75) then {		
			_convoPrime=[(aph_dialogNodes select (aph_dialogNodes_ID find "Aph_LoyalDefault"))];
		};

};



_convo=_convoPrime select _progress;

//Set
_unit setvariable ["ConversationOptions",_convo];
_unit setvariable ["CurrentConversationPartner",_target];

//Create Dialog
_cUI= createdialog "ConversationChat";

	//Character say text
((uiNamespace getVariable 'ConversationChat')displayCtrl 1100) ctrlSetStructuredText (parsetext format ["<t size='1' color='#000000'>%1</t>",(_convo select 0)]);
	
	
//sort available choices
_NewforListbox=(_Convo select 1);	
_LBaccepted=[];
{
	_condition=(_x select 1);
		if ((typename _condition)=="STRING") then {_condition={true};};	
	if ([player,_target] call _condition) then {
		
		_LBaccepted pushback (_x select 0);
	};

}foreach _NewforListbox;
	
	
//Add listbox choices
	_display=1000;
{
	_text= _x;
			_run=[_text,_display] call {
				if ((_this select 0)=="") exitwith {};
				((uiNamespace getVariable "ConversationChat") displayctrl (_this select 1)) lbAdd (_this select 0);
				};	
	
_display=_display+1;		
}foreach _LBaccepted;

//set Unit camera in UI
((uiNamespace getVariable 'ConversationChat')displayCtrl 1200) ctrlsettext format ["#(argb,256,256,1)r2t(camrender%1,1.0)",str name _target];
_target lookat _unit;


//create camera
_attachToValues=[0, 1, 1.7];
_camera= "camera" camCreate (getPos _target);
	_camera camPrepareTarget _target;
	_camera camPrepareFOV 0.25;
	_camera attachTo [_target, _attachToValues];		
	_camera camCommitPrepared 0.03;
	_camera cameraEffect ["INTERNAL", "BACK",format ["camrender%1",str name _target]];

//Set progress bars and pictures
ctrlSetText [1201,gettext (configfile >> "CfgFactionClasses" >> _faction >>"icon")];
ctrlSetText [1202,gettext (configfile >> "CfgFactionClasses" >> _faction >>"flag")];
call aph_fnc_Cvo_Influence;


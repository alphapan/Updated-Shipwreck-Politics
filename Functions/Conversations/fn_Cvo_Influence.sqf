_partner=player getvariable "CurrentConversationPartner";
while {!isNull (uiNameSpace getVariable "ConversationChat")} do {

	_LoyaltyFaction=(str side _partner) + "Rating";
	_Clan=_partner getvariable ["PersonalClan",""];
	_ClanRating=_partner getvariable [_clan + "Rating",1];
	_Loyalty=player getVariable [_LoyaltyFaction,1];
		if (_Loyalty<=-1) then {
			_Loyalty=_Loyalty *-1;
		};
		if (_ClanRating<=-1) then {
			_ClanRating=_ClanRating *-1;
		};
((uiNamespace getVariable "ConversationChat") displayCtrl 1301) progressSetPosition _Loyalty / 100;
((uiNamespace getVariable "ConversationChat") displayCtrl 1302) progressSetPosition _ClanRating / 100;

};
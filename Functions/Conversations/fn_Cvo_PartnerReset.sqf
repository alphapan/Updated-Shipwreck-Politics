_partner=player getvariable "CurrentConversationPartner";
	_partner enableAI "ANIM";
	//_partner enableAI "MOVE";
	_partner enableAI "FSM";
	_partner dowatch objnull;
	closeDialog 0;
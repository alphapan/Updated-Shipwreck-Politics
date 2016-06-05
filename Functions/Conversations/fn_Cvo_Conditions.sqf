

//o Default
aph_DC_DefaultJoinGroup={
	(count units (group (_this select 0)) ) < (((_this select 0) getvariable ['MaximumGroupSize',3]))
};

aph_DC_DefaultFullGroup={

	(count units (group (_this select 0)) ) >= (((_this select 0) getvariable ['MaximumGroupSize',3]))

};

//c 

//o Rust Farmer Conditions
aph_DC_rabbitquest={
	('aph_Rabbit' in itemcargo (_this select 0))
};
		
aph_DC_rabbitquestempty={
	!('aph_Rabbit' in itemcargo (_this select 0))
};
//c

//o Intro Mining Collector
aph_DC_MiningCollector={

	('Meet Foreman') in ( (_this select 0) getVariable ['CurrentMissions_ID',[]])

};

aph_DC_MiningOnMission={
	
	('Gather ores') in ( (_this select 0) getVariable ['CurrentMissions_ID',[]])

};

//c 
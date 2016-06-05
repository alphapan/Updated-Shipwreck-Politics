#define _ARMA_

class CfgPatches
{
	class ap_BuildingGarage
	{
		units[] = {"Building Garage"};
		weapons[] = {};
		requiredVersion = 1.0;
	};
};

class CfgVehicles
{
	class Land_TouristShelter_01_F;
	class ap_buildGarageBase: Land_TouristShelter_01_F
	{
		
		class Eventhandlers;
		
	};
	class ap_BuildGarage: ap_buildGarageBase
	{
		scope = 2;
		vehicleClass = "ap_Objects";
		displayName = "Building Garage";
		transportMaxWeapons=12;
		transportMaxMagazines=64;
		transportMaxBackpacks=12;
		transportAmmo=0;
		transportRepair=0;
		transportFuel=0;
		typicalCargo[]={};
		maximumLoad=1000;
		class TransportItems{};
		class Eventhandlers: Eventhandlers
		{
			scope = 2;
			init = "(_this select 0) addaction ['Build Garage',{[_this select 0,_this select 1] call aph_fnc_BG_StartUI},'',1.5,false]";
		};
	};
};



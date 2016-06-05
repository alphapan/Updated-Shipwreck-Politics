#define _ARMA_

class CfgPatches
{
	class AP_BuildingTable
	{
		units[] = {"Building Table"};
		weapons[] = {};
		requiredVersion = 1.0;
	};
};

class CfgVehicles
{
	class ReammoBox_F;
	class ap_buildTableBase: ReammoBox_F
	{
		
		class Eventhandlers;
		
	};
	class ap_BuildTable: ap_buildTableBase
	{
		scope = 2;
		vehicleClass = "AP_Objects";
		displayName = "Building Table";
		model = "\A3\Structures_F_EPA\Civ\Camping\WoodenTable_large_F.p3d";
		icon = "iconCrateWpns";
		maximumLoad=1000;
		class TransportItems /// some first aid kits in trunk according to safety regulations
		{
			
		};
		class Eventhandlers: Eventhandlers
		{
			scope = 2;
			init = "(_this select 0) addaction ['Build Table',{[_this select 0,_this select 1] call aph_fnc_BT_StartUI},'',1.5,false]";
		};
	};
};




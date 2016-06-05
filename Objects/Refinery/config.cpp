#define _ARMA_
class CfgPatches
{
	class AP_refineries
	{
		units[] = {"Refineries"};
		weapons[] = {};
		requiredVersion = 1.0;
	};
};
class CfgVehicles
{
	class ReammoBox_F;
	class Land_Device_assembled_F;
	class ap_RefineryBase: Land_Device_assembled_F
	{
		
		class Eventhandlers;
		
	};
	class AP_Refinery: ap_RefineryBase
	{
		scope = 2;
		vehicleClass = "ap_Objects";
		displayName = "Resource Refinery";
		//model = "\A3\Structures_F_EPC\Items\Electronics\Device_assembled_F.p3d";
		//icon = "iconCrateWpns";
		transportMaxWeapons=12;
		transportMaxMagazines=64;
		transportMaxBackpacks=12;
		transportAmmo=0;
		transportRepair=0;
		transportFuel=0;
		typicalCargo[]={};
		maximumLoad = 2000;
		class TransportItems{};
		class Eventhandlers: Eventhandlers
		{
			scope = 2;
			init = "(_this select 0) addaction ['Start Refinery',{[_this select 0,_this select 1] call aph_fnc_Ref_Startup},'',1.5,false]";
			put = "hint format ['%1',_this];hint 'put'";
		};
	};
};


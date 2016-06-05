class CfgPatches
{
	class ap_lighthouse
	{
		requiredAddons[] = {"A3_Structures_F"};
		requiredVersion = 0.1;
		units[] =	{"ap_lighthouse"};
		weapons[] = {};
	};
};


class CfgVehicles
{
	// Parent class declarations
	class House;
	class House_F: House
	{
		class DestructionEffects;
	};

	// Class of the house in good state
	class ap_lighthouse: House_F
	{
		scope = 2; // 2 = public = shown in editor
		displayName = "House 01 (Sample)"; // Name in editor
		model = \Buildings\Lighthouse\lighthouse.p3d; // Path to model

		vehicleClass = Structures; // category in editor; "Structures" value is a class defined in CfgVehicleClasses
		mapSize = 20.27; // Scale of icon in editor
		cost = 40000; // Score penalty for destroying the house

		
	};
	
};



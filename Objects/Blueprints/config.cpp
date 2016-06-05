#define _ARMA_
class CfgPatches
{
	class AP_notepad
	{
		units[] = {"Blueprints"};
		weapons[] = {};
		requiredVersion = 1.0;
	};
};


class CfgVehicleClasses
{
	class ap_Objects
	{
		displayname = "AP Objects";
	};
};


class CfgVehicles
{
	class NATO_Box_Base;
	class ap_BP_Box: NATO_Box_Base
	{
		scope = 2;
		vehicleClass = "ap_Objects";
		displayName = "Blueprints Box";
		model = "\A3\weapons_F\AmmoBoxes\AmmoBox_F";
		icon = "iconCrateWpns";
		class TransportMagazines{};
		class TransportWeapons{};
		class TransportItems
		{
			//empty
			class _xx_aph_empty
			{
				name = "aph_bp_empty";
				count = 3;
			};
			//Weapons
			class _xx_aph_BpM14
			{
				name = "aph_bp_srifle_DMR_06_olive_F";
				count = 3;
			};
			class _xx_aph_MXSW
			{
				name = "aph_bp_arifle_MX_SW_F";
				count = 3;
			};
			class _xx_aph_6sPistol
			{
				name = "aph_bp_hgun_Pistol_heavy_02_F";
				count = 3;
			};
			class _xx_aph_BpExpCharge
			{
				name = "aph_bp_DemoCharge_Remote_Mag";
				count = 3;
			};
			class _xx_aph_BpSatchelCharge
			{
				name = "aph_bp_SatchelCharge_Remote_Mag";
				count = 3;
			};
			class _xx_aph_BpCombatKnife
			{
				name = "aph_bp_AP_CombatKnife";
				count = 3;
			};
			
			//Ammunition
			class _xx_aph_Bp762x51
			{
				name = "aph_bp_20Rnd_762x51_Mag";
				count = 3;
			};
			class _xx_aph_Bp6rAmmo
			{
				name = "aph_bp_6Rnd_45ACP_Cylinder";
				count = 3;
			};
			
			//Accessories
			class _xx_aph_BpOptic_MRCO
			{
				name = "aph_bp_optic_MRCO";
				count = 3;
			};
			
			//Helmets
			class _xx_aph_BpBFHeadgear
			{
				name = "aph_bp_H_HelmetB_plain_blk";
				count = 3;
			};
			class _xx_aph_BpCamoHeadgear
			{
				name = "aph_bp_H_HelmetIA_camo";
				count = 3;
			};
			//Uniforms
			class _xx_aph_BpCombatUniform_tshirt
			{
				name = "aph_bp_U_I_CombatUniform_tshirt";
				count = 3;
			};
			class _xx_aph_BpUhunter
			{
				name = "aph_bp_U_C_HunterBody_grn";
				count = 3;
			};
			
			//Vests
			class _xx_aph_BpVPlater
			{
				name = "aph_bp_V_PlateCarrierGL_rgr";
				count = 3;
			};
			
			//Backpack
			class _xx_aph_BpBergenWC
			{
				name = "aph_bp_B_Bergen_mcamo";
				count = 3;
			};			
			
			//Ground Vehicles
			class _xx_aph_OffroadGreen
			{
				name = "aph_bp_B_G_Offroad_01_F";
				count = 3;
			};
			class _xx_aph_ZamakTransportTruck
			{
				name = "aph_bp_O_Truck_02_transport_F";
				count = 3;
			};
			
			//Water Vehicles
			class _xx_aph_TransportBoat
			{
				name = "aph_bp_I_Boat_Transport_01_F";
				count = 3;
			};
			
			//Air Vehicles
			class _xx_aph_TanuTransport
			{
				name = "aph_bp_O_Heli_Transport_04_F";
				count = 3;
			};
			class _xx_aph_Hummingbird
			{
				name = "aph_bp_C_Heli_Light_01_civil_F";
				count = 3;
			};
			
			//Furniture
			class _xx_aph_LargeWoodenTable
			{
				name = "aph_bp_Land_WoodenTable_large_F";
				count = 3;
			};
			class _xx_aph_SmallShelf
			{
				name = "aph_bp_Land_ShelvesWooden_F";
				count = 3;
			};
			class _xx_aph_LargeShelf
			{
				name = "aph_bp_Land_Rack_F";
				count = 3;
			};
			class _xx_aph_DeskChair
			{
				name = "aph_bp_Land_ChairWood_F";
				count = 3;
			};
						
			//Crafting
			class _xx_aph_PersonalGarage
			{
				name = "aph_bp_ap_BuildGarage";
				count = 3;
			};
			class _xx_aph_BuildingTable
			{
				name = "aph_bp_ap_BuildTable";
				count = 3;
			};
		
			//Inventory
			class _xx_aph_InventoryGPS
			{
				name = "aph_bp_InventoryGPS";
				count = 3;
			};
			class _xx_aph_InventoryWatch
			{
				name = "aph_bp_InventoryWatch";
				count = 3;
			};
			class _xx_aph_InventoryMap
			{
				name = "aph_bp_InventoryMap";
				count = 3;
			};
			class _xx_aph_InventoryCompass
			{
				name = "aph_bp_InventoryCompass";
				count = 3;
			};
		
		};
	};
};


class cfgMagazines
{
	class FakeMagazine;
	class aph_blueprints: FakeMagazine
	{
		count = 1;
		mass = 2;
		picture = "\Objects\Blueprints\Images\BlueprintBackground.paa";
		model = "\A3\Structures_F\Items\Documents\File1_F.p3d";
	};
	//Empty Blueprint 
	class aph_bp_empty: aph_blueprints
	{
		displayName = "Blank Blueprint";
	};
	
	//Rifles
	class aph_bp_srifle_DMR_06_olive_F: aph_blueprints
	{
		displayName = "Blueprints (Rifle: M14)";
	};
	class aph_bp_arifle_MX_SW_F: aph_blueprints
	{
		displayName = "Blueprints (Rifle: MX SW 6.5mm)";
	};
	
	//Handguns
	class aph_bp_hgun_Pistol_heavy_02_F: aph_blueprints
	{
		displayName = "Blueprints (.45 Six Cylinder Pistol)";
	};
	
	//Explosives
	class aph_bp_DemoCharge_Remote_Mag: aph_blueprints
	{
		displayName = "Blueprints (Explosive Charge)";
	};
	class aph_bp_SatchelCharge_Remote_Mag: aph_blueprints
	{
		displayName = "Blueprints (Satchel Charge)";
	};
	
	//Melee
	class aph_bp_AP_CombatKnife: aph_blueprints
	{
		displayName = "Blueprints (Combat Knife)";
	};
	
	//Magazines
	class aph_bp_20Rnd_762x51_Mag: aph_blueprints
	{
		displayName = "Blueprints (Ammunition: 7.62x51mm)";
	};
	class aph_bp_6Rnd_45ACP_Cylinder: aph_blueprints
	{
		displayName = "Blueprints (Ammunition: 6 Round Cylinder .45)";
	};
	
	//Accessories
	class aph_bp_optic_MRCO: aph_blueprints
	{
		displayName = "Blueprints (MRCO x2 Rifle Scope)";
	};

	//Helmets
	class aph_bp_H_HelmetB_plain_blk: aph_blueprints
	{
		displayName = "Blueprints (Helmet: Blufor Combat Helmet)";
	};
	class aph_bp_H_HelmetIA_camo: aph_blueprints
	{
		displayName = "Blueprints (Helmet: Camoflauge Helmet)";
	};
	
	//Uniforms
	class aph_bp_U_C_HunterBody_grn: aph_blueprints
	{
		displayName = "Blueprints (Hunter's Outfit)";
	};
	class aph_bp_U_I_CombatUniform_tshirt: aph_blueprints
	{
		displayName = "Blueprints (Combat Uniform)";
	};
	
	//Vests
	class aph_bp_V_PlateCarrierGL_rgr: aph_blueprints
	{
		displayName = "Blueprints (Plate Carrier Vest)";
	};
	
	//Backpacks
	class aph_bp_B_Bergen_mcamo: aph_blueprints
	{
		displayName = "Blueprints (Woodland Camo Backpack)";
	};
	
	//Ground Vehicles
	class aph_bp_O_Truck_02_transport_F: aph_blueprints
	{
		displayName = "Blueprints (Truck: Zamak Transport)";
	};
	class aph_bp_B_G_Offroad_01_F: aph_blueprints
	{
		displayName = "Blueprints (Offroad Truck)";
	};
	
	//Water Vehicles
	class aph_bp_I_Boat_Transport_01_F: aph_blueprints
	{
		displayName = "Blueprints (Assault Boat)";
	};
	
	//Air Vehicles
	class aph_bp_O_Heli_Transport_04_F: aph_blueprints
	{
		displayName = "Blueprints (Helicopter: Tanu Transport)";
	};
	class aph_bp_C_Heli_Light_01_civil_F: aph_blueprints
	{
		displayName = "Blueprints (Helicopter: Hummingbird)";
	};
	
	//Furniture
	class aph_bp_Land_WoodenTable_large_F: aph_blueprints
	{
		displayName = "Blueprints (Large Wooden table)";
	};
	class aph_bp_Land_ShelvesWooden_F: aph_blueprints
	{
		displayName = "Blueprints (Small shelf)";
	};
	class aph_bp_Land_Rack_F: aph_blueprints
	{
		displayName = "Blueprints (Large shelf)";
	};
	class aph_bp_Land_ChairWood_F: aph_blueprints
	{
		displayName = "Blueprints (Desk chair)";
	};
	
	//Storage Boxes 
	class aph_bp_aph_SmallBox: aph_blueprints
	{
		displayName = "Blueprints (Small Storage Box)";
	};
	class aph_bp_aph_LargeBox: aph_blueprints
	{
		displayName = "Blueprints (Large Storage Box)";
	};
	
	//Crafting
	class aph_bp_ap_BuildGarage: aph_blueprints
	{
		displayName = "Blueprints (Personal Garage)";
	};
	class aph_bp_ap_BuildTable: aph_blueprints
	{
		displayName = "Blueprints (Building table)";
	};

	
	//Items 
	class aph_bp_InventoryGPS: aph_blueprints
	{
		displayName = "Blueprints (Global Positioning System)";	
	};
	class aph_bp_InventoryWatch: aph_blueprints
	{
		displayName = "Blueprints (Analog Watch)";
	};
	class aph_bp_InventoryMap: aph_blueprints
	{
		displayName = "Blueprints (Island Map)";
	};
	class aph_bp_InventoryCompass: aph_blueprints
	{
		displayName = "Blueprints (Compass)";
	};
		
};


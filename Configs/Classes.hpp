class MineralInfo
{
	
	class aph_Ironore
	{
		RefinedItem= "aph_IronBar";		
		ProcessDifficulty=0.12;
		
	};
	class aph_GoldOre
	{
		RefinedItem= "aph_Goldbar";	
		ProcessDifficulty=0.45;	
		
	};
	class aph_PlatinumOre
	{
		RefinedItem= "aph_PlatinumBar";		
		ProcessDifficulty=0.25;	
		
	};
	class aph_StoneGravel
	{
		RefinedItem= "aph_StoneBrick";	
		ProcessDifficulty=0.15;		
		
	};
	class aph_WoolFiber
	{
		RefinedItem= "aph_WoolCloth";	
		ProcessDifficulty=0.30;		
		
	};
	class aph_FlaxFiber
	{
		RefinedItem= "aph_FlaxCloth";	
		ProcessDifficulty=0.25;		
		
	};
	class aph_WoodPiece
	{
		RefinedItem= "aph_WoodPlank";		
		ProcessDifficulty=0.15;	
		
	};
	class aph_Switchgrass
	{
		RefinedItem= "aph_PlasticBar";		
		ProcessDifficulty=0.25;	
		
	};
	
	
};


class MasterArrays
{
	
	class Blueprints
	{
	
		Blueprints[]={"aph_bp_srifle_DMR_06_olive_F","aph_bp_arifle_MX_SW_F","aph_bp_hgun_Pistol_heavy_02_F","aph_bp_DemoCharge_Remote_Mag",
		"aph_bp_SatchelCharge_Remote_Mag","aph_bp_AP_CombatKnife","aph_bp_20Rnd_762x51_Mag","aph_bp_6Rnd_45ACP_Cylinder","aph_bp_optic_MRCO",
		"aph_bp_H_HelmetB_plain_blk","aph_bp_H_HelmetIA_camo","aph_bp_U_C_HunterBody_grn","aph_bp_U_I_CombatUniform_tshirt","aph_bp_V_PlateCarrierGL_rgr",
		"aph_bp_B_Bergen_mcamo","aph_bp_InventoryGPS","aph_bp_InventoryWatch","aph_bp_InventoryMap","aph_bp_InventoryCompass","aph_bp_O_Truck_02_transport_F",
		"aph_bp_B_G_Offroad_01_F","aph_bp_I_Boat_Transport_01_F","aph_bp_C_Heli_Light_01_civil_F","aph_bp_O_Heli_Transport_04_F",
		"aph_bp_Land_WoodenTable_large_F","aph_bp_Land_ShelvesWooden_F","aph_bp_Land_Rack_F","aph_bp_Land_ChairWood_F","aph_bp_ap_SmallBox",
		"aph_bp_ap_LargeBox","aph_bp_ap_BuildGarage","aph_bp_ap_BuildTable"};
		
		
	};
		
};

class BluePrintInfo
{
	
		//Rifles
		class aph_bp_srifle_DMR_06_olive_F
		{
			CFG="CfgWeapons";
			ItemCreated="srifle_DMR_06_olive_F";
			name="Olive M14 Rifle";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 7;
			type="APH_WeapBuildList";
			description="Assault rifle 7.52mm caliber, Long range specialist."; 
		};
		class aph_bp_arifle_MX_SW_F
		{
			CFG="CfgWeapons";
			ItemCreated="arifle_MX_SW_F";
			name="MX SW 6.5mm";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 7;
			type="APH_WeapBuildList";
			description="Assault rifle. Long range specialist."; 
		};
		
		//Handguns
		class aph_bp_hgun_Pistol_heavy_02_F
		{
			CFG="CfgWeapons";
			ItemCreated="hgun_Pistol_heavy_02_F";
			name=".45 Six Cylinder Pistol";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 7;
			type="APH_WeapBuildList";
			description="Six shooter revolver, .45 caliber"; 
		};
		
		//Explosives
		class aph_bp_DemoCharge_Remote_Mag
		{
		};
		class aph_bp_SatchelCharge_Remote_Mag
		{
		};
		
		//Melee
		class aph_bp_AP_CombatKnife
		{
			CFG="CfgWeapons";
			ItemCreated="Aph_CombatKnife";
			name="Combat Knife";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 4;
			type="APH_WeapBuildList";
			description="Six shooter revolver, .45 caliber"; 
		};
		
		//Ammunition
		class aph_bp_20Rnd_762x51_Mag
		{
			
		};
		class aph_bp_6Rnd_45ACP_Cylinder
		{
		};
		
		//Accessories
		class aph_bp_optic_MRCO
		{
			
		};
		
		
		
		//Helmet	
		class aph_bp_H_HelmetB_plain_blk 
		{
			CFG="CfgVehicles";
			ItemCreated="H_HelmetB_plain_blk";
			name="Blufor Combat Helmet";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 3;
			type="APH_BuildableGearList";
			description="A combat helmet common among Blufor soldiers."; 
		};
		class aph_bp_H_HelmetIA_camo 
		{
			CFG="CfgVehicles";
			ItemCreated="H_HelmetIA";
			name="Camoflauge Helmet";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 3;
			type="APH_BuildableGearList";
			description="A combat helmet covered in camoflauge pattern."; 
		};
		
		//Uniforms
		class aph_bp_U_C_HunterBody_grn
		{
			CFG="CfgWeapons";
			ItemCreated="U_C_HunterBody_grn";
			name="Hunters Outfit";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 4;
			type="APH_BuildableGearList";
			description="Tan jacket and brown pants. The Rust militia is often seen wearing this outfit."; 
		};
		class aph_bp_U_I_CombatUniform_tshirt
		{
			
		};
		
		//Vests
		class aph_bp_V_PlateCarrierGL_rgr
		{
			CFG="CfgWeapons";
			ItemCreated="V_PlateCarrierGL_rgr";
			name="Plate Carrier Vest";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 6;
			type="APH_BuildableGearList";
			description="A strong bulletproof vest. Covers a large portion of the torso."; 
		};
		
		//Backpacks
		class aph_bp_B_Bergen_mcamo
		{
			CFG="CfgVehicles";
			ItemCreated="B_Bergen_mcamo";
			name="Woodland Camo Backpack";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 5;
			type="APH_BuildableGearList";
			description="A medium sized backpack. Camoflauge pattern."; 
		};
		
		//Items
		class aph_bp_InventoryGPS
		{
			CFG="CfgWeapons";
			ItemCreated="ItemGPS";
			name="Global Position System (GPS)";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 6;
			type="APH_VehicleAccesorybuildList";
			description="A small electronic GPS. Used to reference player position."; 
		};
		class aph_bp_InventoryWatch
		{
			CFG="CfgWeapons";
			ItemCreated="Itemwatch";
			name="Analog watch";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 2;
			type="APH_VehicleAccesorybuildList";
			description="An analog hand watch.Keep track of the time."; 
		};
		class aph_bp_InventoryMap
		{
			CFG="CfgWeapons";
			ItemCreated="ItemMap";
			name="Island map";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 4;
			type="APH_VehicleAccesorybuildList";
			description="A map of the Stratis Island"; 
		};
		class aph_bp_InventoryCompass
		{
			CFG="CfgWeapons";
			ItemCreated="ItemCompass";
			name="Hand compass";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 2;
			type="APH_VehicleAccesorybuildList";
			description="Small hand sized compass"; 
		};
		
		//Ground vehicles 
		class aph_bp_O_Truck_02_transport_F
		{
			
		};
		class aph_bp_B_G_Offroad_01_F
		{
			
		};
		
		//Water vehicles
		class aph_bp_I_Boat_Transport_01_F
		{
			
		};
		
		
		//Air vehicles
		class aph_bp_C_Heli_Light_01_civil_F
		{
			CFG="CfgVehicles";
			ItemCreated="C_Heli_Light_01_civil_F";
			name="Civilian Helicopter";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 9;
			type="APH_AirVehBuildList";
			description="A small four man closed-cockpit helicopter. Highly maneuverable."; 
			
		};
		class aph_bp_O_Heli_Transport_04_F
		{
			CFG="CfgVehicles";
			ItemCreated="O_Heli_Transport_04_F";
			name="Transport Helicopter";
			cost[]={0,0,0,0,0,0,0,0,0};
			Difficulty= 11;
			type="APH_AirVehBuildList";
			description="A large transport helicopter."; 
		};
		
		//Furniture
		class aph_bp_Land_WoodenTable_large_F
		{
		};
		class aph_bp_Land_ShelvesWooden_F
		{
		};
		class aph_bp_Land_Rack_F
		{
		};
		class aph_bp_Land_ChairWood_F
		{
		};
		
		//Storage Boxes
		class aph_bp_ap_SmallBox
		{
		};
		class aph_bp_ap_LargeBox
		{
		};
	
		//Crafting
		class aph_bp_ap_BuildGarage
		{
		};
		class aph_bp_ap_BuildTable
		{
		};	
	
	
	
	
	
	
	
	
};



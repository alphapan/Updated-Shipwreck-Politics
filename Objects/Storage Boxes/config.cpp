class CfgPatches
{
	class ap_StorageBoxes
	{
		units[] = {"Small Box","Large Box","Fuel Can"};
		weapons[] = {};
		requiredVersion = 1.0;
	};
};

class CfgVehicles
{
	class ReammoBox_F;
	class ap_Boxes: ReammoBox_F
	{
		icon = "iconCrateWpns";
		vehicleClass = "ap_Objects";
		class TransportMagazines{};
		class TransportWeapons{};
		class TransportItems{};
		class Eventhandlers;
	};
	class ap_Fuels: ap_Boxes
	{
	};
		class ap_SmallBox: ap_Boxes
		{
			scope = 2;
			displayName = "Small Box";
			model = "\A3\weapons_F\AmmoBoxes\AmmoBox_F";
			maximumLoad = 2000;
		};
		class ap_LargeBox: ap_Boxes
		{
			scope = 2;
			displayName = "Large Box";
			model = "\A3\Weapons_F\Ammoboxes\Supplydrop.p3d";
			maximumLoad = 4000;
		};
		class ap_FuelCan: ap_Fuels
		{
			scope = 2;
			displayName = "Fuel Can";
			model = "\A3\Structures_F\Items\Vessels\CanisterFuel_F.p3d";
			maximumLoad = 100;
			class TransportItems 
			{
				class _xx_aph_X
				{
					name = "aph_ProcessedOil";
					count = 20;
				};
			};
			class DestructionEffects
			{
				class UAVCrashSmoke
				{
					simulation="particles";
					type="UAVCrashSmoke";
					position="[0,0,0]";
					intensity=0.15000001;
					interval=1;
					lifeTime=0.012;
				};
				class Light1
				{
					simulation="light";
					type="ObjectDestructionLightSmall";
					position="destructionEffect1";
					intensity=0.001;
					interval=1;
					lifeTime=3;
					enabled="distToWater";
				};
				class Sound
				{
					simulation="sound";
					position="destructionEffect1";
					intensity=1;
					interval=1;
					lifeTime=1;
					type="Fire";
				};
				class Fire1
				{
					simulation="particles";
					type="ObjectDestructionFire1Tiny";
					position="destructionEffect1";
					intensity=0.15000001;
					interval=1;
					lifeTime=3;
				};
				class Refract1
				{
					simulation="particles";
					type="SmallFireFRefract";
					position="destructionEffect1";
					intensity=0.15000001;
					interval=1;
					lifeTime=3;
				};
				class Smoke1
				{
					simulation="particles";
					type="SmallWreckSmoke";
					position="destructionEffect1";
					intensity=0.15000001;
					interval=1;
					lifeTime=3.5;
				};
			};
		};
		class ap_FuelBarrel: ap_Fuels
		{
			scope = 2;
			displayName = "Fuel Barrel";
			model = "\A3\Structures_F\Items\Vessels\MetalBarrel_F.p3d";
			maximumLoad = 600;
			class TransportItems 
			{
				class _xx_aph_X
				{
					name = "aph_ProcessedOil";
					count = 120;
				};
			};
			class DestructionEffects
			{
				class UAVCrashSmoke
				{
					simulation="particles";
					type="UAVCrashSmoke";
					position="[0,0,0]";
					intensity=0.15000001;
					interval=1;
					lifeTime=0.012;
				};
				class Light1
				{
					simulation="light";
					type="ObjectDestructionLightSmall";
					position="destructionEffect1";
					intensity=0.001;
					interval=1;
					lifeTime=3;
					enabled="distToWater";
				};
				class Sound
				{
					simulation="sound";
					position="destructionEffect1";
					intensity=1;
					interval=1;
					lifeTime=1;
					type="Fire";
				};
				class Fire1
				{
					simulation="particles";
					type="ObjectDestructionFire1Tiny";
					position="destructionEffect1";
					intensity=0.15000001;
					interval=1;
					lifeTime=3;
				};
				class Refract1
				{
					simulation="particles";
					type="SmallFireFRefract";
					position="destructionEffect1";
					intensity=0.15000001;
					interval=1;
					lifeTime=3;
				};
				class Smoke1
				{
					simulation="particles";
					type="SmallWreckSmoke";
					position="destructionEffect1";
					intensity=0.15000001;
					interval=1;
					lifeTime=3.5;
				};
			};
		};
		
		
};
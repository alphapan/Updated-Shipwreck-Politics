class CfgPatches
{
	class ap_flashlight
	{
		units[]={};
		weapons[]={"ap_flashlight"};
		requiredVersion=0.1;
		requiredAddons[]={};
	};
};
/// Weapon slots
class SlotInfo;
class MuzzleSlot;
class CowsSlot;
class PointerSlot;
class UnderBarrelSlot;

class cfgWeapons
{
	class Pistol_Base_F;
	class WeaponSlotsInfo;
	class SlotInfo;
	class PointerSlot;
	class ap_flashlight:Pistol_Base_F
	{
		
		scope=2;
		scopeCurator=2;
		displayName="Flashlight";
		author="";
		picture="\A3\weapons_F\Data\UI\gear_accv_flashlight_CA.paa";
		model="\A3\weapons_f\acc\accv_Flashlight_F";
		vehicleClass="WeaponsHandguns";
		
		/*
		class TransportWeapons
		{
			class ap_flashlight
			{
				weapon="ap_flashlight";
				count=1;
			};
		};
		class TransportMagazines
		{
		};
		*/
			class WeaponSlotsInfo: WeaponSlotsInfo
			{
				class PointerSlot: PointerSlot
				{
					iconPosition[]={0.2,0.44999999};
					iconScale=0.25;
					compatibleItems[]=
					{
						"acc_flashlight"
					};
				};
			};
			class LinkedItems
			{
				class LinkedItemsOptic
				{
					slot="PointerSlot";
					item="acc_flashlight";
				};
			};
		
		
	};

};
		

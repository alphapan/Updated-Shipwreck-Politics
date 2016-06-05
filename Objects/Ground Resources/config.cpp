class CfgPatches
{
	class AP_groundmodels
	{
		units[] = {"Ground resources"};
		weapons[] = {};
		requiredVersion = 1.0;
	};
};

class CfgVehicleClasses
{
	class Ground_Rocks
	{
		displayname= "Ground Resources";
	};
	class Ground_Crops
	{
		displayname= "Ground Crops";
	};
};	
	

class CfgVehicles
{	
	class Thing;
	
class AP_GroundCrop: Thing
	{
		class Eventhandlers;
		scope=2;
		mapsize= 0.7;
		accuracy=0.2;
		destrtype="DestructNo";
		vehicleclass="Ground_Rocks";
	};		
class AP_GroundRock: Thing
	{
		class Eventhandlers;
		scope=2;
		mapsize= 0.7;
		accuracy=0.2;
		destrtype="DestructNo";
		vehicleclass="Ground_Crops";
	};	
	
	//Rocks	
	class Iron_rock: AP_GroundRock
	{
		model="Objects\Ground Resources\Models\ironstone.p3d";
		icon="Objects\Ground Resources\Images\Icon\ironoreicon.paa";
		displayname="Iron Stone";
		class Eventhandlers: Eventhandlers	/// specific event handlers to handle variants - by default are all shown, event handlers hide them
		{
			scope=2;
			init = "(_this select 0) setvariable ['MineralType','Iron',true];(_this select 0) setvariable ['MineralAmount',500,true];";
		};
	};
	class Gold_rock: AP_GroundRock
	{
		model="Objects\Ground Resources\Models\goldstone.p3d";
		icon="Objects\Ground Resources\Images\Icon\goldoreicon.paa";
		displayname="Gold Stone";
		class Eventhandlers: Eventhandlers	/// specific event handlers to handle variants - by default are all shown, event handlers hide them
		{
			scope=2;
			init = "(_this select 0) setvariable ['MineralType','Gold',true];(_this select 0) setvariable ['MineralAmount',500,true];";
		};
		 
	};
	class Platinum_rock: AP_GroundRock
	{
		model="Objects\Ground Resources\Models\platinumstone.p3d";
		icon="Objects\Ground Resources\Images\Icon\platoreicon.paa";
		displayname="Platinum Stone";
		class Eventhandlers: Eventhandlers	/// specific event handlers to handle variants - by default are all shown, event handlers hide them
		{
			scope=2;
			init = "(_this select 0) setvariable ['MineralType','Platinum',true];(_this select 0) setvariable ['MineralAmount',500,true];";
		};
	};
	class Stone_rock: AP_GroundRock
	{
		model="Objects\Ground Resources\Models\stoneore.p3d";
		icon="Objects\Ground Resources\Images\Icon\stoneoreicon.paa";
		displayname="Ground Stone";
		class Eventhandlers: Eventhandlers	/// specific event handlers to handle variants - by default are all shown, event handlers hide them
		{
			scope=2;
			init = "(_this select 0) setvariable ['MineralType','Stone',true];(_this select 0) setvariable ['MineralAmount',500,true];";
		};
	};

	
//Small versions of Rocks
	class SmallGold_rock: AP_GroundRock
	{
		model="Objects\Ground Resources\Models\smallgoldstone.p3d";
		icon="Objects\Ground Resources\Images\Icon\goldoreicon.paa";
		displayname="Small Gold Stone";
		
		 
	};
	class SmallPlatinum_rock: AP_GroundRock
	{
		model="Objects\Ground Resources\Models\smallplatinumstone.p3d";
		icon="Objects\Ground Resources\Images\Icon\platoreicon.paa";
		displayname="Small Platinum Stone";
		
	};
	class SmallStone_rock: AP_GroundRock
	{
		model="Objects\Ground Resources\Models\smallstoneore.p3d";
		icon="Objects\Ground Resources\Images\Icon\stoneoreicon.paa";
		displayname="Small Ground Stone";
		
	};
	class SmallIron_rock: AP_GroundRock
	{
		model="Objects\Ground Resources\Models\smallironstone.p3d";
		icon="Objects\Ground Resources\Images\Icon\ironoreicon.paa";
		displayname="Small Iron Stone";
	};
	

//Ground Crops	
	class Wheat_Stalk: AP_GroundCrop
	{
		model="Objects\Ground Resources\Models\wheatstalk.p3d";
		icon="Objects\Ground Resources\Images\Icon\wheatstalkicon.paa";
		displayname="Wheat Stalk";
		class Eventhandlers: Eventhandlers	/// specific event handlers to handle variants - by default are all shown, event handlers hide them
		{
			scope=2;
			init = "(_this select 0) setvariable ['MineralType','Wheat',true];(_this select 0) addaction ['Harvest Wheat',{hint 'harvest'}];";
		};
	};	
};

class cfgWeapons
{
	class Toolkit;	
	class aph_InventoryResources: Toolkit
	{
		vehicleclass="Ground_Rocks";
		class ItemInfo
        	{
            		 allowedSlots[]= {701,801,901}; mass =1; scope=2; type=620;UniformModel="";
        	};
		model = "\A3\Structures_F\Items\Documents\File1_F.p3d";
		count = 1;
	};
//Raw Minerals
	class aph_IronOre: aph_InventoryResources
	{
		displayName = "Iron Ore";
		model="Objects\Ground Resources\Models\smallironstone.p3d";
		picture = "\Objects\Ground Resources\Images\Inventory\ironore.paa";
		descriptionShort = "Iron Ore <br/> Can be processed into Iron Bar";
		
	};
	class aph_GoldOre: aph_InventoryResources
	{
		displayName = "Gold Ore";
		model="Objects\Ground Resources\Models\smallgoldstone.p3d";
		picture = "\Objects\Ground Resources\Images\Inventory\Goldore.paa";
		descriptionShort = "";
		
	};
	class aph_PlatinumOre: aph_InventoryResources
	{
		displayName = "Platinum Ore";
		model="Objects\Ground Resources\Models\smallplatinumstone.p3d";
		picture = "\Objects\Ground Resources\Images\Inventory\PlatinumOre.paa";
		descriptionShort = "";
		
	};
	class aph_StoneGravel: aph_InventoryResources
	{
		displayName = "Stone Gravel";
		model="Objects\Ground Resources\Models\smallstoneore.p3d";
		picture = "\Objects\Ground Resources\Images\Inventory\StoneGravel.paa";
		descriptionShort = "";
		
	};
	class aph_WoolFiber: aph_InventoryResources
	{
		displayName = "Wool Fiber";
		picture = "\Objects\Ground Resources\Images\Inventory\WoolFiber.paa";
		descriptionShort = "";
		
	};
	class aph_FlaxFiber: aph_InventoryResources
	{
		displayName = "Flax Fiber";
		picture = "\Objects\Ground Resources\Images\Inventory\FlaxFiber.paa";
		descriptionShort = "";
		
	};
	class aph_WoodPiece: aph_InventoryResources
	{
		displayName = "Wood Piece";
		picture = "\Objects\Ground Resources\Images\Inventory\WoodImage.paa";
		descriptionShort = "";
		
	};
	class aph_Switchgrass: aph_InventoryResources
	{
		displayName = "Switchgrass Bundle";
		picture = "\Objects\Ground Resources\Images\Inventory\switchgrass.paa";
		descriptionShort = "";
		
	};
	
	//Processed minerals 
	class aph_FlaxCloth: aph_InventoryResources
	{
		displayName = "Flax cloth";
		picture = "\Objects\Ground Resources\Images\Inventory\flaxcloth.paa";
		descriptionShort = "";
		
	};
	class aph_IronBar: aph_InventoryResources
	{
		displayName = "Iron bar";
		picture = "\Objects\Ground Resources\Images\Inventory\Ironbar.paa";
		descriptionShort = "";
		
	};
	class aph_Goldbar: aph_InventoryResources
	{
		displayName = "Gold Bar";
		picture = "\Objects\Ground Resources\Images\Inventory\Goldbar.paa";
		descriptionShort = "";
		
	};
	class aph_SteelBar: aph_InventoryResources
	{
		displayName = "Steel bar";
		picture = "\Objects\Ground Resources\Images\Inventory\steelbar.paa";
		descriptionShort = "";
		
	};
	class aph_PlasticBar: aph_InventoryResources
	{
		displayName = "Plastic bar";
		picture = "\Objects\Ground Resources\Images\Inventory\plasticbar.paa";
		descriptionShort = "";
		
	};
	class aph_PlatinumBar: aph_InventoryResources
	{
		displayName = "Platinum bar";
		picture = "\Objects\Ground Resources\Images\Inventory\platinumbar.paa";
		descriptionShort = "";
		
	};
	class aph_StoneBrick: aph_InventoryResources
	{
		displayName = "Stone brick";
		picture = "\Objects\Ground Resources\Images\Inventory\stonebrick.paa";
		descriptionShort = "";
		
	};
	class aph_WoodPlank: aph_InventoryResources
	{
		displayName = "Wood plank";
		picture = "\Objects\Ground Resources\Images\Inventory\woodplank.paa";
		descriptionShort = "";
		
	};
	class aph_WoolCloth: aph_InventoryResources
	{
		displayName = "Wool cloth";
		picture = "\Objects\Ground Resources\Images\Inventory\woolcloth.paa";
		descriptionShort = "";
		
	};

	class aph_ProcessedOil: aph_InventoryResources
	{
		displayName = "Fuel";
		picture = "\Objects\Ground Resources\Images\Inventory\Oil.paa";
		descriptionShort = "";
		class ItemInfo
        	{
            		 allowedSlots[]= {}; mass =5; scope=2; type=620;UniformModel="";
        	};
		
	};
	
};


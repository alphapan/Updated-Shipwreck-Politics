class CfgPatches
{
	class AP_Functions
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
	};
};

class CfgFunctions 
{
		class aph
		{
			class Actions
			{
				file = "\functions\Actions";
				class Act_OpenMenu {};
				class Act_StartLearnBlueprint {};
				class Act_LearnBlueprint {};
				class Act_RefuelTarget {};
				class Act_AttachFuelCan {};
			};

			class Cursortarget
			{
				file = "\functions\Actions\Cursortarget";
				class Act_Cursortarget {};
				class Act_CursortargetReleased {};
				class Act_CTCheckCondition {};
				class Act_CTScrollMouse {};
				class Act_CTKeyPressed {};
			};
				class CursortargetActions
				{
					file = "\functions\Actions\Cursortarget\Action";
					class Act_MineMineral {};
					class Act_SwitchCharacter {};
					class Act_PickupObject {};
				};
			
			class Conversations
			{
				file = "\functions\Conversations";
				class Cvo_Conversations {};
				class Cvo_Conditions {};
				class Cvo_Actions {};
				class Cvo_Start {};
				class Cvo_ConversationLB {};
				class Cvo_Influence {};
				class Cvo_PartnerReset {};
				class Cvo_Init {};
				
			};
			
			class General
			{
				file = "\functions\General";
				class CheckPlayerInventory {};
				class DeleteInventoryItem {};
				class SortArray {};
				class ClassType {};
				class AssignMission {};
				class CompleteMission {};
				class CarryAdjustHeight {};
				class CarryAdjustRotation {};
				class CarryAdjustTilt {};
				class SetPitchBankYaw {};
			};
			
			class Eventhandlers
			{
				file = "\functions\Eventhandlers";
				class ctrlEventhandlers {};
				class ctrlKeyPressed {};
				class ctrlKeyReleased {};
			};
			
			class JournalMain
			{
				file = "\functions\Journal";
				class Jrl_OpenJournal {};
				class Jrl_ClearUI {};
			};
			
			class JournalCharacter
			{
				
				file = "\functions\Journal\CharacterPage";
				class Jrl_OpenCharacterPage {};
				class Jrl_CharacterLeftTopLB {};
				class Jrl_CharacterLeftBottomLB {};
				class Jrl_CharacterRightTopLB {};
				class Jrl_CharacterRightBottomLB {};
				class Jrl_CPF_SetGuardedLocation {};
			};
			
			class JournalCrafting
			{
				
				file = "\functions\Journal\CraftingPage";
				class Jrl_OpenCraftingPage {};
				class Jrl_CraftingLeftTopLB {};
				class Jrl_CraftingLeftBottomLB {};
			};
			
			class JournalGroup
			{
				
				file = "\functions\Journal\GroupPage";
				class Jrl_OpenGroupPage {};
			};
			
			class JournalInfluence
			{
				
				file = "\functions\Journal\InfluencePage";
				class Jrl_OpenInfluencePage {};
			};
			
			class Refinery
			{
				file = "\functions\Refinery";
				class Ref_ActiveProcessing {};
				class Ref_AddtoQue {};
				class Ref_AdjustQuePics {};
				class Ref_OnOffSwitch {};
				class Ref_PutButton {};
				class Ref_QueryAccepted {};
				class Ref_RefreshRefineUI {};
				class Ref_ReturnFromQue {};
				class Ref_SelectionChanged {};
				class Ref_SliderValue {};
				class Ref_Startup {};
				class Ref_TakeButton {};
			};
			
			class BuildingTable
			{
				file = "\functions\Building\Table";
				class BT_StartUI {};
				class BT_TopListBox {};
				class BT_BottomListBox {};
				class BT_BuildButton {};
			};
			
			class BuildingGarage
			{
				file = "\functions\Building\Garage";
				class BG_StartUI {};
				class BG_SetBuildPad {};
				class BG_TopListBox {};
				class BG_BottomListBox {};
				class BG_BuildButton {};
				class BG_ActiveProcessing {};
				class BG_CancelBuild {};
				
			};
			
			
			class ShipwreckPolitics
			{
				file = "\functions\General";
				class ShipwreckPolitics_local_init {postInit=1;};
			};
			
			
			
		};
};


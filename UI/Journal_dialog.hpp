 class PlayerUINotebook
{
   idd = 2113;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['PlayerUINotebook', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
	
class MainBack: RscPicture
{
	idc = 1900;
	text = "\Images\Journal\MainBackground.paa";
	x = 0.356024 * safezoneW + safezoneX;
	y = 0.00697734 * safezoneH + safezoneY;
	w = 0.639894 * safezoneW;
	h = 0.86704 * safezoneH;
};
class button1: HiddenButton
{
	idc = 1904;
	text = "Character";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.0919812 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenCharacterPage;";
	
};
class button2: HiddenButton
{
	idc = 1901;
	text = "Crafting";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.193986 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenCraftingPage;";
};
class button3: HiddenButton
{
	idc = 1902;
	text = "Influence";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.295991 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenInfluencePage;";
};
class button4: HiddenButton
{
	idc = 1903;
	text = "Group";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.397995 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenGroupPage;";
};
//LEFTSIDE
class InnerPageLeftList: RscStructuredText
{
	idc = 1100;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.0409789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.64403 * safezoneH;
	colorBackground[] = { 0, 0, 0, 0 };
};
class LeftButtonhalf: HiddenButton
{
	idc = 1908;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.5290389 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	sizeEx = 0.020;
	action = "";
};
class LeftbottomButton: HiddenButton
{
	idc = 1905;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.3650089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	sizeEx = 0.020;
	action = "";
};
class textboxtop: RscListbox
{
	idc = 1500;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.0609789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	colorText[] = {0,0,0,1};
	colorSelect[] = {1,1,1,1};
	colorSelect2[] = {1,1,1,1};
	colorSelectBackground[] = {0.6,0.6,0.6,0.3};
	colorSelectBackground2[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	sizeEx = 0.032;
};
class textboxbottom: RscListbox
{
	idc = 1501;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.2273089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	colorText[] = {0,0,0,1};
	colorSelect[] = {1,1,1,1};
	colorSelect2[] = {1,1,1,1};
	colorSelectBackground[] = {0.6,0.6,0.6,0.3};
	colorSelectBackground2[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	sizeEx = 0.032;
};


//RIGHTSIDE
class InnerPageRightList: RscStructuredText
{
	idc = 1101;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.0409789 * safezoneH + safezoneY;
	w = 0.25395  * safezoneW;
	h = 0.64403 * safezoneH;
	colorBackground[] = { 0, 0, 0, 0 };
};
class RightLastPageButton: HiddenButton
{
	idc = 1906;
	text = "Last";
	font = "LucidaConsoleB";
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.6400089 * safezoneH + safezoneY;
	w = 0.03395  * safezoneW;
	h = 0.02203 * safezoneH;
	sizeEx = 0.023;
	action = "";
};
class RightNextPageButton: HiddenButton
{
	idc = 1907;
	text = "Next";
	font = "LucidaConsoleB";
	x = 0.901916 * safezoneW + safezoneX;
	y = 0.6400089 * safezoneH + safezoneY;
	w = 0.03395  * safezoneW;
	h = 0.02203 * safezoneH;
	sizeEx = 0.023;
	action = "";
};

};
};
class PlayerUINotebookCharacter
{
   idd = 2113;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['PlayerUINotebookCharacter', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
class MainBack: RscPicture
{
	idc = 11900;
	text = "\Images\Journal\MainBackground.paa";
	x = 0.356024 * safezoneW + safezoneX;
	y = 0.00697734 * safezoneH + safezoneY;
	w = 0.639894 * safezoneW;
	h = 0.86704 * safezoneH;
};

//Tab Buttons
class button1: HiddenButton
{
	idc = 11900;
	text = "Character";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.0919812 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenCharacterPage;";
	
};
class button2: HiddenButton
{
	idc = 11901;
	text = "Crafting";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.193986 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenCraftingPage;";
};
class button3: HiddenButton
{
	idc = 11902;
	text = "Influence";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.295991 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenInfluencePage;";
};
class button4: HiddenButton
{
	idc = 11903;
	text = "Group";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.397995 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenGroupPage;";
};

//LEFTSIDE
class LeftText: RscStructuredText
{
	idc = 11100;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.0409789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.64403 * safezoneH;
	colorBackground[] = { 0, 0, 0, 0 };
};
class LeftTopLB: RscJournalListbox
{
	idc = 11500;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.0609789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="[] spawn aph_fnc_Jrl_CharacterLeftTopLB";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_Jrl_CharacterLeftTopLB;";//--- action/function to call when listbox or combobox has been double clicked
};
class LeftBottomLB: RscJournalListbox
{
	idc = 11501;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.2273089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="[] spawn aph_fnc_Jrl_CharacterLeftBottomLB";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_Jrl_CharacterLeftBottomLB;";//--- action/function to call when listbox or combobox has been double clicked
};


//RIGHTSIDE
class RightText: RscStructuredText
{
	idc = 11101;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.0409789 * safezoneH + safezoneY;
	w = 0.25395  * safezoneW;
	h = 0.64403 * safezoneH;
	colorBackground[] = { 0, 0, 0, 0 };
};
class RightTopLB: RscJournalListbox
{
	idc = 11502;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.0609789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	sizeEx = 0.032;
	onLBSelChanged="[] spawn aph_fnc_Jrl_CharacterRightTopLB;";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_Jrl_CharacterRightTopLB;";//--- action/function to call when listbox or combobox has been double clicked
};
class RightBottomLB: RscJournalListbox
{
	idc = 11503;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.2473089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;onLBSelChanged="";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_Jrl_CharacterRightBottomLB;";//--- action/function to call when listbox or combobox has been double clicked
};

//Turn Page
class PageBackButton: HiddenButton
{
	idc = 11906;
	text = "Last";
	font = "LucidaConsoleB";
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.6400089 * safezoneH + safezoneY;
	w = 0.03395  * safezoneW;
	h = 0.02203 * safezoneH;
	sizeEx = 0.023;
	action = "";
};
class PageForwardButton: HiddenButton
{
	idc = 11907;
	text = "Next";
	font = "LucidaConsoleB";
	x = 0.901916 * safezoneW + safezoneX;
	y = 0.6400089 * safezoneH + safezoneY;
	w = 0.03395  * safezoneW;
	h = 0.02203 * safezoneH;
	sizeEx = 0.023;
	action = "";
};

};
};
class PlayerUINotebookCrafting
{
   idd = 2113;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['PlayerUINotebookCrafting', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
	
class MainBack: RscPicture
{
	idc = 11900;
	text = "\Images\Journal\MainBackground.paa";
	x = 0.356024 * safezoneW + safezoneX;
	y = 0.00697734 * safezoneH + safezoneY;
	w = 0.639894 * safezoneW;
	h = 0.86704 * safezoneH;
};
class button1: HiddenButton
{
	idc = 11904;
	text = "Character";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.0919812 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenCharacterPage;";
	
};
class button2: HiddenButton
{
	idc = 11901;
	text = "Crafting";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.193986 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenCraftingPage;";
};
class button3: HiddenButton
{
	idc = 11902;
	text = "Influence";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.295991 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenInfluencePage;";
};
class button4: HiddenButton
{
	idc = 11903;
	text = "Group";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.397995 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenGroupPage;";
};

//LEFTSIDE
class InnerPageLeftList: RscStructuredText
{
	idc = 11100;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.0409789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.64403 * safezoneH;
	colorBackground[] = { 0, 0, 0, 0 };
};
class LeftbottomButton: HiddenButton
{
	idc = 11905;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.3650089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	sizeEx = 0.020;
	action = "";
};
class LeftButtonhalf: HiddenButton
{
	idc = 11908;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.5290389 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	sizeEx = 0.020;
	action = "";
};
class textboxtop: RscJournalListbox
{
	idc = 11500;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.0609789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="[] spawn aph_fnc_Jrl_CraftingLeftTopLB;";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_Jrl_CraftingLeftTopLB;";//--- action/function to call when listbox or combobox has been double clicked
};
class textboxbottom: RscJournalListbox
{
	idc = 11501;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.2273089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_Jrl_CraftingLeftBottomLB;";//--- action/function to call when listbox or combobox has been double clicked
};


//RIGHTSIDE
class InnerPageRightList: RscStructuredText
{
	idc = 11101;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.0409789 * safezoneH + safezoneY;
	w = 0.25395  * safezoneW;
	h = 0.64403 * safezoneH;
	colorBackground[] = { 0, 0, 0, 0 };
};
class RightLastPageButton: HiddenButton
{
	idc = 11906;
	text = "Last";
	font = "LucidaConsoleB";
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.6400089 * safezoneH + safezoneY;
	w = 0.03395  * safezoneW;
	h = 0.02203 * safezoneH;
	sizeEx = 0.023;
	action = "";
};
class RightNextPageButton: HiddenButton
{
	idc = 11907;
	text = "Next";
	font = "LucidaConsoleB";
	x = 0.901916 * safezoneW + safezoneX;
	y = 0.6400089 * safezoneH + safezoneY;
	w = 0.03395  * safezoneW;
	h = 0.02203 * safezoneH;
	sizeEx = 0.023;
	action = "";
};

};
};
class PlayerUINotebookGroup
{
   idd = 2113;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['PlayerUINotebookGroup', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
//BUTTTONS
class MainBack: RscPicture
{
	idc = 11900;
	text = "\Images\Journal\MainBackground.paa";
	x = 0.356024 * safezoneW + safezoneX;
	y = 0.00697734 * safezoneH + safezoneY;
	w = 0.639894 * safezoneW;
	h = 0.86704 * safezoneH;
};
class button1: HiddenButton
{
	idc = 11904;
	text = "Character";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.0919812 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenCharacterPage;";
	
};
class button2: HiddenButton
{
	idc = 11901;
	text = "Crafting";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.193986 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenCraftingPage;";
};
class button3: HiddenButton
{
	idc = 11902;
	text = "Influence";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.295991 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenInfluencePage;";
};
class button4: HiddenButton
{
	idc = 11903;
	text = "Group";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.397995 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenGroupPage;";
};

//LEFTSIDE
class InnerPageLeftList: RscStructuredText
{
	idc = 11100;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.0409789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.64403 * safezoneH;
	colorBackground[] = { 0, 0, 0, 0 };
};
class LeftbottomButton: HiddenButton
{
	idc = 11905;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.3650089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	sizeEx = 0.020;
	action = "";
};
class LeftButtonhalf: HiddenButton
{
	idc = 11908;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.5290389 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	sizeEx = 0.020;
	action = "";
};
class textboxtop: RscJournalListbox
{
	idc = 11500;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.0609789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="[] spawn aph_fnc_JournalGroupTopList;";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_JournalGroupTopList;";//--- action/function to call when listbox or combobox has been double clicked
};
class textboxbottom: RscJournalListbox
{
	idc = 11501;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.2473089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="[] spawn aph_fnc_JournalGroupBottomList";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_JournalGroupBottomList;";//--- action/function to call when listbox or combobox has been double clicked
};


//RIGHTSIDE
class InnerPageRightList: RscStructuredText
{
	idc = 1101;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.0409789 * safezoneH + safezoneY;
	w = 0.25395  * safezoneW;
	h = 0.64403 * safezoneH;
	colorBackground[] = { 0, 0, 0, 0 };
};
class textboxRighttop: RscJournalListbox
{
	idc = 11700;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.0609789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="[] spawn aph_fnc_JournalGroupRightTopList;";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_JournalGroupRightTopList;";//--- action/function to call when listbox or combobox has been double clicked
};
class textboxRightbottom: RscJournalListbox
{
	idc = 11701;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.2473089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_JournalGroupRightBottomList;";//--- action/function to call when listbox or combobox has been double clicked
};
class RightLastPageButton: HiddenButton
{
	idc = 11906;
	text = "Last";
	font = "LucidaConsoleB";
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.6400089 * safezoneH + safezoneY;
	w = 0.03395  * safezoneW;
	h = 0.02203 * safezoneH;
	sizeEx = 0.023;
	action = "";
};
class RightNextPageButton: HiddenButton
{
	idc = 11907;
	text = "Next";
	font = "LucidaConsoleB";
	x = 0.901916 * safezoneW + safezoneX;
	y = 0.6400089 * safezoneH + safezoneY;
	w = 0.03395  * safezoneW;
	h = 0.02203 * safezoneH;
	sizeEx = 0.023;
	action = "";
};

};
};
class PlayerUINotebookInfluence
{
   idd = 2113;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['PlayerUINotebookInfluence', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
	
class MainBack: RscPicture
{
	idc = 11900;
	text = "\Images\Journal\MainBackground.paa";
	x = 0.356024 * safezoneW + safezoneX;
	y = 0.00697734 * safezoneH + safezoneY;
	w = 0.639894 * safezoneW;
	h = 0.86704 * safezoneH;
};
class button1: HiddenButton
{
	idc = 11904;
	text = "Character";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.0919812 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenCharacterPage;";
	
};
class button2: HiddenButton
{
	idc = 11901;
	text = "Crafting";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.193986 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenCraftingPage;";
};
class button3: HiddenButton
{
	idc = 11902;
	text = "Influence";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.295991 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenInfluencePage;";
};
class button4: HiddenButton
{
	idc = 11903;
	text = "Group";
	x = 0.939927 * safezoneW + safezoneX;
	y = 0.397995 * safezoneH + safezoneY;
	w = 0.0559907 * safezoneW;
	h = 0.0680031 * safezoneH;
	sizeEx = 0.020;
	action = "[] spawn aph_fnc_Jrl_OpenGroupPage;";
};

//LEFTSIDE
class InnerPageLeftList: RscStructuredText
{
	idc = 11100;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.0409789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.64403 * safezoneH;
	colorBackground[] = { 0, 0, 0, 0 };
};
class LeftbottomButton: HiddenButton
{
	idc = 11905;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.3650089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	sizeEx = 0.020;
	action = "";
};
class LeftButtonhalf: HiddenButton
{
	idc = 11908;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.5290389 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	sizeEx = 0.020;
	action = "";
};
class textboxtop: RscJournalListbox
{
	idc = 11500;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.0609789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="[] spawn aph_fnc_JournalInfluenceTopList;";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_JournalInfluenceBottomList;";//--- action/function to call when listbox or combobox has been double clicked
};
class textboxbottom: RscJournalListbox
{
	idc = 11501;
	x = 0.412015 * safezoneW + safezoneX;
	y = 0.2273089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="[] spawn aph_fnc_JournalInfluenceBottomList";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_JournalInfluenceBottomList;";//--- action/function to call when listbox or combobox has been double clicked
};


//RIGHTSIDE
class InnerPageRightList: RscStructuredText
{
	idc = 11101;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.0409789 * safezoneH + safezoneY;
	w = 0.25395  * safezoneW;
	h = 0.64403 * safezoneH;
	colorBackground[] = { 0, 0, 0, 0 };
};
class textboxRighttop: RscJournalListbox
{
	idc = 11700;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.0609789 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="[] spawn aph_fnc_JournalInfluenceRightTopList;";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_JournalInfluenceRightTopList;";//--- action/function to call when listbox or combobox has been double clicked
};
class textboxRightbottom: RscJournalListbox
{
	idc = 11701;
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.2473089 * safezoneH + safezoneY;
	w = 0.25395 * safezoneW;
	h = 0.16403 * safezoneH;
	onLBSelChanged="";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="[] spawn aph_fnc_JournalInfluenceRightBottomList;";//--- action/function to call when listbox or combobox has been double clicked
};
class RightLastPageButton: HiddenButton
{
	idc = 11906;
	text = "Last";
	font = "LucidaConsoleB";
	x = 0.687966 * safezoneW + safezoneX;
	y = 0.6400089 * safezoneH + safezoneY;
	w = 0.03395  * safezoneW;
	h = 0.02203 * safezoneH;
	sizeEx = 0.023;
	action = "";
};
class RightNextPageButton: HiddenButton
{
	idc = 11907;
	text = "Next";
	font = "LucidaConsoleB";
	x = 0.901916 * safezoneW + safezoneX;
	y = 0.6400089 * safezoneH + safezoneY;
	w = 0.03395  * safezoneW;
	h = 0.02203 * safezoneH;
	sizeEx = 0.023;
	action = "";
};


};
};

//Journal specific UI
class SetGuardedLocationUI
{
   idd = 2113;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['SetGuardedLocationUI', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
class RscFrame_1800: RscFrame
{
	idc = 11800;
	x = 0.372021 * safezoneW + safezoneX;
	y = 0.414996 * safezoneH + safezoneY;
	w = 0.223963 * safezoneW;
	h = 0.156006 * safezoneH;
};
class RscStructuredText_1100: RscStructuredText
{
	idc = 11100;
	x = 0.372021 * safezoneW + safezoneX;
	y = 0.414996 * safezoneH + safezoneY;
	w = 0.215964 * safezoneW;
	h = 0.0680031 * safezoneH;
	text = "This will create a save guard post on your current position. The data will be stored in your journal."; //--- ToDo: Localize;
	colorText[] = {1,1,1,1};
	colorBackground[] = {-1,-1,-1,0};
};
class RscStructuredText_1101: RscStructuredText
{
	idc = 11101;
	x = 0.372021 * safezoneW + safezoneX;
	y = 0.482999 * safezoneH + safezoneY;
	w = 0.199967 * safezoneW;
	h = 0.0510023 * safezoneH;
	text = "Name this guarded position:"; //--- ToDo: Localize;
	colorText[] = {1,1,1,1};
	colorBackground[] = {-1,-1,-1,0};
};
class RscEdit_1400: RscEdit
{
	idc = 11400;
	x = 0.372021 * safezoneW + safezoneX;
	y = 0.517 * safezoneH + safezoneY;
	w = 0.151975 * safezoneW;
	h = 0.0340016 * safezoneH;
};
class RscButton_1600: RscButton
{
	idc = 11600;
	text = "Save"; //--- ToDo: Localize;
	x = 0.539993 * safezoneW + safezoneX;
	y = 0.482999 * safezoneH + safezoneY;
	w = 0.0479921 * safezoneW;
	h = 0.0340016 * safezoneH;
	action="[] spawn aph_fnc_Jrl_CPF_SetGuardedLocation";
};
class RscButton_1601: RscButton
{
	idc = 11601;
	text = "Cancel"; //--- ToDo: Localize;
	x = 0.539993 * safezoneW + safezoneX;
	y = 0.517001 * safezoneH + safezoneY;
	w = 0.0479921 * safezoneW;
	h = 0.0340016 * safezoneH;
	action="(uinamespace getvariable 'SetGuardedLocationUI') closedisplay 0;[] spawn aph_fnc_Jrl_OpenCharacterPage;";
};
};
};

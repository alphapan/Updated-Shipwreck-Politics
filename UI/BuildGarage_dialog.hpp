class BuildGarageUI
{	
	idd = 21131;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['BuildGarageUI', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
class RscPicture_12011: RscPicture
{
	idc = 12122;
	text = "\Images\Building\Garage\Background.paa";
	x = -0.299868 * safezoneW + safezoneX;
	y = -0.996063 * safezoneH + safezoneY;
	w = 1.70372 * safezoneW;
	h = 3.00914 * safezoneH;
};
class RscListbox_1501: RscListbox
{
	idc = 1501;
	x = 0.244042 * safezoneW + safezoneX;
	y = 0.346993 * safezoneH + safezoneY;
	w = 0.223963 * safezoneW;
	h = 0.204009 * safezoneH;
	onLBSelChanged="call aph_fnc_BG_TopListBox;";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="call aph_fnc_BG_TopListBox;";//--- action/function to call when listbox or combobox has been double clicked
};
class RscListbox_1500: RscListbox
{
	idc = 1500;
	x = 0.244042 * safezoneW + safezoneX;
	y = 0.568003 * safezoneH + safezoneY;
	w = 0.223963 * safezoneW;
	h = 0.204009 * safezoneH;
	onLBSelChanged="call aph_fnc_BG_BottomListBox;";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="call aph_fnc_BG_BottomListBox;";//--- action/function to call when listbox or combobox has been double clicked
};

class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "";
	x = 0.484003 * safezoneW + safezoneX;
	y = 0.568003 * safezoneH + safezoneY;
	w = 0.175971 * safezoneW;
	h = 0.204009 * safezoneH;
};
class RscButton_1600: RscButton
{
	idc = 1600;
	text = "Build"; //--- ToDo: Localize;
	x = 0.691968 * safezoneW + safezoneX;
	y = 0.704009 * safezoneH + safezoneY;
	w = 0.0799868 * safezoneW;
	h = 0.0680031 * safezoneH;
	action= "[] call aph_fnc_BG_BuildButton";
};
class RscButton_1601: RscButton
{
	idc = 1601;
	text = "Cancel build"; //--- ToDo: Localize;
	x = 0.651975 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.0959841 * safezoneW;
	h = 0.0340016 * safezoneH;
	action= "[] call aph_fnc_BG_CancelBuild";
};
class BuildProgress: RscProgress
{
	idc = 1800;
	x = 0.651975 * safezoneW + safezoneX;
	y = 0.465998 * safezoneH + safezoneY;
	w = 0.0959841 * safezoneW;
	h = 0.0170008 * safezoneH;
};
class BuildQuePic: RscPicture
{
	idc = 1202;
	text = "\images\Building\Garage\BoxIcon.jpg";
	x = 0.651975 * safezoneW + safezoneX;
	y = 0.312991 * safezoneH + safezoneY;
	w = 0.0959841 * safezoneW;
	h = 0.136006 * safezoneH;
};
class ToBuildDescription: RscStructuredText
{
	idc = 1203;
	text = "Object Description";
	x = 0.484003 * safezoneW + safezoneX;
	y = 0.772012 * safezoneH + safezoneY;
	w = 0.175971 * safezoneW;
	h = 0.102005 * safezoneH;
	colorBackground[] =	{0,0,0,0.1};
};
class BuildQueDescription: RscStructuredText
{
	idc = 1204;
	text = "<br/><br/><br/><br/><br/>      Current object being built";
	x = 0.611981 * safezoneW + safezoneX;
	y = 0.176985 * safezoneH + safezoneY;
	w = 0.175971 * safezoneW;
	h = 0.102005 * safezoneH;
	colorBackground[] =	{0,0,0,0};
};
};
};

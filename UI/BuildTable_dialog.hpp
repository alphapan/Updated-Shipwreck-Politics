class BuildTableUI
{	
	idd = -1;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['BuildTableUI', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
class RscPicture_1200: RscPicture
{
	idc = 1210;
	text = "\images\building\table\background.paa";
	x = 0.19605 * safezoneW + safezoneX;
	y = 0.142984 * safezoneH + safezoneY;
	w = 0.503917 * safezoneW;
	h = 0.697032 * safezoneH;
};
class TopListBox: RscListbox
{
	idc = 1500;
	x = 0.236044 * safezoneW + safezoneX;
	y = 0.210987 * safezoneH + safezoneY;
	w = 0.143976 * safezoneW;
	h = 0.187009 * safezoneH;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 35) * 1)";
	colorBackground[] =	{0,0,0,0};
	onLBSelChanged="call aph_fnc_BT_TopListBox;";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="call aph_fnc_BT_TopListBox;";//--- action/function to call when listbox or combobox has been double clicked
};
class BottomListBox: RscListbox
{
	idc = 1501;
	x = 0.24004 * safezoneW + safezoneX;
	y = 0.431997 * safezoneH + safezoneY;
	w = 0.175978 * safezoneW;
	h = 0.289013 * safezoneH;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 30) * 1)";
	colorBackground[] =	{0,0,0,0};
	onLBSelChanged="call aph_fnc_BT_BottomListBox;";//--- action/function to call when listbox or combobox has been changed
    onLBDblClick="call aph_fnc_BT_BottomListBox;";//--- action/function to call when listbox or combobox has been double clicked
};
class RscPicture_1201: RscPicture
{
	idc = 1200;
	text = "\images\building\table\default.jpg";
	x = 0.468005 * safezoneW + safezoneX;
	y = 0.176985 * safezoneH + safezoneY;
	w = 0.159974 * safezoneW;
	h = 0.204009 * safezoneH;
};
class RscStructuredText_1100: RscStructuredText
{
	idc = 1000;
	x = 0.485007 * safezoneW + safezoneX;
	y = 0.414996 * safezoneH + safezoneY;
	w = 0.159974 * safezoneW;
	h = 0.204009 * safezoneH;
	colorBackground[] =	{0,0,0,0};
};
class RscButton_1600: HiddenButton
{
	idc = 1600;
	x = 0.492001 * safezoneW + safezoneX;
	y = 0.704009 * safezoneH + safezoneY;
	w = 0.191968 * safezoneW;
	h = 0.102005 * safezoneH;
	text="Build";
	action= "[] call aph_fnc_BT_BuildButton";
};
};
};


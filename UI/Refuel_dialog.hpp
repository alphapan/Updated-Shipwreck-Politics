class RefuelUI
{
	idd =8998;
    movingEnable = 0;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['RefuelUI', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
class RscListbox_1500: RscListbox
{
	idc = 1500;
	x = 0.65 * safezoneW + safezoneX;
	y = 0.54 * safezoneH + safezoneY;
	w = 0.1875 * safezoneW;
	h = 0.3 * safezoneH;
	onLBDblClick="[] spawn aph_fnc_Act_RefuelNearbyLB";
	sizeEx = 0.023;
};
class RscText_1000: RscText
{
	idc = 1000;
	text = "Select tank to refuel"; 
	x = 0.65 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.1875 * safezoneW;
	h = 0.04 * safezoneH;
};
};
};


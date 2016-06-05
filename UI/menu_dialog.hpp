class MenuUI
{
	idd =2112;
    movingEnable = 0;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['MenuUI', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
class RscFrame_1800: RscFrame
{
	idc = 1800;
	x = 0.8 * safezoneW + safezoneX;
	y = 0.94 * safezoneH + safezoneY;
	w = 0.1875 * safezoneW;
	h = 0.04 * safezoneH;
};
class pic1: RscPicture
{
	idc = 1200;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.809375 * safezoneW + safezoneX;
	y = 0.94 * safezoneH + safezoneY;
	w = 0.01875 * safezoneW;
	h = 0.04 * safezoneH;
};
	class Button1: HiddenButton
	{
		idc = 1300;
		text = "";
		x = 0.809375 * safezoneW + safezoneX;
		y = 0.94 * safezoneH + safezoneY;
		w = 0.01875 * safezoneW;
		h = 0.04 * safezoneH;
		action= "hint 'button 1'";
	};
class pic2: RscPicture
{
	idc = 1201;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.846875 * safezoneW + safezoneX;
	y = 0.94 * safezoneH + safezoneY;
	w = 0.01875 * safezoneW;
	h = 0.04 * safezoneH;
};
	class Button2: HiddenButton
	{
		idc = 1301;
		text = "";
		x = 0.846875 * safezoneW + safezoneX;
		y = 0.94 * safezoneH + safezoneY;
		w = 0.01875 * safezoneW;
		h = 0.04 * safezoneH;
		action= "hint 'button 2'";
	};
class pic3: RscPicture
{
	idc = 1202;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.884375 * safezoneW + safezoneX;
	y = 0.94 * safezoneH + safezoneY;
	w = 0.01875 * safezoneW;
	h = 0.04 * safezoneH;
};
	class Button3: HiddenButton
	{
		idc = 1302;
		text = "";
		x = 0.884375 * safezoneW + safezoneX;
		y = 0.94 * safezoneH + safezoneY;
		w = 0.01875 * safezoneW;
		h = 0.04 * safezoneH;
			action= "hint 'button 3'";
	};
class pic4: RscPicture
{
	idc = 1203;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.921875 * safezoneW + safezoneX;
	y = 0.94 * safezoneH + safezoneY;
	w = 0.01875 * safezoneW;
	h = 0.04 * safezoneH;
};
		class Button4: HiddenButton
		{
			idc = 1303;
			text = "";
			x = 0.921875 * safezoneW + safezoneX;
			y = 0.94 * safezoneH + safezoneY;
			w = 0.01875 * safezoneW;
			h = 0.04 * safezoneH;
			action= "hint 'button 4'";
		};
class pic5: RscPicture
{
	idc = 1204;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.959375 * safezoneW + safezoneX;
	y = 0.94 * safezoneH + safezoneY;
	w = 0.01875 * safezoneW;
	h = 0.04 * safezoneH;
};
	class Button5: HiddenButton
		{
			idc = 1304;
			text = "";
			x = 0.959375 * safezoneW + safezoneX;
			y = 0.94 * safezoneH + safezoneY;
			w = 0.01875 * safezoneW;
			h = 0.04 * safezoneH;
			action= "hint 'button 5'";
		};
};
};







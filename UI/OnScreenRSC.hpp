class RscTitles
{
//Default
    class Default 
    {
       idd = -1;
       fadein = 0;
       fadeout = 0;
       duration = 0;
    };

//Blueprints
class BlueprintDisplayUI
	{
		 idd = 1000004;
		movingEnable =  0;
		enableSimulation = 1;
        enableDisplay = 1;
        duration     =  99999;
        fadein       =  0.1;
        fadeout      =  2;
        name = "BlueprintDisplayUI";
		onLoad = "with uiNameSpace do { BlueprintDisplayUI = _this select 0 }";
		class controls
		{

class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "";
	x = 0.00408206 * safezoneW + safezoneX;
	y = 0.0579797 * safezoneH + safezoneY;
	w = 0.127979 * safezoneW;
	h = 0.255012 * safezoneH;
};
class RscListbox_1500: RscStructuredText
{
	idc = 1500;
	x = 0.00408206 * safezoneW + safezoneX;
	y = 0.00697734 * safezoneH + safezoneY;
	w = 0.127979 * safezoneW;
	h = 0.0510023 * safezoneH;
};
class RscListbox_1501: RscStructuredText
{
	idc = 1501;
	x = 0.00408206 * safezoneW + safezoneX;
	y = 0.312991 * safezoneH + safezoneY;
	w = 0.127979 * safezoneW;
	h = 0.2150039 * safezoneH;
};

};
};


class BlueprintPictureOverlayUI
	{
		 idd = 1000004;
		movingEnable =  0;
		enableSimulation = 1;
        enableDisplay = 1;
        duration     =  99999;
        fadein       =  0.1;
        fadeout      =  2;
        name = "BlueprintPictureOverlayUI";
		onLoad = "with uiNameSpace do { BlueprintPictureOverlayUI = _this select 0 }";
		class controls
		{

class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "";
	x = 0.00408206 * safezoneW + safezoneX;
	y = 0.0579797 * safezoneH + safezoneY;
	w = 0.127979 * safezoneW;
	h = 0.255012 * safezoneH;
};
};
};



//Menu
class MenuUI
	{
	idd = -1;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['MenuUI', _this select 0];";
    fadein = 0;
    fadeout = 0;
    duration     =  99999;
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
class pic2: RscPicture
{
	idc = 1201;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.846875 * safezoneW + safezoneX;
	y = 0.94 * safezoneH + safezoneY;
	w = 0.01875 * safezoneW;
	h = 0.04 * safezoneH;
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
class pic4: RscPicture
{
	idc = 1203;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.921875 * safezoneW + safezoneX;
	y = 0.94 * safezoneH + safezoneY;
	w = 0.01875 * safezoneW;
	h = 0.04 * safezoneH;
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
};
};




//cursortarget

class CursortargetUI1
	{
		 idd = 1000007;
		movingEnable =  0;
		enableSimulation = 1;
        enableDisplay = 1;
        duration     =  99999;
        fadein       =  0.1;
        fadeout      =  2;
        name = "CursortargetUI";
		onLoad = "with uiNameSpace do { CursortargetUI = _this select 0 }";
		class controls
		{
class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "\images\cursortarget\ActionButtonRed.paa";
	x = 0.490625 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.01875 * safezoneW;
	h = 0.04 * safezoneH;
};
//Text
class RscStructuredText_1100: RscStructuredText
{
	idc = 1100;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.02 * safezoneH;
	colorBackground[] = {-1,-1,-1,0};
};
class RscStructuredText_1101: RscStructuredText
{
	idc = 1101;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.52 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.02 * safezoneH;
	colorBackground[] = {-1,-1,-1,0};
};
class RscStructuredText_1102: RscStructuredText
{
	idc = 1102;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.54 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.02 * safezoneH;
	colorBackground[] = {-1,-1,-1,0};
};
class RscStructuredText_1103: RscListBox
{
	idc = 1500;
	x = 0.52 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.103125 * safezoneW;
	h = 0.19 * safezoneH;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 42) * 1)";
	colorBackground[] = {0,0,0,0};
	colorSelect[] = {0,0,0,1};
	colorSelectBackground[] ={0.95,	0.95,0.95,1};
};

};
};
	
	
class CursortargetUI
	{
		 idd = 1000007;
		movingEnable =  0;
		enableSimulation = 1;
        enableDisplay = 1;
        duration     =  99999;
        fadein       =  0.1;
        fadeout      =  2;
        name = "CursortargetUI";
		onLoad = "with uiNameSpace do { CursortargetUI = _this select 0 }";
		class controls
		{	

class Top: RscPicture
{
	idc = 1202;
	text = "";
	x = 0.505 * safezoneW + safezoneX;
	y = 0.43 * safezoneH + safezoneY;
	w = 0.01875 * safezoneW;
	h = 0.02 * safezoneH;
};	
	class Top1: RscPicture
	{
		idc = 1204;
		text = "";
		x = 0.505 * safezoneW + safezoneX;
		y = 0.39 * safezoneH + safezoneY;
		w = 0.0175 * safezoneW;
		h = 0.018 * safezoneH;
	};		
class Middle: RscPicture	
{
	idc = 1200;
	text = "";
	x = 0.5 * safezoneW + safezoneX;
	y = 0.48 * safezoneH + safezoneY;
	w = 0.028125 * safezoneW;
	h = 0.04 * safezoneH;
};
class Bottom: RscPicture
{
	idc = 1201;
	text = "";
	x = 0.505 * safezoneW + safezoneX;
	y = 0.54 * safezoneH + safezoneY;
	w = 0.01875 * safezoneW;
	h = 0.02 * safezoneH;
};
	class Bottom1: RscPicture
	{
		idc = 1203;
		text = "";
		x = 0.505 * safezoneW + safezoneX;
		y = 0.59 * safezoneH + safezoneY;
		w = 0.017 * safezoneW;
		h = 0.017 * safezoneH;
	};
};
};
	
	



}; //END RSC



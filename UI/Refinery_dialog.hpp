//Refinery UI
class LowRefineryUI
{	
	  idd = 2113;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['LowRefineryUI', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
class RscPicture_1210: RscPicture
{
	idc = 1210;
	text = "\Images\Refinery\Background.paa";
	x = -0.0119153 * safezoneW + safezoneX;
	y = -0.486045 * safezoneH + safezoneY;
	w = 1.02383 * safezoneW;
	h = 2.02309 * safezoneH;
};
class PlayerINV: RscListbox
{
	idc = 1500;
	x = 0.108065 * safezoneW + safezoneX;
	y = 0.227987 * safezoneH + safezoneY;
	w = 0.191968 * safezoneW;
	h = 0.204009 * safezoneH;
};
class RefineryINV: RscListbox
{
	idc = 1501;
	x = 0.108065 * safezoneW + safezoneX;
	y = 0.482999 * safezoneH + safezoneY;
	w = 0.191968 * safezoneW;
	h = 0.204009 * safezoneH;
	onLBSelChanged="[] spawn aph_fnc_Ref_SelectionChanged";
};
class MineralsPic: RscPicture
{
	idc = 1700;
	text="\Images\Refinery\Belt.paa";
	x = 0.372021 * safezoneW + safezoneX;
	y = 0.489997 * safezoneH + safezoneY;
	w = 0.319947 * safezoneW;
	h = 0.255012 * safezoneH;
};
class InputItemPic: RscPicture
{
	idc = 1222;
	text = "";
	x = 0.39102 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.0639894 * safezoneW;
	h = 0.0850039 * safezoneH;
};
class OutputItemPic: RscPicture
{
	idc = 1223;
	text = "";
	x = 0.614985 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.0639894 * safezoneW;
	h = 0.0850039 * safezoneH;
};
class InventorySlider: RscSlider
{
	idc = 1900;
	x = 0.116061 * safezoneW + safezoneX;
	y = 0.448998 * safezoneH + safezoneY;
	w = 0.175971 * safezoneW;
	h = 0.0170008 * safezoneH;
	onSliderPosChanged = "[] spawn aph_fnc_Ref_Slidervalue;";
};
class PercentText: RscStructuredText
{
	idc = 1101;
	text = "'%'"; //--- ToDo: Localize;
	x = 0.0841472 * safezoneW + safezoneX;
	y = 0.446278 * safezoneH + safezoneY;
	w = 0.0559974 * safezoneW;
	h = 0.0340016 * safezoneH;
	size = 0.028; 
	colorBackground[] = {-1,-1,-1,0};
};
class AddtoQueButton: RscButton
{
	idc = 16133;
	text = "Add to que"; //--- ToDo: Localize;
	x = 0.308032 * safezoneW + safezoneX;
	y = 0.509005 * safezoneH + safezoneY;
	w = 0.0499999 * safezoneW;
	h = 0.0540016 * safezoneH;
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 39) * 1)";
	action="[] spawn aph_fnc_Ref_AddtoQue";
};
class QuePic: RscPicture
{
	idc = 1207;
	text = "";
	x = 0.715964 * safezoneW + safezoneX;
	y = 0.465998 * safezoneH + safezoneY;
	w = 0.0719881 * safezoneW;
	h = 0.153007 * safezoneH;
};
class RscPicture_1200: RscPicture
{
	idc = 120000;
	text = "";
	x = 0.388019 * safezoneW + safezoneX;
	y = 0.295991 * safezoneH + safezoneY;
	w = 0.0639894 * safezoneW;
	h = 0.102005 * safezoneH;
};
class RscPicture_1201: RscPicture
{
	idc = 120001;
	text = "";
	x = 0.484003 * safezoneW + safezoneX;
	y = 0.295991 * safezoneH + safezoneY;
	w = 0.0639894 * safezoneW;
	h = 0.102005 * safezoneH;
};
class RscPicture_1203: RscPicture
{
	idc = 120002;
	text = "";
	x = 0.571988 * safezoneW + safezoneX;
	y = 0.295991 * safezoneH + safezoneY;
	w = 0.0639894 * safezoneW;
	h = 0.102005 * safezoneH;
};
class RscPicture_1204: RscPicture
{
	idc = 120003;
	text = "";
	x = 0.667972 * safezoneW + safezoneX;
	y = 0.295991 * safezoneH + safezoneY;
	w = 0.0639894 * safezoneW;
	h = 0.102005 * safezoneH;
};
		class ProgressBar_1: RscRefineryProgress
		{
			idc = 1600;
			text = "";
			x = 0.388019 * safezoneW + safezoneX;
			y = 0.295991 * safezoneH + safezoneY;
			w = 0.0639894 * safezoneW;
			h = 0.102005 * safezoneH;
		};
		class ProgressBar_2: RscRefineryProgress
		{
			idc = 1601;
			text = "";
			x = 0.484003 * safezoneW + safezoneX;
			y = 0.295991 * safezoneH + safezoneY;
			w = 0.0639894 * safezoneW;
			h = 0.102005 * safezoneH;
		};
		class ProgressBar_3: RscRefineryProgress
		{
			idc = 1602;
			text = "";
			x = 0.571988 * safezoneW + safezoneX;
			y = 0.295991 * safezoneH + safezoneY;
			w = 0.0639894 * safezoneW;
			h = 0.102005 * safezoneH;
		};
		class ProgressBar_4: RscRefineryProgress
		{
			idc = 1603;
			text = "";
			x = 0.667972 * safezoneW + safezoneX;
			y = 0.295991 * safezoneH + safezoneY;
			w = 0.0639894 * safezoneW;
			h = 0.102005 * safezoneH;
		};
			class QueText_1: RscStructuredText
			{
				idc = 1800;
				text = "";
				x = 0.388019 * safezoneW + safezoneX;
				y = 0.307991 * safezoneH + safezoneY;
				w = 0.0639894 * safezoneW;
				h = 0.142005 * safezoneH;
				colorBackground[] = {-1,-1,-1,0};
			};
			class QueText_2: RscStructuredText
			{
				idc = 1801;
				text = "";
				x = 0.484003 * safezoneW + safezoneX;
				y = 0.307991 * safezoneH + safezoneY;
				w = 0.0639894 * safezoneW;
				h = 0.142005 * safezoneH;
				colorBackground[] = {-1,-1,-1,0};
			};
			class QueText_3: RscStructuredText
			{
				idc = 1802;
				text = "";
				x = 0.571988 * safezoneW + safezoneX;
				y = 0.307991 * safezoneH + safezoneY;
				w = 0.0639894 * safezoneW;
				h = 0.142005 * safezoneH;
				colorBackground[] = {-1,-1,-1,0};
			};
			class QueText_4: RscStructuredText
			{
				idc = 1803;
				text = "";
				x = 0.667972 * safezoneW + safezoneX;
				y = 0.307991 * safezoneH + safezoneY;
				w = 0.0639894 * safezoneW;
				h = 0.142005 * safezoneH;
				colorBackground[] = {-1,-1,-1,0};
			};
				class ReturnButton_0: HiddenButton
				{
					idc = 120000;
					text = "";
					x = 0.388019 * safezoneW + safezoneX;
					y = 0.295991 * safezoneH + safezoneY;
					w = 0.0639894 * safezoneW;
					h = 0.102005 * safezoneH;
					action="[0] spawn aph_fnc_Ref_ReturnFromQue";
				};
				class ReturnButton_1: HiddenButton
				{
					idc = 120001;
					text = "";
					x = 0.484003 * safezoneW + safezoneX;
					y = 0.295991 * safezoneH + safezoneY;
					w = 0.0639894 * safezoneW;
					h = 0.102005 * safezoneH;
					action="[1] spawn aph_fnc_Ref_ReturnFromQue";
				};
				class ReturnButton_2: HiddenButton
				{
					idc = 120002;
					text = "";
					x = 0.571988 * safezoneW + safezoneX;
					y = 0.295991 * safezoneH + safezoneY;
					w = 0.0639894 * safezoneW;
					h = 0.102005 * safezoneH;
					action="[2] spawn aph_fnc_Ref_ReturnFromQue";
				};
				class ReturnButton_3: HiddenButton
				{
					idc = 120003;
					text = "";
					x = 0.667972 * safezoneW + safezoneX;
					y = 0.295991 * safezoneH + safezoneY;
					w = 0.0639894 * safezoneW;
					h = 0.102005 * safezoneH;
					action="[3] spawn aph_fnc_Ref_ReturnFromQue";
				};
			
class SliderAmount: RscStructuredText
{
	idc = 1100;
	x = 0.0593947 * safezoneW + safezoneX;
	y = 0.447376 * safezoneH + safezoneY;
	w = 0.0399934 * safezoneW;
	h = 0.0340016 * safezoneH;
	colorBackground[] = {-1,-1,-1,0};
	size = 0.028; 
};
class PutButton: RscButton
{
	idc = 1600;
	text = "Put"; //--- ToDo: Localize;
	x = 0.0600728 * safezoneW + safezoneX;
	y = 0.397995 * safezoneH + safezoneY;
	w = 0.0399934 * safezoneW;
	h = 0.0340016 * safezoneH;
	action="[] spawn aph_fnc_Ref_PutButton";
};
class TakeButton: RscButton
{
	idc = 1601;
	text = "Take"; //--- ToDo: Localize;
	x = 0.0600728 * safezoneW + safezoneX;
	y = 0.482999 * safezoneH + safezoneY;
	w = 0.0399934 * safezoneW;
	h = 0.0340016 * safezoneH;
	action="[] spawn aph_fnc_Ref_TakeButton";
};
class OnOffSwitch: RscPicture
{
	idc = 12505;
	text = "Images\Refinery\OffSwitch.paa";
	x = 0.811948 * safezoneW + safezoneX;
	y = 0.568003 * safezoneH + safezoneY;
	w = 0.0639894 * safezoneW;
	h = 0.119005 * safezoneH;
};
	class OnOffSwitchButton: HiddenButton
	{
		idc = 12055;
		text = "";
		x = 0.811948 * safezoneW + safezoneX;
		y = 0.568003 * safezoneH + safezoneY;
		w = 0.0639894 * safezoneW;
		h = 0.119005 * safezoneH;
		action="[] spawn aph_fnc_Ref_OnOffSwitch";
	};
class OnOffLight: RscPicture
{
	idc = 1206;
	text = "Images\Refinery\OffLight.paa";
	x = 0.801955 * safezoneW + safezoneX;
	y = 0.451997 * safezoneH + safezoneY;
	w = 0.0799868 * safezoneW;
	h = 0.136006 * safezoneH;
};
};
};


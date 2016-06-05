//Conversation with AI
class ConversationChat
{
   idd = 1;
    movingEnable = 1;
    enableSimulation = 1;
    enableDisplay = 1;
    onLoad = "uiNamespace setVariable ['ConversationChat', _this select 0];";
    fadein = 0;
    fadeout = 0;
	class controls 
	{
class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "";
	x = 0.404016 * safezoneW + safezoneX;
	y = 0.636006 * safezoneH + safezoneY;
	w = 0.0959841 * safezoneW;
	h = 0.153007 * safezoneH;
};
class RscListbox_1500: RscListBoxBordered
{
	idc = 1000;
	x = 0.5 * safezoneW + safezoneX;
	y = 0.585004 * safezoneH + safezoneY;
	w = 0.343943 * safezoneW;
	h = 0.0340016 * safezoneH;
	onLBDblClick="call aph_fnc_Cvo_ConversationLB;";
};
class RscListbox_1501: RscListBoxBordered
{
	idc = 1001;
	x = 0.523996 * safezoneW + safezoneX;
	y = 0.636006 * safezoneH + safezoneY;
	w = 0.343943 * safezoneW;
	h = 0.0340016 * safezoneH;
	onLBDblClick="call aph_fnc_Cvo_ConversationLB;";
};
class RscListbox_1502: RscListBoxBordered
{
	idc = 1002;
	x = 0.539993 * safezoneW + safezoneX;
	y = 0.687009 * safezoneH + safezoneY;
	w = 0.343943 * safezoneW;
	h = 0.0340016 * safezoneH;
	onLBDblClick="call aph_fnc_Cvo_ConversationLB;";
};
class RscListbox_1503: RscListBoxBordered
{
	idc = 1004;
	x = 0.507999 * safezoneW + safezoneX;
	y = 0.789013 * safezoneH + safezoneY;
	w = 0.343943 * safezoneW;
	h = 0.0340016 * safezoneH;
	onLBDblClick="call aph_fnc_Cvo_ConversationLB;";
};
class RscListbox_1504: RscListBoxBordered
{
	idc = 1003;
	x = 0.531995 * safezoneW + safezoneX;
	y = 0.738011 * safezoneH + safezoneY;
	w = 0.343943 * safezoneW;
	h = 0.0340016 * safezoneH;
	onLBDblClick="call aph_fnc_Cvo_ConversationLB;";
};
class RscButton_1600: RscButton
{
	idc = 1600;
	text = "X"; //--- ToDo: Localize;
	x = 0.404016 * safezoneW + safezoneX;
	y = 0.772012 * safezoneH + safezoneY;
	w = 0.00799868 * safezoneW;
	h = 0.0170008 * safezoneH;
	action = "call aph_fnc_Cvo_PartnerReset;";
};
class RscPicture_1201: RscPicture
{
	idc = 1201;
	x = 0.404016 * safezoneW + safezoneX;
	y = 0.789013 * safezoneH + safezoneY;
	w = 0.0159974 * safezoneW;
	h = 0.0340016 * safezoneH;
};
class RscPicture_1202: RscPicture
{
	idc = 1202;
	x = 0.404016 * safezoneW + safezoneX;
	y = 0.823015 * safezoneH + safezoneY;
	w = 0.0159974 * safezoneW;
	h = 0.0340016 * safezoneH;
};
class RscPicture_1203: RscProgress
{
	idc = 1301;
	x = 0.420013 * safezoneW + safezoneX;
	y = 0.840016 * safezoneH + safezoneY;
	w = 0.0799868 * safezoneW;
	h = 0.0170008 * safezoneH;
};
class RscPicture_1204: RscProgress
{
	idc = 1302;
	x = 0.420013 * safezoneW + safezoneX;
	y = 0.806014 * safezoneH + safezoneY;
	w = 0.0799868 * safezoneW;
	h = 0.0170008 * safezoneH;
};
class ChatPic: RscPicture
{
	idc = 1800;
	text="\Images\Conversations\ConvoBubble.paa";
	x = 0.0120807 * safezoneW + safezoneX;
	y = 0.335991 * safezoneH + safezoneY;
	w = 0.383936 * safezoneW;
	h = 0.340016 * safezoneH;
};
class RscStructuredText_1100: RscStructuredText
{
	idc = 1100;
	x = 0.0440754 * safezoneW + safezoneX;
	y = 0.396993 * safezoneH + safezoneY;
	w = 0.319947 * safezoneW;
	h = 0.255012 * safezoneH;
	size = 0.028; 
	colorBackground[] =	{0,0,0,0};
};




};
};



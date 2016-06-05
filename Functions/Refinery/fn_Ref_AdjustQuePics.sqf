_refinery=player getvariable ["RefineryObject","non"];
_que=_refinery getvariable ["CurrentQue",[]];
//clear que texts
		{
			((uinamespace getvariable "LowRefineryUI") displayCtrl (1800 + _foreachIndex )) ctrlSetStructuredText parsetext "";
		}foreach [0,1,2,3];
		
//clear que pics
	ctrlSetText [1222,""];
	ctrlSetText [1223,""];
		{
			ctrlSetText [_x,""];
		}foreach [120000,120001,120002,120003];

		
if ((count _que)==0) exitwith {};
{ 
	_pic=gettext (configfile >> "CfgWeapons" >> ((_que select _foreachIndex) select 0) >> "picture");
	ctrlSetText [_x,_pic];

	_kount=((_que select _foreachIndex) select 1);
		if ((typename _kount)=="SCALAR") then 
			{
				((uinamespace getvariable "LowRefineryUI") displayCtrl (1800 + _foreachIndex )) ctrlSetStructuredText parsetext format ["<t size='1.25' shadow='2'><br/><br/><br/><br/><br/><br/>     %1</t>",_kount];
			};
}foreach [120000,120001,120002,120003];

ctrlSetText [1222,""];
ctrlSetText [1223,""];

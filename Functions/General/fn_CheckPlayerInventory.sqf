_unit=_this select 0;

_playerList1=uniformitems _unit; 
_playerList2=vestitems _unit; 
_playerList3=backpackitems _unit;

_PlayerItemList=[];
_PlayerCountList=[];
{
	{
		if !(_x in _PlayerItemList) then 
			{
				_PlayerItemList pushback _x;
				_PlayerCountList pushback 1;
			} else 
				{
					_PlayerCountList set [(_PlayerItemList find _x),(_PlayerCountList select (_PlayerItemList find _x)) + 1];
				};
	}foreach _x;

}foreach [_playerList1,_playerList2,_playerList3];


[_PlayerItemList,_PlayerCountList];

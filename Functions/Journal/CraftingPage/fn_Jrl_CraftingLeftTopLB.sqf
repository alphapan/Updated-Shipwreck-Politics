disableSerialization;
	_display = uiNameSpace getVariable "PlayerUINotebookCrafting";
	_LeftText = _display displayCtrl 11100;
	_RightText=	_display displayCtrl 11101;
			_LeftTopLB=_display displayCtrl 11500;
			_LeftBottomLB=_display displayCtrl 11501;
_indexT=lbcursel _LeftTopLB;
_indexB=lbcursel _LeftBottomLB;
_text=_LeftTopLB lbText _indexT;
lbclear _LeftTopLB;

_objects = [];
if (_text=="Fortifications") then {
	_display = uiNameSpace getVariable "PlayerUINotebookCrafting";
	_objects=player getvariable ["APH_FortificationBuildList",[]];	
	{
		_index = _LeftBottomLB lbAdd (_x select 0);
	} forEach _objects;
};

if (_text=="Buildings") then {
	_display = uiNameSpace getVariable "PlayerUINotebookCrafting";
	_objects=player getvariable ["APH_BuildingBuildList",[]];	
	{
		_index = _LeftBottomLB lbAdd (_x select 0);
	} forEach _objects;
};

if (_text=="Building extensions") then {
	_display = uiNameSpace getVariable "PlayerUINotebookCrafting";
	_objects=player getvariable ["APH_BExtensionBuildList",[]];	
	{
		_index = _LeftBottomLB lbAdd (_x select 0);
	} forEach _objects;
};

if (_text=="Furniture") then {
	_display = uiNameSpace getVariable "PlayerUINotebookCrafting";
	_objects=player getvariable ["APH_FurnitureBuildList",[]];	
	{
		_index = _LeftBottomLB lbAdd (_x select 0);
	} forEach _objects;
};

if (_text=="Plants") then {
		
		_cargo=itemCargo player;
		if ("aph_PineSapling" in _cargo) then {_LeftBottomLB lbadd "Pine sapling";};
		if ("aph_PalmSapling" in _cargo) then {_LeftBottomLB lbadd "Palm sapling";};
		if ("aph_MulberrySapling" in _cargo) then {_LeftBottomLB lbadd "Paper Mulberry sapling" ;};
		if ("aph_WheatSeed" in _cargo) then {_LeftBottomLB lbadd "Wheat Stalk";};
		/*
	_playerList1=getitemcargo uniformcontainer player; 
	_playerList2=getitemcargo vestcontainer player; 
	_playerList3=getitemcargo backpackcontainer player; 
	_itemsUni= _playerList1 select 0;
	_itemsVest= _playerList2 select 0;
	_itemsBack= _playerList3 select 0;
	_FullitemList=_itemsUni+_itemsVest+_itemsBack;	
	lbClear 1501;
	{
		
		if (_x=="aph_PineSapling") then {lbadd[1501,"Pine sapling"];};
		if (_x=="aph_PalmSapling") then {lbadd[1501,"Palm sapling"];};
		if (_x=="aph_MulberrySapling") then {lbadd[1501,"Paper Mulberry sapling"];};
		if (_x=="aph_WheatSeed") then {lbadd[1501,"Wheat Stalk"];};
		
		
	} forEach _FullitemList;
	*/
};
_list=player getvariable "CurrentBuildingArrayShown";
_box=player getvariable "CurrentBuildingBox";
if ((_box getvariable ["CurrentlyBuilding",[false,""]]) select 0) exitwith {hint "Project already in progress"};
	if (typeName _pad=="STRING") exitwith { Hint "You need to place a building pad first. (Addaction on the box)";};
//closeDialog 0;
_indexTop = lbCurSel 1501;
_indexBtm= lbCurSel 1500;
_text = lbText [1500, _indexBtm];
_ArrayObject=_list select _indexBtm;
//select object
_name= _list select _indexBtm select 0;
_type= _list select _indexBtm select 1;
_Costarray=_list select _indexBtm select 2;
//get reference BP
_BPMaster=gettext (Missionconfigfile >> "MasterArrays" >> "Blueprints" >> "Blueprints");
_BPCreated=gettext (Missionconfigfile >> "MasterArrays" >> "Blueprints" >> "Created");
	_BPs=[];
	{
		_BPs pushback (_x select 1);
	}foreach _BPMaster;
_ReferenceBP= (_BPMaster select (_BPs find _type));
//hint format ["%1",_bps];
//Object material costs
_ironcost= _Costarray select 0;
_steelcost= _Costarray select 1;
_platcost=_Costarray select 2;
_stonecost=_Costarray select 3;
_woolcost=_Costarray select 4;
_flaxcost=_Costarray select 5;
_woodcost=_Costarray select 6;
_plasticcost=_Costarray select 7;
_goldCost=_Costarray select 8;
_imagePicture=_list select _indexBtm select 3;



//Build object	
_Itemlist= itemCargo _box;
//Compare inventory to material cost of object
	_fc=0;
	_ib=0;
	_psb=0;
	_pnb=0;
	_stb=0;
	_sbr=0;
	_wp=0;
	_wc=0;
	_go=0;
	{	if (_x =="aph_flaxcloth") then {_fc=_fc+1;};
		if (_x =="aph_ironbar") then {_ib=_ib+1;};
		if (_x =="aph_plasticbar") then {_psb=_psb+1;};
		if (_x =="aph_platinumbar") then {_pnb=_pnb+1;};
		if (_x =="aph_Steelbar") then {_stb=_stb+1;};
		if (_x =="aph_Stonebrick") then {_sbr=_sbr+1;};
		if (_x =="aph_woodplank") then {_wp=_wp+1;};
		if (_x =="aph_woolcloth") then {_wc=_wc+1;};
		if (_x =="aph_goldOre") then {_go=_go+1;};
	} foreach _itemlist;
	
	
if (_fc>=_flaxcost and _ib>=_ironcost and _psb>=_plasticcost and _pnb>=_platcost and _stb>=_Steelcost and _sbr>=_stonecost and _wp>=_woodcost and _wc>=_woolcost and _go>=_goldCost) 
then {
//complete build and spawn object
_box setvariable ["CurrentlyBuilding",[true,_type]];
[_box,_ReferenceBP] spawn aph_fnc_BG_ActiveProcessing;
clearItemCargoGlobal _box;
_fc=_fc-_flaxcost;
_ib=_ib-_ironcost;
_psb=_psb-_plasticcost;
_stb=_stb-_Steelcost;
_sbr=_sbr-_stonecost;
_wp=_wp-_woodcost;
_wc=_wc-_woolcost;
	//processed
	_box addItemCargoGlobal ["aph_flaxcloth",_fc];
	_box addItemCargoGlobal ["aph_ironbar",_ib];
	_box addItemCargoGlobal ["aph_plasticbar",_psb];
	_box addItemCargoGlobal ["aph_platinumbar",_pnb];
	_box addItemCargoGlobal ["aph_Steelbar",_stb];
	_box addItemCargoGlobal ["aph_Stonebrick",_sbr];
	_box addItemCargoGlobal ["aph_woodplank",_wp];
	_box addItemCargoGlobal ["aph_woolcloth",_wc];
	_box addItemCargoGlobal ["aph_goldore",_go];
	} else { hint "Not enough materials" };
	
	
_list=player getvariable "CurrentBuildingArrayShown";

_indexTop = lbCurSel 1500;
_indexBtm= lbCurSel 1501;

//select object
_Object=_list select _indexBtm;
	//get blueprint specifics
	_CFG=gettext (Missionconfigfile >> "BluePrintInfo" >> _Object >> "CFG");
	_Name=gettext (Missionconfigfile >> "BluePrintInfo" >> _Object >> "name");
	_ItemMade=gettext (Missionconfigfile >> "BluePrintInfo" >> _Object >> "ItemCreated");
	_cost=getarray (Missionconfigfile >> "BluePrintInfo" >> _Object >> "cost");
	_BuildList=gettext (Missionconfigfile >> "BluePrintInfo" >> _Object >> "type");
	_description=gettext (Missionconfigfile >> "BluePrintInfo" >> _Object >> "description");
		//Object material costs
		_ironcost= _cost select 0;
		_steelcost= _cost select 1;
		_platcost=_cost select 2;
		_stonecost=_cost select 3;
		_woolcost=_cost select 4;
		_flaxcost=_cost select 5;
		_woodcost=_cost select 6;
		_plasticcost=_cost select 7;
		_goldCost=_cost select 8;

_costtext= format ["
------------\n
Iron bar:  %1 \n
Steel bar:  %2 \n
Platinum bar:  %3 \n
Stone brick:  %4\n
Wool cloth:  %5\n
Flax cloth:  %6\n
Wood plank:  %7\n
Plastic bar:  %8\n
Gold bar:  %9\n
------------\n
",_ironcost,_steelcost,_platcost,_stonecost,_woolcost,_flaxcost,_woodcost,_plasticcost,_goldcost];


//Build object	
_box=player getvariable "BuildTableObject";
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
		if (_x =="aph_goldbar") then {_go=_go+1;};
	} foreach _itemlist;

	
if (_fc>=_flaxcost and _ib>=_ironcost and _psb>=_plasticcost and _pnb>=_platcost and _stb>=_Steelcost and _sbr>=_stonecost and _wp>=_woodcost and _wc>=_woolcost and _go>=_goldCost) 
then {

if (_ItemMade iskindof "Bag_Base") then {_box addbackpackcargoglobal [_ItemMade, 1]; } else {_box addItemCargoGlobal [_ItemMade, 1];};
hint format ["Built %1",_name];

//hint format ["Built %1",_name];
//clearItemCargoGlobal _box;
_fc=_fc-_flaxcost;
_ib=_ib-_ironcost;
_psb=_psb-_plasticcost;
_stb=_stb-_Steelcost;
_sbr=_sbr-_stonecost;
_wp=_wp-_woodcost;
_wc=_wc-_woolcloth;
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
	} else { hint format ["Not enough materials, you need %1",_costtext];
	
	};
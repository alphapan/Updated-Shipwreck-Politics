_QueriedList=_this select 0;
//only query accepted items
_accepted=[
	"aph_IronOre","aph_GoldOre","aph_PlatinumOre","aph_StoneGravel","aph_WoolFiber","aph_FlaxFiber","aph_WoodPiece","aph_Switchgrass",
		"aph_IronBar","aph_SteelBar","aph_GoldBar","aph_PlatinumBar","aph_StoneBrick","aph_WoolCloth","aph_FlaxCloth","aph_WoodPlank","aph_PlasticBar"];
	
	
	_acceptedList=[];
		{
			if (_x in _accepted) then 
				{
					_acceptedList pushback _x;
				};
		}foreach _QueriedList;
		
_acceptedList;
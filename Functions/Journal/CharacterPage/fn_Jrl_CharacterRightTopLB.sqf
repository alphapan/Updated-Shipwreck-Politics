disableSerialization;
_display = uiNameSpace getVariable "PlayerUINotebookCharacter";
	_LeftText = _display displayCtrl 11100;
	_RightText=	_display displayCtrl 11101;	
			_LeftTopLB=_display displayCtrl 11500;
			_LeftBottomLB=_display displayCtrl 11501;
			_RightTopLB=_display displayCtrl 11502;
			_RightBottomLB=_display displayCtrl 11503;
	
_indexLT=lbCurSel _LeftTopLB;
_textLT=_LeftTopLB lbText _indexLT;
_indexLB=lbCurSel _LeftBottomLB;
_textLB=_LeftBottomLB lbText _indexLB;
_indexRT=lbcursel _RightTopLB;

lbclear _RightBottomLB;

	switch (_textLT) do {
		case "Mining Locations": {
			switch (_textLB) do {
				case "Known mining locations": {
				_Known=player getVariable ["KnownMiningLocations",[]];
				_selected=_known select _indexRT;
					_type=_Selected select 0;
					_coord=_selected select 1;
					_OreRemain=_selected select 4;
					
				_RightBottomLB lbadd "Show on map";
				_RightText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000' underline='true'>Known_Mining_Locations</t><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<t size='1.8' color='#000000'>Ore type:</t><t size='1.8' color='#FFFFFF' shadow='2'> %1 </t><br/>
<t size='1.8' color='#000000'>Coordinate grid:</t><t size='1.8' color='#FFFFFF' shadow='2'> %2 </t><br/>
<t size='1.8' color='#000000'>Last known remaining:</t><t size='1.8' color='#FFFFFF' shadow='2'> %3 ounces </t>",_type,_coord,_OreRemain]);
				
				};
				case "Add mining location": {
_RightText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000' t underline='true'>Local_Mining_Locations</t>
				"]);
					_ray=player getVariable ["QueriedRockList",[]];
					_selected=_ray select _indexRT;
					_pos=getposatl _selected;
					_Coord=mapGridPosition _selected;
					_RightBottomLB lbadd ("Add " + (typeof _selected) + " at " + _coord);
				};
				
			
			
			};
		
		};
		
		case "Military Locations": {
			switch (_textLB) do {
				case "Assign new Guard Post":{
					[] spawn aph_fnc_Jrl_ClearUI;
					(finddisplay 46) createdisplay "SetGuardedLocationUI";
				};
				case "Review Guard Posts": {
				_ray=player getVariable ["GuardablePositions",[]];
				_GuardPost=_ray select (_indexRT);
					_name=_GuardPost select 0;
					_pos=_Guardpost select 1;
					_members=_Guardpost select 2;
					_notes=_GuardPost select 3;
					
			if ((count _ray)<=0) exitwith {};
				_RightText ctrlSetStructuredText (parsetext format ["
<t size='1.8' color='#000000' underline='true'>Guarding_Locations</t><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<t size='1.8' color='#000000' underline='true'>%1</t><br/>
<t size='1.8' color='#000000'>Stationed count:</t><t size='1.8' color='#FFFFFF' shadow='2'> %2 </t><br/>
<t size='1.8' color='#000000'>Map Coordinate:</t><t size='1.8' color='#FFFFFF' shadow='2'> %3</t><br/>
<t size='1.8' color='#000000'>Notes:</t><t size='1.8' color='#FFFFFF' shadow='2'>%4</t>",_name,count _members,mapGridPosition _pos,_notes]);
				
				
				};
			};
		};
	};


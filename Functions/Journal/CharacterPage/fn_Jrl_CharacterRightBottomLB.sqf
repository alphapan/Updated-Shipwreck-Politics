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


	switch (_textLT) do {
		case "Mining Locations": {
			switch (_textLB) do {
				case "Add mining location": {
					_ray=player getVariable ["QueriedRockList",[]];
					_selected=_ray select _indexRT;
					_pos=getposatl _selected;
					_Coord=mapGridPosition _selected;
					
					_Known=player getVariable ["KnownMiningLocations",[]];	
					_positions=[];
					{_positions pushback (_x select 3)}foreach _known;
					if ((str _pos) in _positions) exitwith {hint "Known location"};
					
					_Known pushback [(typeof _selected),_Coord,_pos,str _pos,_selected getVariable ["MineralAmount",0]];
					player setVariable ["KnownMiningLocations",_Known];
					hint "Added location";
						[] spawn aph_fnc_Jrl_ClearUI;
						[] spawn aph_fnc_Jrl_OpenCharacterPage;
						disableSerialization;
						_Display=uiNamespace getVariable "PlayerUINotebookCharacter";
						_LeftTopLB=_display displayctrl 11500;
						_LeftBottomLB=_display displayctrl 11501;
						sleep 0.25;
						_LeftTopLB lbSetCurSel 0;
						sleep 0.25;
						_LeftBottomLB lbSetCurSel 0;
				};
				case "Known mining locations": {
					[] spawn aph_fnc_Jrl_ClearUI;
					_Known=player getVariable ["KnownMiningLocations",[]];	
						_selected=_known select _indexRT;
						_type=_Selected select 0;
						_coord=_selected select 1;
						_pos=_selected select 2;
						_OreRemain=_selected select 4;
					_id=format ["%1",_type +"Location" + (str random 999999)];
					_debug=createMarker [_id,_pos];
					_debug setMarkerShape "ICON";
					_debug setMarkerType "hd_dot";
					_debug setMarkerColor "ColorOrange";
					_text=_type +" ore";
					_txt=format ["%1",_text];
					_debug setMarkerText _txt;	
				
					closedialog 0;
					openMap [true, false];
					waituntil {!visibleMap};
					deleteMarker _debug;
				};
			
			};
		
		
		
		};
	
	
	};
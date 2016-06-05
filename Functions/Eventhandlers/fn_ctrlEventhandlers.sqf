
ctrl_fnc_handle = {
disableserialization;
        _idc = (_this select 0);
        _Index = _this select 1;
		_classname = format ["%1",lbData [_idc, _Index]];
		
	if (_classname =="aph_bp_empty") exitwith { [] spawn aph_fnc_Act_StartLearnBlueprint;};
		
		
		_playerList=[];
		switch (_idc) do
			{
				case 633:{_playerList=getitemCargo uniformContainer player;};
				case 638:{_playerList=getitemCargo vestContainer player; };
				case 619:{_playerList=getitemCargo backpackContainer player;};
			};
		
	_BlueprintsArray=getarray (Missionconfigfile >> "MasterArrays" >> "BluePrints" >> "Blueprints");		
	
//Reasons to exit code
if !(_classname in _BlueprintsArray) exitwith {hint "Not a blueprint";};
_known=player getvariable ["KnownBluePrints",[]];	
if (_classname in _known) exitwith {hint "You already know this blueprint";};

	//get blueprint specifics
	_CFG=gettext (Missionconfigfile >> "BluePrintInfo" >> _classname >> "CFG");
	_Name=gettext (Missionconfigfile >> "BluePrintInfo" >> _classname >> "name");
	_ItemMade=gettext (Missionconfigfile >> "BluePrintInfo" >> _classname >> "ItemCreated");
	_cost=getarray (Missionconfigfile >> "BluePrintInfo" >> _classname >> "cost");
	_BuildList=gettext (Missionconfigfile >> "BluePrintInfo" >> _classname >> "type");
	_description=gettext (Missionconfigfile >> "BluePrintInfo" >> _classname >> "description");

//Add Blueprint to known blueprints and proper building array
_list=player getvariable [_buildlist,[]]; 
_list pushback _classname;
player setvariable [_buildlist,_list];
	_known=player getvariable ["KnownBluePrints",[]]; 
	_known pushback [_classname,100];
	player setvariable ["KnownBluePrints",_known];

//delete blueprint item
[player,_classname] spawn aph_fnc_DeleteInventoryItem;

//Put blueprint info on UI
			//variables for UI
			0 cutRsc ["BlueprintPictureOverlayUI","PLAIN"];			
			1 cutRsc ["BlueprintDisplayUI","PLAIN"];
			_Overlay = uiNameSpace getVariable "BlueprintPictureOverlayUI";
				_underpic=_Overlay displayctrl 1200;
			_display = uiNameSpace getVariable "BlueprintDisplayUI";
			_pic= _display displayCtrl 1200;
			_toptext=_display displayctrl 1500;
			_btmtext=_display displayctrl 1501;
			
			if ((isnull (finddisplay 602))) then {
				player action ["Gear", player];
				};
			
				//Set pictures			
				_Picture=(gettext (configfile >> _CFG >> _ItemMade >> "picture"));
					_pic ctrlSetText _Picture;
					_underpic ctrlSetText "\Objects\Blueprints\Images\BlueprintBackground.paa";
					//set the top text	
				_toptext ctrlSetStructuredText parseText format [
"<t color='#ffffff' size='1.35' align='center' shadow='1' shadowColor='#000000'>%1</t>",_Name];
					//set the bottom text
				_btmtext ctrlSetStructuredText parseText format [
"<t color='#ffffff' size='1.25' align='center' shadow='1' shadowColor='#000000'>%1<br/></t> 
<t color='#ffffff' size='1.25' align='center' shadow='1' shadowColor='#000000' underline='true'>Cost<br/></t>Iron: %2 <br/>Steel: %3 <br/>Platinum: %5 <br/>Wood: %7 <br/>Wool: %8 <br/>Flax: %9 <br/>",_description,str (_cost select 0),str (_cost select 1),str (_cost select 2),str (_cost select 3),str (_cost select 4),str (_cost select 5),str (_cost select 6),str (_cost select 7)];	
						
			//Alpha background
			_toptext ctrlSetBackgroundColor [0, 0, 0, 0];
			_btmtext ctrlSetBackgroundColor [0, 0, 0, 0];	
				
	
	

hint format ["%1 , %2",_classname];
true;
};	


	
		while {true} do {
			waituntil {!(isnull (finddisplay 602))};
			//uniform
		   ((findDisplay 602) displayCtrl 633 ) ctrlSetEventHandler ["LBDblClick", "
				_idc = ctrlIDC (_this select 0);
				_selectedIndex = _this select 1;
				[_idc,_selectedIndex] call ctrl_fnc_handle"];
			//vest 
			((findDisplay 602) displayCtrl 638 ) ctrlSetEventHandler ["LBDblClick", "
				_idc = ctrlIDC (_this select 0);
				_selectedIndex = _this select 1;
				[_idc,_selectedIndex] call ctrl_fnc_handle"];
			//backpack
			((findDisplay 602) displayCtrl 619 ) ctrlSetEventHandler ["LBDblClick", "
				_idc = ctrlIDC (_this select 0);
				_selectedIndex = _this select 1;
				[_idc,_selectedIndex] call ctrl_fnc_handle"];
			waituntil {isnull (finddisplay 602)};
			0 cutRsc ["Default","PLAIN"];
			1 cutRsc ["Default","PLAIN"];
			
    };

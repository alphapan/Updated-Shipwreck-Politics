_item=_this;
_CFG="";
if ( isClass (configFile >> "CFGweapons" >> _item)) then {
    //is weapon
	_CFG="CfgWeapons";
}else{
    if ( isClass (configFile >> "CFGMagazines" >> _item)) then {
        //is magazine
		_CFG="CfgMagazines";
    }else{
        //is some other class
		_CFG="CfgVehicles";
    };
}; 
_CFG;
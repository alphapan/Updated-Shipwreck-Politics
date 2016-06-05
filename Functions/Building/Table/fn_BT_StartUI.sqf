player setvariable ["InDialog",true];
_target=_this;
player setvariable ["BuildTableObject",_target];
_handle= createdialog "BuildTableUI";

lbAdd[1500,"Ammunition"];
lbAdd[1500,"Weapons"];
lbAdd[1500,"Objects"];
lbAdd[1500,"Accessory"];
lbAdd[1500,"Small parts"];
lbAdd[1500,"Gear"];

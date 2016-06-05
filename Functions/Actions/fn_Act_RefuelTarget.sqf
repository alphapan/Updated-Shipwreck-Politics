_ToFuel=cursortarget;

_FuelCan=_this;

		if !( (_ToFuel iskindof "Air") or (_ToFuel iskindof "Car") or (_ToFuel iskindof "Ship") or (typeof _ToFuel =="AP_Refinery") ) exitwith {hint "Can't refuel this"};

			_condition={};
			_toDo={};
if (typeof _ToFuel =="AP_Refinery") then 
	{
		_condition=
				(
					(	(player distance _ToFuel) >4	) or 
					!(typeof (player getvariable ["AP_CurrentCarryObject",objnull])=="ap_fuelCan") or
					( count (ItemCargo _FuelCan) == 0 ) or
					(	(_ToFuel getvariable ["AP_Fuel",0]) == 1	)	
				);
			
							
	} else 
		{
			_condition=
				(
					(	(player distance _ToFuel) >4	) or 
					!(typeof (player getvariable ["AP_CurrentCarryObject",objnull])=="ap_fuelCan") or
					( count (ItemCargo _FuelCan) == 0 ) or
					(	(fuel _ToFuel) == 1	)	
				);
			
		};
		
		
	
//Loop		
while { "aph_ProcessedOil" in (ItemCargo _FuelCan) } do 
{
	if ( _condition	) exitwith {hint "Stopped refueling"};

		_inv=(ItemCargo _FuelCan);
		clearitemcargoglobal _FuelCan;
		_FuelCan additemcargoglobal ["aph_ProcessedOil",((count _inv) - 1)];

//specify fueling		
if (typeof _ToFuel =="AP_Refinery") then 
	{
		_ToFuel setvariable ["AP_Fuel",(_ToFuel getvariable ["AP_Fuel",0]) + 0.025];
	} else	
		{
			_ToFuel setfuel ((fuel _ToFuel) + 0.025);
		};
					
hint format ["Refueling: %2 \n %1 left in fuelcan",(count _inv) - 1,gettext (configfile >> "CfgVehicles" >> (typeof _ToFuel) >> "displayname")];
sleep 1.5;			
};
			
					
					
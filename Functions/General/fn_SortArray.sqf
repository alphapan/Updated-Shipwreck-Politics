_array=_this select 0;
_level=_this select 1;

_newArray=[];
	{
		_newArray pushback (_x select _level);
	}foreach _array;
	
_newArray;
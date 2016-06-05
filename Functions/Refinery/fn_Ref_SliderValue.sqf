_val =sliderPosition 1900;
_val=floor (_val*10);
disableserialization;
_display=uinamespace getvariable "LowRefineryUI";
_Text=_display displayCtrl 1100;
_wanted=(parsetext format ["%1",_val]);
_Text ctrlSetStructuredText _wanted;
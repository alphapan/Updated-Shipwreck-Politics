//double clicking in inventory
[] spawn aph_fnc_ctrlEventhandlers;

//Create Diary info
_index =player createDiarySubject ["Controls","Controls"];
player createDiaryRecord ["Controls",["Controls", "User Action 1:  Open Menu<br/>User Action 2:  Journal (toggle)<br/>User Action 3:  Mine resource (toggle)<br/>"]];

//Compile Conversation Array
[] spawn aph_fnc_Cvo_Init;


//Key Pressed
waituntil {(!isnull (finddisplay 46))};
aph_var_displayKD=((findDisplay 46) displayAddEventHandler ["KeyDown","_this call aph_fnc_ctrlKeyPressed;false;"]);

aph_var_displayKU=((findDisplay 46) displayAddEventHandler ["KeyUp","_this call aph_fnc_ctrlKeyReleased;false;"]);



//Default Variables
aph_V_ObjectCarryHeight=0;



//Create Menu
100 cutRsc ["MenuUI","PLAIN"];


















//buggy dialog
/*
createdialog "PlayerUINotebook";
closedialog 0;
createdialog "PlayerUINotebookCrafting";
closedialog 0;
createdialog "PlayerUINotebookCharacter";
closedialog 0;
createdialog "PlayerUINotebookGroup";
closedialog 0;
createdialog "PlayerUINotebookInfluence";
closedialog 0;
createdialog "ConversationChat";
closedialog 0;
createdialog "SetGuardedLocationUI";
closedialog 0;
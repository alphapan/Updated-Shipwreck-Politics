if ( (!(isnull (uiNameSpace getVariable "PlayerUINotebookCharacter"))) || 
	(!(isnull (uiNameSpace getVariable "PlayerUINotebookCrafting"))) || 
	(!(isnull (uiNameSpace getVariable "PlayerUINotebookGroup"))) ||
	(!(isnull (uiNameSpace getVariable "PlayerUINotebookInfluence"))) ) exitwith	
	{
		[] call aph_fnc_Jrl_ClearUI;
	
	};


	if (	(isnull (uiNameSpace getVariable "PlayerUINotebook"))	) then 
		{     
			[] call aph_fnc_Jrl_ClearUI;
			(finddisplay 46) createdisplay "PlayerUINotebook";
			((findDisplay 2113) displayAddEventHandler ["KeyDown","_this call aph_fnc_ctrlKeyPressed;false;"]);
		} else 
				{
					[] call aph_fnc_Jrl_ClearUI;
				};
				

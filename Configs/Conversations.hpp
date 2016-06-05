class Conversations
{

/* Dialog Frame
		class Name
		{
				Text="";
				TextArg="";
				Action="";
				Responses[]=
				{
					//text, condition, next text
					{"",""},
					{"",""}
				};
		};
*/

	class Intro_char
	{
		
		class Intro
		{
			Text="Hello there";
			TextArg="";
			Action="";
			Responses[]=
			{
				{"Hello to you","",""},
				{"I don't like you","","MeanResponse"},
				{"I DO like you","","FriendlyResponse"},
				{"This is embarressing","",""},
				{"Why would it be embarressing?","",""},
				{"I think I spelled embaressing wrong","",""}
			};
		};
		
		class FriendlyResponse
		{
				Text="Alright friend";
				TextArg="";
				Action="";
				Responses[]=
				{
					{"Exit","",""}
				};
		};
		
		class MeanResponse
		{
				Text="";
				TextArg="";
				Condition="";
				ConditionArg="";
				Action="";
				Responses[]=
				{
					{"Well you snooze you lose","",""},
					{"Exit","",""}
				};
		};
	};//End Intro_char










};
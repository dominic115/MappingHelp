if( GetDeveloperLevel() > 0 ) 
	printl( "Initializing pickup_script.nut" );

// The state of Pickup [0 = ON // 1 = OFF]
PickedUp	<- 0;

function CheckPickup()
{
	// Do stuff when gun is picked up!
	
	// Check the state of the button.
	if (PickedUp == 0) {
	
		// The pickup is enabled, so let's turn it OFF!
		
		// Send a message to the chat.
		ScriptPrintMessageChatAll("Pickup has been disabled!");
		
		// Change the variable to 1 (ON)
		PickedUp = 1;
		
	} else if (PickedUp == 1) {
		
		// Send a message to the chat.
		ScriptPrintMessageChatAll("Pickup is not allowed");
		
		// Kill the entity.
		Destroy(self);
	}
	
	// Send a message to the console. (useful for debugging!)
	printl("PickedUp() has been executed!")
}

function Destroy()
{
	Destroy(self);
	
	// Send a message to the console. (useful for debugging!)
	printl("Destroy() has been executed!")
}
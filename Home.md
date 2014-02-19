# Room commands

This is a list of all the public commands currently supported by the Room class.

## Immediate methods

These methods execute and return immediately, rather than being queued for later execution.

`public bool IsFirstVisit()`  
Returns true if this is the first time the player has visited this room  

`public bool GetFlag(string key)`  
Returns true if the boolean flag for the key has been set to true

`public int GetCounter(string key)`  
Returns the count value for the key. Returns zero if no value has been set.

`public int GetInventory(string key)`  
Returns the inventory count value for the key. Returns zero if no inventory count has been set.

`public bool HasInventory(string key)`  
Returns true if the inventory count for the key is greater than zero

## Command methods
These methods queue commands for later execution. Fungus will automatically execute added commands in serial order.

`public void Wait(float duration)`  
Wait for a period of time before executing the next command

`public void Call(Action callAction)`  
Call a delegate method provided by the client. Used to queue the execution of arbitrary code.

`public void SetPage(Page page)`  
Sets the currently active page for text rendering.

`public void Title(string titleText)`  
Sets the title text displayed at the top of the active page

`public void Say(string storyText)`  
Writes story text to the currently active page. A 'continue' button is displayed when the text has fully appeared.

`public void Choose(string chooseText)`  
Displays a text prompt, followed by all previously added options as buttons.

`public void MoveToRoom(Room room)`  
Changes the active room to a different room

`public void SetFlag(string key, bool value)`  
Sets a global boolean flag value
		
`public void SetCounter(string key, int value)`  
Sets a global integer counter value

`public void SetInventory(string key)`  
Sets a global inventory count value. Assumes that the count value is 1 (common case).

`public void SetInventory(string key, int value)`  
Sets a global inventory count value

`public void HideSprite(SpriteController spriteController)`  
Sets sprite alpha to 0 immediately

`public void ShowSprite(SpriteController spriteController)`  
Sets sprite alpha to 1 immediately

`public void FadeSprite(SpriteController spriteController, float targetAlpha, float duration)`  
Fades a sprite to a given alpha value over a period of time  

`public void FadeSprite(SpriteController spriteController, float targetAlpha, float duration, Vector2 slideOffset)`
Fades a sprite to a given alpha value over a period of time, and applies a sliding motion to the sprite transform

`public void PlayAnimation(SpriteController spriteController, string animationName)`  
Plays the named animation on a object with a SpriteController component

`public void PanToView(View targetView, float duration)`  
Pans the camera to the target view of a period of time

`public void SnapToView(View targetView)`  
Snaps the camera to the target view immediately

`public void FadeToView(View targetView, float duration)`  
Fades out the current camera view, and fades in again using the target view.
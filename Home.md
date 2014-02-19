// Returns true if this is the first time the player has visited this room
public bool IsFirstVisit()

// Return true if the boolean flag for the key has been set to true
public bool GetFlag(string key)

// Returns the count value for the key
// Returns zero if no value has been set.
public int GetCounter(string key)

// Returns the inventory count value for the key
// Returns zero if no inventory count has been set.
public int GetInventory(string key)

// Returns true if the inventory count for the key is greater than zero
public bool HasInventory(string key)

// Public command methods
// These methods all queue commands for later execution in serial order

// Wait for a period of time before executing the next command
public void Wait(float duration)

// Call a delegate method provided by the client
// Used to queue the execution of arbitrary code.
public void Call(Action callAction)

// Sets the currently active page for text rendering
public void SetPage(Page page)

// Sets the title text displayed at the top of the active page
public void Title(string titleText)

// Writes story text to the currently active page.
// A 'continue' button is displayed when the text has fully appeared.
public void Say(string storyText)

// Displays a text prompt, followed by all previously added options as buttons.
public void Choose(string chooseText)

// Changes the active room to a different room
public void MoveToRoom(Room room)

// Sets a global boolean flag value
public void SetFlag(string key, bool value)
		
// Sets a global integer counter value
public void SetCounter(string key, int value)

// Sets a global inventory count value
// Assumes that the count value is 1 (common case)
public void SetInventory(string key)

// Sets a global inventory count value
public void SetInventory(string key, int value)

// Sets sprite alpha to 0 immediately
public void HideSprite(SpriteController spriteController)

// Sets sprite alpha to 1 immediately
public void ShowSprite(SpriteController spriteController)

// Fades a sprite to a given alpha value over a period of time
public void FadeSprite(SpriteController spriteController, float targetAlpha, float duration)

// Fades a sprite to a given alpha value over a period of time, and applies a sliding motion to the sprite transform
public void FadeSprite(SpriteController spriteController, float targetAlpha, float duration, Vector2 slideOffset)

// Plays the named animation on a object with a SpriteController component
		public void PlayAnimation(SpriteController spriteController, string animationName)
		{
			commandQueue.AddCommand(new PlayAnimationCommand(spriteController, animationName));
		}

		// Pans the camera to the target view of a period of time
		public void PanToView(View targetView, float duration)
		{
			commandQueue.AddCommand(new PanToViewCommand(targetView, duration));
		}

		// Snaps the camera to the target view immediately
		public void SnapToView(View targetView)
		{
			commandQueue.AddCommand(new PanToViewCommand(targetView, 0f));
		}

		// Fades out the current camera view, and fades in again using the target view.
		public void FadeToView(View targetView, float duration)
		{
			commandQueue.AddCommand(new FadeToViewCommand(targetView, duration));
		}
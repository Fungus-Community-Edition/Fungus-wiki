## Comment
Use comments to record design notes and reminders about your game.

Property | Type | Description
 --- | --- | ---
Commenter Name | System.String | Name of Commenter
Comment Text | System.String | Text to display for this comment

## Debug Log
Writes a log message to the debug console.

Property | Type | Description
 --- | --- | ---
Log Type | Fungus.DebugLog+DebugLogType | Display type of debug log info
Log Message | Fungus.StringData | Text to write to the debug log. Supports variable substitution, e.g. {$Myvar}

## Destroy
Destroys a specified game object in the scene.

Property | Type | Description
 --- | --- | ---
Target Game Object | UnityEngine.GameObject | Reference to game object to destroy

## Set Active
Sets a game object in the scene to be active / inactive.

Property | Type | Description
 --- | --- | ---
Target Game Object | UnityEngine.GameObject | Reference to game object to enable / disable
Active State | Fungus.BooleanData | Set to true to enable the game object


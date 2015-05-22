## Comment
Use comments to record design notes and reminders about your game.

Property | Type | Description
 --- | --- | ---
Commenter Name | System.String | Name of Commenter
Comment Text | System.String | Text to display for this comment

## Call Method
Calls a named method on a GameObject using the GameObject.SendMessage() system.

Property | Type | Description
 --- | --- | ---
Target Object | UnityEngine.GameObject | Target monobehavior which contains the method we want to call
Method Name | System.String | Name of the method to call

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

## Get Text
Gets the text property from a UI Text object and stores it in a string variable.

Property | Type | Description
 --- | --- | ---
Text Object | UnityEngine.UI.Text | Text object to get text value from
Variable | Fungus.Variable | String variable to store the text value in

## Set Active
Sets a game object in the scene to be active / inactive.

Property | Type | Description
 --- | --- | ---
Target Game Object | UnityEngine.GameObject | Reference to game object to enable / disable
Active State | Fungus.BooleanData | Set to true to enable the game object

## Set Text
Sets the text property on a UI Text object.

Property | Type | Description
 --- | --- | ---
Text Object | UnityEngine.UI.Text | Text object to set text on
String Data | Fungus.StringData | String value to assign to the text object

## Spawn Object
Spawns a new object based on a reference to a scene or prefab game object.

Property | Type | Description
 --- | --- | ---
Source Object | UnityEngine.GameObject | Game object to copy when spawning. Can be a scene object or a prefab.
Parent Transform | UnityEngine.Transform | Transform to use for position of newly spawned object.
Spawn Position | UnityEngine.Vector3 | Local position of newly spawned object.
Spawn Rotation | UnityEngine.Vector3 | Local rotation of newly spawned object.


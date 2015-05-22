## Break
Force a loop to terminate immediately.
## Call
Execute another block in the same Flowchart as the command, or in a different Flowchart.

Property | Type | Description
 --- | --- | ---
Target Flowchart | Fungus.Flowchart | Flowchart which contains the block to execute. If none is specified then the current Flowchart is used.
Target Block | Fungus.Block | Block to start executing
Call Mode | Fungus.Call+CallMode | Select if the calling block should stop or continue executing commands, or wait until the called block finishes.

## Else
Marks the start of a command block to be executed when the preceding If statement is False.
## Else If
Marks the start of a command block to be executed when the preceding If statement is False and the test expression is true.

Property | Type | Description
 --- | --- | ---
Variable | Fungus.Variable | Variable to use in expression
Boolean Data | Fungus.BooleanData | Boolean value to compare against
Integer Data | Fungus.IntegerData | Integer value to compare against
Float Data | Fungus.FloatData | Float value to compare against
String Data | Fungus.StringData | String value to compare against
Compare Operator | Fungus.CompareOperator | The type of comparison to be performed

## End
Marks the end of a conditional block.
## If
If the test expression is true, execute the following command block.

Property | Type | Description
 --- | --- | ---
Variable | Fungus.Variable | Variable to use in expression
Boolean Data | Fungus.BooleanData | Boolean value to compare against
Integer Data | Fungus.IntegerData | Integer value to compare against
Float Data | Fungus.FloatData | Float value to compare against
String Data | Fungus.StringData | String value to compare against
Compare Operator | Fungus.CompareOperator | The type of comparison to be performed

## Jump
Move execution to a specific Label command

Property | Type | Description
 --- | --- | ---
Target Label | Fungus.Label | Label to jump to

## Label
Marks a position in the command list for execution to jump to.

Property | Type | Description
 --- | --- | ---
Key | System.String | Display name for the label

## Load Scene
Loads a new Unity scene and displays an optional loading image. This is useful for splitting a large game across multiple scene files to reduce peak memory usage. Previously loaded assets will be released before loading the scene to free up memory.The scene to be loaded must be added to the scene list in Build Settings.

Property | Type | Description
 --- | --- | ---
Scene Name | System.String | Name of the scene to load. The scene must also be added to the build settings.
Loading Image | UnityEngine.Texture2D | Image to display while loading the scene

## Send Message
Sends a message to either the owner Flowchart or all Flowcharts in the scene. Blocks can listen for this message using a Message Received event handler.

Property | Type | Description
 --- | --- | ---
Message Target | Fungus.SendMessage+MessageTarget | Target flowchart(s) to send the message to
Message | System.String | Name of the message to send

## Stop
Stop executing the current Flowchart.
## Wait
Waits for period of time before executing the next command in the block.

Property | Type | Description
 --- | --- | ---
Duration | System.Single | Duration to wait for

## While
Continuously loop through a block of commands while the condition is true. Use the Break command to force the loop to terminate immediately.

Property | Type | Description
 --- | --- | ---
Variable | Fungus.Variable | Variable to use in expression
Boolean Data | Fungus.BooleanData | Boolean value to compare against
Integer Data | Fungus.IntegerData | Integer value to compare against
Float Data | Fungus.FloatData | Float value to compare against
String Data | Fungus.StringData | String value to compare against
Compare Operator | Fungus.CompareOperator | The type of comparison to be performed


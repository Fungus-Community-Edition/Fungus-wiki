# Adding a Command
New Fungus commands can be easily created and then used in your blocks. To do so, you create a new class that inherits from Command (or one of its child classes).

Let's start by looking at the simplest Command we can write.
```c#
using UnityEngine;
using Fungus;

[CommandInfo("Other",
             "ExampleCommand",
             "Just an example.")]
[AddComponentMenu("")]
public class ExampleCommand : Command
{
    public override void OnEnter()
    {
        Debug.Log("Example command");
        Continue();
    }
}
```

**CommandInfo**
This attribute adds the Command the the AddCommand drop down list in the block editor. The first param defines its Category, the second the name it will show up as, and the third its tooltip in the AddCommand menu and the description when the command is selected in the editor.

**AddComponentMenu**
This unity attribute, when given an empty string prevents the class from showing up in the AddComponent menu on regular gameobjects. 

**Inherit from Command**
Blocks keep a list of commands to execute, and this base class defines what commands can do and when they will be called. See Command.cs for more details.

**OnEnter**
Called by the block when the command is asked to start running. Most commands compete their task within the OnEnter. 

**Continue**
A command needs to call this to notify the calling Block that this command has completed its task and the Block should move to the next Command.

## Data
As with any MonoBehaviour, fields with public or SerializeField will be show in the editor when the command is selected. 

For FungusVariables you'll want to use either a typeData such as IntegerData, this allows for a local value to be set or a compatible FungusVariable to be selected. Where a FungusVariable is required you can use a Variable field with a VariableProperty attribute to only show variables of certain types such as.
```c#
[VariableProperty(typeof(FloatVariable), typeof(BooleanVariable), typeof(IntegerVariable))]
[SerializeField] protected Variable outValue;
```
## Common Methods
Many, if not most, Commands use some of the following common Command methods.

```c#
public override string GetSummary()
{
    return logMessage.GetDescription();
}
```
Returns a message to show next to the command in the command list of the block. Returning a string starting with 'Error:'' will cause it to show with red colour.
```c#
public override Color GetButtonColor()
{
    return new Color32(235, 191, 217, 255);
}
```
Returned colour sets the tint of the command in the command list.
```c#
public override bool HasReference(Variable variable)
{
    return logMessage.stringRef == variable || base.HasReference(variable);
}
```
If your command uses any FungusVariables then returning the comparison against all of them, as above, allows variable references to be tinted in the variable list to show usage.
```c#
#region Editor caches
#if UNITY_EDITOR
protected override void RefreshVariableCache()
{
    base.RefreshVariableCache();

    var f = GetFlowchart();

    f.DetermineSubstituteVariables(logMessage.Value, referencedVariables);
}
#endif
#endregion Editor caches
```
RefreshVariableCache is editor only and intended for use by commands that use SubstituteVariables so they can show variable use caused by substitutions.

For more detail you'll want to investigate the Command source file.

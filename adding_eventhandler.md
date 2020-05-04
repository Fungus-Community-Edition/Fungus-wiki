# Adding an EventHandler

EventHandlers are the mechanism for causing blocks to execute. As with commands, you can create your own by inheriting from the base class and setting information on an attribute. Since they are a MonoBehaviour, they may piggyback off existing messages from Unity or your own game systems. Some use Update to check for conditions being met then calling ExecuteBlock.
Here's a simplified version of the GameStarted EventHandler.

```c#
using Fungus;
using UnityEngine;

[EventHandlerInfo("",
				  "Start",
				  "The block will execute when the Start is called by Unity.")]
[AddComponentMenu("")]
public class Start : EventHandler
{
	protected virtual void Start()
	{
		ExecuteBlock();
	}
}
```

**EventHandlerInfo**
This attribute adds the EventHandler to the SetEventHandler menu. First param determines its category, second its name in the list, 3rd, its tooltip in the menu.

**AddComponentMenu**
This unity attribute, when given an empty string prevents the class from showing up in the AddComponent menu on regular gameobjects. 

**Inherit from EventHandler**
A Block has 0 or 1 EventHandler that tells the block when to run.

**ExecuteBlock**
The method in base class EventHandler that, if all conditions are met, starts the block running.

## Data
As with any MonoBehaviour, fields with public or SerializeField will be show in the editor when the command is selected. 

For FungusVariables you'll want to use either a typeData such as IntegerData, this allows for a local value to be set or a compatible FungusVariable to be selected. Where a FungusVariable is required you can use a Variable field with a VariableProperty attribute to only show variables of certain types such as.
```c#
[VariableProperty(typeof(FloatVariable), typeof(BooleanVariable), typeof(IntegerVariable))]
[SerializeField] protected Variable outValue;
```
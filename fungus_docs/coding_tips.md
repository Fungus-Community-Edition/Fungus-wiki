# Coding Tips

This is a collection of quick tips for scripting Fungus from code.

# Executing Blocks

## Block Reference

The BlockReference type uses a custom drawer to ensure direct reference to a block on a flowchart within the scene. Allows for selecting a block in your own scripts in a manner similar to selecting a block within a Command.

```
using UnityEngine;
using Fungus;

class MyComponent : public MonoBehaviour
{
	public BlockReference blockRef;
}
```

To execute:
```
blockRef.Execute();
```

See [BlockReference.cs](https://github.com/snozbot/fungus/blob/master/Assets/Fungus/Scripts/Utils/BlockReference.cs) for more detail  

### Code example  
```
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

namespace Fungus {
	[CommandInfo("Custom",
			 "Execute Reference Block",
			 "Receive an object of type Block Reference and execute it.")]
	public class executeReferenceBlock : Command, IBlockCaller
	{

		[Tooltip("the block")]
		[SerializeField] protected BlockReference whichBlock;

		public override void OnEnter(){
			if(whichBlock.block != null){
				whichBlock.Execute();
			}
			Continue();
		}

		public override void GetConnectedBlocks(ref List<Block> connectedBlocks)
        {
            if (whichBlock.block != null)
            {
                connectedBlocks.Add(whichBlock.block);
            }       
        }

		public bool MayCallBlock(Block block){
            return block == whichBlock.block;
        }

	}
}
```


This custom command explores receiving and storing blocks in the BlockReference container struct (see [BlockReference.cs](https://github.com/snozbot/fungus/blob/master/Assets/Fungus/Scripts/Utils/BlockReference.cs)). The inspector presents a Flowchart field and, when filled, populates a dropdown with that flowchart's blocks. Then, when this command is reached at runtime, the block is executed (no custom editor script needed).  

![blockReferenceExecute](https://i.imgur.com/2kh3yRd.png)

Note that to have the arrow lines drawn in the Flowchart window indicating that the selected block is connected, the connectedBlocks List's Add() must be passed the contained Block (whichBlock.block), not the BlockReference itself.

## Manually

You first need to get a reference to your flowchart object.  Add a public Flowchart property to your component and set it to reference your flowchart in the inspector.
```
using UnityEngine;
using Fungus;

class MyComponent : public MonoBehaviour
{
	public Flowchart flowchart;
}
```

To execute a named Block in the Flowchart:
```
flowchart.ExecuteBlock("BlockName");
```

To start execution at a specific command index:
```
flowchart.ExecuteBlock("BlockName", 3);
```

To tell if a Flowchart has any executing Blocks:
```
if (flowchart.HasExecutingBlocks())
{
	// Do something
}
```

# Working with Fungus Variables

Variables can be fetched via a flowchart Variables property or GetVariable by name or by type. Similar to a GetComponent.

## Variable Reference

For direct reference to a fungus variable in your own c# scripts, a VariableReference allows for selection similar to selecting a variable with in a Fungus Command. 

```
using UnityEngine;
using Fungus;

class MyComponent : public MonoBehaviour
{
	public VariableReference varRef;
}
```
To access the instance uses generic Get and Set methods. See [VariableReference.cs](https://github.com/snozbot/fungus/blob/master/Assets/Fungus/Scripts/Utils/VariableReference.cs) for more details.

# Block Signals

You can use the BlockSignals class to listen for events from the Block execution system.

```
using Fungus;

public MyComponent : MonoBehaviour
{
    void OnEnable() 
    {
    	// Register as listener for Block events
        BlockSignals.OnBlockStart += OnBlockStart;
    }

    void OnDisable()
    {
    	// Unregister as listener for Block events
        BlockSignals.OnBlockStart -= OnBlockStart;
    }

    void OnBlockStart(Block block)
    {
    	Debug.Log("Block started " + block.BlockName);
    }
}
```

# Writer Signals

You can use the WriterSignals class to listen for a variety of events from the text writing system.

```
using Fungus;

public MyComponent : MonoBehaviour
{
    void OnEnable() 
    {
    	// Register as listener for Writer state change events
        WriterSignals.OnWriterState += OnWriterState;
    }

    void OnDisable()
    {
    	// Unregister as listener for Writer state change events
        WriterSignals.OnWriterState -= OnWriterState;
    }

    void OnWriterState(Writer writer, WriterState writerState)
    {
    	if (writerState == WriterState.Start)
    	{
    		Debug.Log("Writing started");
    	}
    }
}
```


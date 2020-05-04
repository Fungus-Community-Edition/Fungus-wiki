# Adding a Fungus Variable
As with Commands and EventHandlers you can inherit from the base class and define your own new types of FungusVariable. For simple object reference types to use in your own commands, you only need a class that inherits from Fungus.VariableBase, for your class named Foo.

```c#
[VariableInfo("Other", "Foo")]
[AddComponentMenu("")]
public class FooVariable : VariableBase<Foo>{ }
```

**VariableInfo**
This attribute adds the Variable to the AddVariable menus, first param is the category, second is the name of the variable in the list.

**AddComponentMenu**
This unity attribute, when given an empty string prevents the class from showing up in the AddComponent menu on regular gameobjects. 

**Inherit from VariableBase<T>**
T being the type of your variable. VariableBase provides most of the type specific requirements that Variable needs generically. This will be suitable for most variable types, inheriting directly from Variable rather than VariableBase, means some functionality will be not automatic and will make interoperability with other parts of Fungus harder as they expect to be able to check or cast to a VariableBase<T>. 

## Variable or Local Data
Most of the built in FungusVariables have a data struct and drawer that allows for setting either a FungusVariable or a local variable of the same type in the inspector. Such that, if you want an int for a Fungus.IntegerVariable, you would declare a variable of type IntegerData and use .Value to get the internal value regardless of which was set in the inspector.

These Data objects are structs meaning they do not have a common base class but do follow the same structure for ease of use. 

```c#
[System.Serializable]
public struct FooData
{
    [SerializeField]
    [VariableProperty("<Value>", typeof(FooVariable))]
    public FooVariable fooRef;

    [SerializeField]
    public Foo fooVal;

    public static implicit operator Foo(FooData FooData)
    {
        return FooData.Value;
    }

    public FooData(Foo v)
    {
        fooVal = v;
        fooRef = null;
    }

    public Foo Value
    {
        get { return (fooRef == null) ? fooVal : fooRef.Value; }
        set { if (fooRef == null) { fooVal = value; } else { fooRef.Value = value; } }
    }

    public string GetDescription()
    {
        if (fooRef == null)
        {
            return fooVal != null ? fooVal.ToString() : "Null";
        }
        else
        {
            return fooRef.Key;
        }
    }
}
```
This then also needs a Drawer in an Editor Folder, like
```c#
[CustomPropertyDrawer(typeof(FooData))]
public class FooDataDrawer : VariableDataDrawer<FooVariable>{ }
```
The drawer relies heavily on the names of the fields within the FooData so that it can draw correctly.

The GenerateVariableHelper can help automate parts of the process, but for non trivial types may require you to set additional params on the attributes or variable itself. Such as if the variable itself needs custom drawer or if the type can support mathematical operations.

## Conditions and SetVariable
For your new variable to be supported in the existing Condition and SetVariable commands, you'll need to add your new types to the AllVariableTypes.cs collections. 

## Object Variable or New Variable Type
Fungus has an ObjectVariable, during development it may be faster to assign values into an ObjectVariable and with in your custom commands cast its value to your custom type as needed. The main benefit of new variables is seen when using the GenerateVariableHelpers to create Property Commands for getting and setting values that have matching compatible FungusVariable types and when they are added to the existing AllVaraibleType collections and lookups.
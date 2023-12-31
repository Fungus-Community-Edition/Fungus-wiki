# Collections

Fungus Collections are components that live on GameObjects, much like Characters. They provide a broad set of interactions and operations for fungus to take on collections of the same type of object in a generic way. Intended to allow fungus blocks to take actions that require array(s).

<!-- **************************************************** -->
# What is a Collection?

If you have scripted or programmed before you are most likely familiar with the concept of an array. Collection commands take actions on any component that inherits from our base class Fungus.Collection. Allowing you to add, remove, and iterate through an array of ints or floats or any custom type you might wish to implement.

<!-- **************************************************** -->
# Collection Types?

A number of types ship with Fungus, for ints, floats, strings, gameobjects, transforms, and you can add your own. This process is explained further down this page.

Collections internally are typed but are interacted with by Fungus in a generic way via object boxing to prevent an explosion of typed commands for each type of collection. The type of the collection will can impact the type of fungus variables that will be able to interact with it.

<!-- **************************************************** -->
# The Collection Variable

This variable holds a reference to the Collection itself, allowing for commands to interact with the collection that can change targeted collection if needed.

<!-- **************************************************** -->
# Working with Collections

You need a type of collection, living on some game object, probably a new one empty one named to make its purpose clear. Then AddComponent to that object ofthe type of collection you need, such as IntCollection, or FloatCollection, etc. You can configure the starting values directly on the component.

Taking direct actions on collections is similar to any other command in fungus, but you will most likely want to take actions on all the items in a collection. For this you will need to iterate through them, the ForEach command is made especially for this purpose, however it is also easy to use a while or range based loop. These may be prefered if indicies are the driving factor your you wish to iterate over the controller in reverse.

<!-- **************************************************** -->
# Supporting Collections

When writing commands that need to use FungusVariables and FungusCollections at the same time, you will need to implement ICollectionCompatible so that the VaraibleEditor can assist in selecting only compatible variable types in the inspector. For an example of how this is done, check CollectionBaseVarCommand.

<!-- **************************************************** -->
# Adding new Collection types.

Suprisingly simple, we inherit from Fungus.GenericCollection for your specific type. Recommend reviewing FloatCollection for reference. For most cases it may be that simple. You can if you need to override any of the methods from GenericCollection in your specialisation to better support type specific needs, like sorting.

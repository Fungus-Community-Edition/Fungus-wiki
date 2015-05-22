## Fade Sprite
Fades a sprite to a target color over a period of time.

Property | Type | Description
 --- | --- | ---
Sprite Renderer | UnityEngine.SpriteRenderer | Sprite object to be faded
Duration | System.Single | Length of time to perform the fade
Target Color | UnityEngine.Color | Target color to fade to. To only fade transparency level, set the color to white and set the alpha to required transparency.
Wait Until Finished | System.Boolean | Wait until the fade has finished before executing the next command

## Set Clickable 2D
Sets a Clickable2D component to be clickable / non-clickable.

Property | Type | Description
 --- | --- | ---
Target Clickable2 D | Fungus.Clickable2D | Reference to Clickable2D component on a gameobject
Active State | Fungus.BooleanData | Set to true to enable the component

## Set Collider
Sets all collider (2d or 3d) components on the target objects to be active / inactive

Property | Type | Description
 --- | --- | ---
Target Objects | System.Collections.Generic.List`1[UnityEngine.GameObject] | A list of gameobjects containing collider components to be set active / inactive
Target Tag | System.String | All objects with this tag will have their collider set active / inactive
Active State | Fungus.BooleanData | Set to true to enable the collider components

## Show Sprite
Makes a sprite visible / invisible by setting the color alpha.

Property | Type | Description
 --- | --- | ---
Sprite Renderer | UnityEngine.SpriteRenderer | Sprite object to be made visible / invisible
Visible | System.Boolean | Make the sprite visible or invisible


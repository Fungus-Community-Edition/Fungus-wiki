## Look From
Instantly rotates a GameObject to look at the supplied Vector3 then returns it to it's starting rotation over time.

Property | Type | Description
 --- | --- | ---
From Transform | UnityEngine.Transform | Target transform that the GameObject will look at
From Position | UnityEngine.Vector3 | Target world position that the GameObject will look at, if no From Transform is set
Axis | Fungus.iTweenAxis | Restricts rotation to the supplied axis only
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Look To
Rotates a GameObject to look at a supplied Transform or Vector3 over time.

Property | Type | Description
 --- | --- | ---
To Transform | UnityEngine.Transform | Target transform that the GameObject will look at
To Position | UnityEngine.Vector3 | Target world position that the GameObject will look at, if no From Transform is set
Axis | Fungus.iTweenAxis | Restricts rotation to the supplied axis only
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Move Add
Moves a game object by a specified offset over time.

Property | Type | Description
 --- | --- | ---
Offset | UnityEngine.Vector3 | A translation offset in space the GameObject will animate to
Space | UnityEngine.Space | Apply the transformation in either the world coordinate or local cordinate system
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Move From
Moves a game object from a specified position back to its starting position over time. The position can be defined by a transform in another object (using To Transform) or by setting an absolute position (using To Position, if To Transform is set to None).

Property | Type | Description
 --- | --- | ---
From Transform | UnityEngine.Transform | Target transform that the GameObject will move from
From Position | UnityEngine.Vector3 | Target world position that the GameObject will move from, if no From Transform is set
Is Local | System.Boolean | Whether to animate in world space or relative to the parent. False by default.
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Move To
Moves a game object to a specified position over time. The position can be defined by a transform in another object (using To Transform) or by setting an absolute position (using To Position, if To Transform is set to None).

Property | Type | Description
 --- | --- | ---
To Transform | UnityEngine.Transform | Target transform that the GameObject will move to
To Position | UnityEngine.Vector3 | Target world position that the GameObject will move to, if no From Transform is set
Is Local | System.Boolean | Whether to animate in world space or relative to the parent. False by default.
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Punch Position
Applies a jolt of force to a GameObject's position and wobbles it back to its initial position.

Property | Type | Description
 --- | --- | ---
Amount | UnityEngine.Vector3 | A translation offset in space the GameObject will animate to
Space | UnityEngine.Space | Apply the transformation in either the world coordinate or local cordinate system
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Punch Rotation
Applies a jolt of force to a GameObject's rotation and wobbles it back to its initial rotation.

Property | Type | Description
 --- | --- | ---
Amount | UnityEngine.Vector3 | A rotation offset in space the GameObject will animate to
Space | UnityEngine.Space | Apply the transformation in either the world coordinate or local cordinate system
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Punch Scale
Applies a jolt of force to a GameObject's scale and wobbles it back to its initial scale.

Property | Type | Description
 --- | --- | ---
Amount | UnityEngine.Vector3 | A scale offset in space the GameObject will animate to
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Rotate Add
Rotates a game object by the specified angles over time.

Property | Type | Description
 --- | --- | ---
Offset | UnityEngine.Vector3 | A rotation offset in space the GameObject will animate to
Space | UnityEngine.Space | Apply the transformation in either the world coordinate or local cordinate system
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Rotate From
Rotates a game object from the specified angles back to its starting orientation over time.

Property | Type | Description
 --- | --- | ---
From Transform | UnityEngine.Transform | Target transform that the GameObject will rotate from
From Rotation | UnityEngine.Vector3 | Target rotation that the GameObject will rotate from, if no From Transform is set
Is Local | System.Boolean | Whether to animate in world space or relative to the parent. False by default.
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Rotate To
Rotates a game object to the specified angles over time.

Property | Type | Description
 --- | --- | ---
To Transform | UnityEngine.Transform | Target transform that the GameObject will rotate to
To Rotation | UnityEngine.Vector3 | Target rotation that the GameObject will rotate to, if no To Transform is set
Is Local | System.Boolean | Whether to animate in world space or relative to the parent. False by default.
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Scale Add
Changes a game object's scale by a specified offset over time.

Property | Type | Description
 --- | --- | ---
Offset | UnityEngine.Vector3 | A scale offset in space the GameObject will animate to
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Scale From
Changes a game object's scale to the specified value and back to its original scale over time.

Property | Type | Description
 --- | --- | ---
From Transform | UnityEngine.Transform | Target transform that the GameObject will scale from
From Scale | UnityEngine.Vector3 | Target scale that the GameObject will scale from, if no From Transform is set
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Scale To
Changes a game object's scale to a specified value over time.

Property | Type | Description
 --- | --- | ---
To Transform | UnityEngine.Transform | Target transform that the GameObject will scale to
To Scale | UnityEngine.Vector3 | Target scale that the GameObject will scale to, if no To Transform is set
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Shake Position
Randomly shakes a GameObject's position by a diminishing amount over time.

Property | Type | Description
 --- | --- | ---
Amount | UnityEngine.Vector3 | A translation offset in space the GameObject will animate to
Is Local | System.Boolean | Whether to animate in world space or relative to the parent. False by default.
Axis | Fungus.iTweenAxis | Restricts rotation to the supplied axis only
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Shake Rotation
Randomly shakes a GameObject's rotation by a diminishing amount over time.

Property | Type | Description
 --- | --- | ---
Amount | UnityEngine.Vector3 | A rotation offset in space the GameObject will animate to
Space | UnityEngine.Space | Apply the transformation in either the world coordinate or local cordinate system
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Shake Scale
Randomly shakes a GameObject's rotation by a diminishing amount over time.

Property | Type | Description
 --- | --- | ---
Amount | UnityEngine.Vector3 | A scale offset in space the GameObject will animate to
Target Object | UnityEngine.GameObject | Target game object to apply the Tween to
Tween Name | System.String | An individual name useful for stopping iTweens by name
Duration | System.Single | The time in seconds the animation will take to complete
Ease Type | Fungus.iTween+EaseType | The shape of the easing curve applied to the animation
Loop Type | Fungus.iTween+LoopType | The type of loop to apply once the animation has completed
Wait Until Finished | System.Boolean | Wait until the tween has finished before executing the next command

## Stop Tween
Stops an active iTween by name.

Property | Type | Description
 --- | --- | ---
Tween Name | System.String | Stop and destroy any Tweens in current scene with the supplied name

## Stop Tweens
Stop all active iTweens in the current scene.

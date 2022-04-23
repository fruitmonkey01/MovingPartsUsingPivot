# MovingPartsUsingPivot
 
This is a basic example for moving planet object by using PivotTo API in Roblox Studio.
<br>
Step 1: Place the MovingPartsUsingPivot.lua script under the StarterPlayer -> StarterPlayerScript -> MovingPartsUsingPivot.lua

![alt GUI](https://github.com/fruitmonkey01/MovingPartsUsingPivot/blob/main/GUI.png)

<br> 
The purpose of using RunService.RenderStepped is for updating planet's rotation.

<br> 
Some references used in the example described in the following:
<br>
Roblox Studio Developer References:
<br>
1. Pivot API:
<br>
https://developer.roblox.com/en-us/resources/studio/Pivot-Tools
<br>
https://developer.roblox.com/en-us/api-reference/property/BasePart/PivotOffset
<br>
https://developer.roblox.com/en-us/api-reference/function/PVInstance/PivotTo
<br>
PivotTo() Function:
<br>
Moves the object such that its pivot will be located at the specified CFrame.
<br>
This allows for uniform object movement of both individual parts and models.

<br>
2. Another method for orbiting the part
<br>
https://github.com/fruitmonkey01/sky/blob/main/sky.lua
<br>
3. Another method for self-rotation of the part
<br>
https://github.com/fruitmonkey01/UsingObjectModel
<br>
4. For Rotation function:
<br>
https://developer.roblox.com/en-us/api-reference/property/BasePart/Orientation
<br>

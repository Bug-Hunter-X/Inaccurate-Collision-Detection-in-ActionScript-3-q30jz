# ActionScript 3 Collision Detection Bug

This repository demonstrates a common issue with collision detection in ActionScript 3.  The problem lies in using `getBounds()` without proper context, leading to inaccurate collision results.

The `bug.as` file shows the buggy implementation. The `bugSolution.as` file provides a corrected version that ensures accurate calculations.

## Problem

The getBounds() method relies on the object's parent coordinate system. If an object is nested within multiple display objects, getBounds() relative to a parent other than the stage will produce incorrect bounding box coordinates which will cause false positives or false negatives for collision detection.

## Solution

The solution involves using `localToGlobal()` and `globalToLocal()` to convert coordinates to the stage's coordinate system before performing collision checks, ensuring a consistent coordinate system for all objects.

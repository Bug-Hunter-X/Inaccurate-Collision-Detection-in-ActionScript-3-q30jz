function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean{
  var rect1:Rectangle = obj1.getBounds(stage);
  var rect2:Rectangle = obj2.getBounds(stage);
  return rect1.intersects(rect2);
}

//Alternative solution using localToGlobal for more complex cases:
function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean{
  var obj1Bounds:Rectangle = obj1.getBounds(obj1.parent);
  var obj2Bounds:Rectangle = obj2.getBounds(obj2.parent);
  
  var obj1GlobalPoint:Point = obj1.localToGlobal(obj1Bounds.x, obj1Bounds.y);
  var obj2GlobalPoint:Point = obj2.localToGlobal(obj2Bounds.x, obj2Bounds.y);
  
  var globalRect1:Rectangle = new Rectangle(obj1GlobalPoint.x, obj1GlobalPoint.y, obj1Bounds.width, obj1Bounds.height);
  var globalRect2:Rectangle = new Rectangle(obj2GlobalPoint.x, obj2GlobalPoint.y, obj2Bounds.width, obj2Bounds.height);
  
  return globalRect1.intersects(globalRect2);
}
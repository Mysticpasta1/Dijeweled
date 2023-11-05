/// @description Creates an instance of a given object at a given position.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
function instance_create(argument0, argument1, argument2) {
	var myDepth = 1
	return instance_create_depth( argument0, argument1, myDepth-1, argument2 );
}

///@arg _object 
var _object = argument0;
if instance_exists(_object) {
	return _object.id;
} else {
	var _instance = instance_create_layer(0, 0, "Instances", _object);
	_instance.persistent = true;
	return _instance;
}
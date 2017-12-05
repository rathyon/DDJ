if (other.shot) {
	instance_destroy(other);
	instance_deactivate_object(obj_action);
	instance_destroy(id);
}
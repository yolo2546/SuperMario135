extends Resource
class_name State

var name: String
var character: Character

func handle_update(delta: float):
	if character.controllable:
		if character.state != self and _start_check(delta):
			character.set_state(self, delta)
		if character.state == self:
			_update(delta)
		if character.state == self and _stop_check(delta):
			character.set_state(null, delta)
	_general_update(delta)
func _start_check(delta: float):
	pass
	
func _start(delta: float):
	pass
	
func _update(delta: float):
	pass
	
func _stop_check(delta: float):
	pass
	
func _stop(delta: float):
	pass
	
func _general_update(delta: float):
	pass

extends CharacterBody2D

@export var acceleration = 150
@export var max_speed = 40
@export var player_path : NodePath


func _physics_process(delta):
	if player_path is NodePath:
		var player = get_node(player_path)
		if player is CharacterBody2D:
			move_toward_position(player.global_position,delta)
			
func move_toward_position(target_position,delta):
	var direction = global_position.direction_to(target_position)
	velocity = velocity.move_toward(direction * max_speed, acceleration * delta)
	move_and_slide()
	
	



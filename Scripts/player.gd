extends CharacterBody2D

const SPEED = 140.0

func _physics_process(delta: float) -> void:
	# Get the input direction as a 2D vector for movement in all directions.
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Set velocity based on the direction and speed
	velocity = direction * SPEED
	
	# Move the character
	move_and_slide()

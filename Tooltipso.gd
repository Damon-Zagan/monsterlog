extends Label


func _ready():
	self.text = Global.Des
	pass


func _on_Timer_timeout():
	self.text = Global.Des
	pass # Replace with function body.

extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("MD/All/Prog/Fate/FateP/FateB/FateMax").text = str(Global.fatemax)
	get_node("MD/All/Prog/Fate/FateP").set_max(Global.fatemax)
	get_node("MD/All/Prog/Destiny/DestinyB/DestinyMax").text = str(Global.destinymax)
	get_node("MD/All/Prog/Destiny/DestinyB").set_max(Global.destinymax)
	get_node("MD/All/Prog/Fortune/FortuneB/FortuneMax").text = str(Global.fortunemax)
	get_node("MD/All/Prog/Fortune/FortuneB").set_max(Global.fortunemax)
	pass # Replace with function body.

############################## ACTIVITIES ######################################

func _on_UnkB_pressed():
	if $"Pri/ActivitiesC/ActivitiesC2/UnkAC".visible:
		$"Pri/ActivitiesC/ActivitiesC2/UnkAC".visible = false
	else:
		$"Pri/ActivitiesC/ActivitiesC2/UnkAC".visible = true

func _on_SearchA_pressed():
	pass # Replace with function body.

############################## ACTIONS ######################################

func _on_FateB_pressed():
	if $"Seg/ActionsC/ActionsC2/FateAC".visible:
		$"Seg/ActionsC/ActionsC2/FateAC".visible = false
	else:
		$"Seg/ActionsC/ActionsC2/FateAC".visible = true

func _on_Rest_pressed():
	if Global.fate == Global.fatemax:
# warning-ignore:standalone_expression
		null
	else:
		Global.fate += 1
	get_node("MD/All/Prog/Fate/FateP/FateB/FateLabel").text = str(Global.fate)
	get_node("MD/All/Prog/Fate/FateP").set_value(Global.fate)
	pass # Replace with function body.
		
############################## STORY ######################################

func _on_ANewBeg_pressed():
	if $"Ter/StoryC/StoryC2/ANewBeg2".visible:
		$"Ter/StoryC/StoryC2/ANewBeg2".visible = false
	else:
		$"Ter/StoryC/StoryC2/ANewBeg2".visible = true

func _on_Wake_up_pressed():
	pass # Replace with function body.

func _on_Wake_up_mouse_entered():
	Global.Des = "A piercing sound echoes around you,\nwaking you from a dead sleep."
	pass # Replace with function body.

############################## BATTLES ######################################

func _on_Survive_pressed():
	if $"Quar/BattlesC/BattlesC2/LowCrea".visible:
		$"Quar/BattlesC/BattlesC2/LowCrea".visible = false
	else:
		$"Quar/BattlesC/BattlesC2/LowCrea".visible = true

func _on_Rats_pressed():
	pass # Replace with function body.

func _on_Rats_mouse_entered():
	Global.Des = "Medabots!"
	pass # Replace with function body.

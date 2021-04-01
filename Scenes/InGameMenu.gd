extends PopupMenu

const RESUME = 1
const LEAVEGAME = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	add_item("Resume", RESUME)
	add_item("Leave Game", LEAVEGAME)

func _on_InGameMenu_id_pressed(id):
	match id:
		RESUME:
			self.hide()
		LEAVEGAME:
			var game = get_node("/root/Game")
			game._leave_game()

class_name TurnManager
extends Resource

var current_phase
var current_draw
var current_turn

enum Phases {StartPhase, DrawPhase, ActionPhase}
enum DrawPhaseTurns{Player, Enemy}
enum ActionPhaseTurns {Player, Enemy}

signal start_phase_started
signal draw_phase_started
signal action_phase_started

signal player_draw_started
signal enemy_draw_started

signal player_turn_started
signal enemy_turn_started

func set_phase(value: Phases):
	current_phase = value
	match value:
		Phases.StartPhase:
			emit_signal("start_phase_started")
		Phases.DrawPhase:
			emit_signal("draw_phase_started")
		Phases.ActionPhase:
			emit_signal("action_phase_started")

func set_draw_phase_turn(value: DrawPhaseTurns):
	current_draw = value
	match value:
		DrawPhaseTurns.Player:
			emit_signal("player_draw_started")
		DrawPhaseTurns.Enemy:
			emit_signal("enemy_draw_started")

func set_action_phase_turn(value: ActionPhaseTurns):
	current_turn = value
	match value:
		ActionPhaseTurns.Player: 
			emit_signal("player_turn_started")
		ActionPhaseTurns.Enemy:
			emit_signal("enemy_turn_started")
			



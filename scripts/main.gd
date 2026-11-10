extends Node2D

var bodovi: int = 0
var ukupno: int = 0

@onready var rezultat: Label = $Sucelje/Rezultat
@onready var poruka: Label = $Sucelje/Poruka

func _ready() -> void:
	bodovi = 0
	ukupno = $Predmeti.get_child_count()
	rezultat.text = "KRISTALI: %d / %d" % [bodovi, ukupno]
	poruka.text = "Pokupi sve kristale!"

	for predmet in $Predmeti.get_children():
		predmet.skupljen.connect(_na_predmet_skupljen)

func _na_predmet_skupljen() -> void:
	bodovi += 1
	rezultat.text = "KRISTALI: %d / %d" % [bodovi, ukupno]
	print("Skupljen kristal: ", bodovi, "/", ukupno)
	if bodovi == ukupno:
		poruka.text = "Bravo! Skupio si sve kristale!"

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ponovno"):
		get_tree().reload_current_scene()

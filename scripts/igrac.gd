extends CharacterBody2D

@export var brzina: float = 270.0

func _ready() -> void:
    # Pocetno stanje igraca i oznaka za skupljanje predmeta.
    velocity = Vector2.ZERO
    add_to_group("igrac")

func _physics_process(_delta: float) -> void:
    # Input.get_vector normalizira dijagonalno kretanje.
    var smjer: Vector2 = Input.get_vector("lijevo", "desno", "gore", "dolje")
    velocity = smjer * brzina
    move_and_slide()

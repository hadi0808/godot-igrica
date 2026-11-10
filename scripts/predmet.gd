extends Area2D

signal skupljen

@export var brzina_rotacije: float = 1.5
var pokupljen: bool = false

func _ready() -> void:
    pokupljen = false
    body_entered.connect(_na_ulazak)

func _process(delta: float) -> void:
    $Slika.rotation += brzina_rotacije * delta

func _na_ulazak(tijelo: Node2D) -> void:
    if pokupljen or not tijelo.is_in_group("igrac"):
        return
    pokupljen = true
    skupljen.emit()
    queue_free()

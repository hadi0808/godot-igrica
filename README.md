# Skupljac kristala

Jednostavna 2D igra napravljena u Godotu 4. Cilj je pokupiti sva cetiri zuta kristala u razini. Zelenog igraca zaustavljaju sivi zidovi (`StaticBody2D`), dok kroz zute kristale (`Area2D`) moze proci. Svaki kristal pri dodiru nestane, poveca broj skupljenih kristala i ispise poruku. Nakon sva cetiri pojavljuje se cestitka.

## Upravljanje

- **W / strelica gore**: gore
- **A / strelica lijevo**: lijevo
- **S / strelica dolje**: dolje
- **D / strelica desno**: desno
- **R**: ponovno pokretanje igre

## Pokretanje

1. Pokreni **Godot 4**.
2. Klikni **Import** i odaberi `project.godot` iz ove mape.
3. Pokreni igru tipkom **F5**.

## Ustroj

- `scenes/main.tscn` - razina s igracem, zidovima, kristalima i brojacem
- `scenes/igrac.tscn` - zasebna scena igraca, `CharacterBody2D` i `CollisionShape2D`
- `scenes/predmet.tscn` - zasebna scena predmeta, `Area2D` i `CollisionShape2D`
- `scripts/igrac.gd` - brzina s `@export`, `_ready`, `Input.get_vector`, `velocity` i `move_and_slide()` u `_physics_process`
- `scripts/predmet.gd` - `body_entered` signal, skupljanje i nestajanje predmeta
- `scripts/main.gd` - brojac i poruka
- `project.godot` - imenovane radnje u Input Map

Za grafiku su upotrijebljeni obojeni pravokutnici, bez vanjskih slika. Datoteke `.godot/` i izvezene igre iskljucene su iz repozitorija preko `.gitignore`.

extends Control

# Declare variables for the components
@onready var texture_rect = $Vertical/TextureRect
@onready var name_label = $Vertical/NameLabel
@onready var hp_label = $Vertical/StatsContainer/HPLabel
@onready var mana_label = $Vertical/StatsContainer/ManaLabel
@onready var force_label = $Vertical/StatsContainer/ForceLabel
@onready var int_label = $Vertical/StatsContainer/IntLabel

var images = [
	"res://scenes_2/character_cards/52921841_p0.png",
	"res://scenes_2/character_cards/koish_pfp.jpg",
	"res://scenes_2/character_cards/new-pfp.png",
	"res://scenes_2/character_cards/pfp1.jpg",
	"res://scenes_2/character_cards/pfp.jpg"
]

func _ready():
	set_character()

func set_character():
	var chosen_image_path = images[randi() % images.size()]
	var chosen_image = load(chosen_image_path)
	texture_rect.texture = chosen_image

	name_label.text = generate_random_name()
	hp_label.text = "HP: %d" % randi_range(50, 100)
	mana_label.text = "Mana: %d" % randi_range(20, 80)
	force_label.text = "Force: %d" % randi_range(10, 50)
	int_label.text = "Intelligence: %d" % randi_range(10, 50)

func generate_random_name() -> String:
	var names = ["Aragorn", "Legolas", "Gimli", "Gandalf", "Frodo", "Samwise"]
	return names[randi() % names.size()]

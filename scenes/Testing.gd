extends Node

func _ready():
	var levelJSON = load("res://assets/levels/TestLevel.tres");
	var level = Level.new();
	level.loadIn(levelJSON);
	level.areas[0].loadIn(self);
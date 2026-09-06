event_inherited()

config()
text = "Fullscreen"

ini_open("save.ini")
	
	on = ini_read_real("config", "fullscreen", 1)
	
ini_close()

event_inherited()

config()
text = "Show Mouse"
ini_open("save.ini")
	
	on = ini_read_real("config", "mouse", 1)
	
ini_close()

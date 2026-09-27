x = obj_cam.x 
y = obj_cam.y + camera_get_view_height(view_camera[0])/2.7

if image_xscale <= xscale image_xscale += .2

if alarm[0] < 1{
	
	image_alpha -= .1
	
}

if image_alpha <= 0 instance_destroy()

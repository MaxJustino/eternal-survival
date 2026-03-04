if (instance_exists(oPlayer)){
		x = lerp (x, oPlayer.x-camera_widht/2, .2) ;
		y = lerp (y, oPlayer.y-10-camera_heidht/2, .2); // Para Centralizar no meio do oPlayer quando estiver no meio por isso o -10
		
}

camera_set_view_pos(view_camera[0],x,y);
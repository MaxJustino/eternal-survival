var _border = 32 // MELHORIA NO CÓDIGO


if (y < oCamera.y-_border) {
		y = oCamera.y+oCamera.camera_heidht+_border;
		
}

if (y > oCamera.y+oCamera.camera_heidht+_border){
	y = oCamera.y-_border;
	
}




if (x < oCamera.x-_border) {
		x = oCamera.x+oCamera.camera_widht+_border
			
}

if (x > oCamera.x+oCamera.camera_widht+_border) {
		x = oCamera.x-_border;
	
}

dir = point_direction(x,y,oPlayer.x,oPlayer.y-10);
move_x = lengthdir_x(spd,dir)
move_y = lengthdir_y(spd,dir)

image_xscale = sign (move_x) // Fazendo o inimigo se mover na direção do jogador 

x+=move_x;
y+=move_y;

depth = -y; // Otimizando a posição dos monstros
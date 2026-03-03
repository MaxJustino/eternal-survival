hori_move = keyboard_check(vk_right) - keyboard_check(vk_left) //Movimento Horizontal
vert_move = keyboard_check(vk_down) - keyboard_check(vk_up) // Movimento Vertical 

if (hori_move != 0 or vert_move !=0){
	
	if(sprite_index != sPlayerWalk){
		sprite_index = sPlayerWalk;
		image_index = 0;
	}
	if (hori_move != 0){
		
	image_xscale = hori_move;
	}
	
	/*	O objeto oPlayer anda mais rápido na de agonal por conta do teorema de pitágoras. a² = b² + c² 
                                                                                      a² = 1² + 1²
																					  a² V2
																					  a = 1.41 = 1.41 PIXELS! */
	var _dir = point_direction(0,0,hori_move,vert_move); 

	hori_x = lengthdir_x(2,_dir);
	vert_y = lengthdir_y(2,_dir);

	x+= hori_x; // Indicando o valor da variavel x como movimentação Horizontal
	y+= vert_y; // Indicando o valor da variavel y como movimentação Vertical
}else{
	if (sprite_index != sPlayerIdle){
		sprite_index = sPlayerIdle;
		image_index = 0;
	}


																	
}


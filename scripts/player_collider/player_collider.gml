function player_collider() {
	//Collisions
	if (collision(x + moveX, y)) {
		while (!collision(x + sign(moveX), y)) {
			x += sign(moveX);
		}
	
		moveX = 0;
	}

	if (collision(x, y + moveY)) {
		while (!collision(x, y + sign(moveY))) {
			y += sign(moveY);
		}
	
		moveY = 0;
	}


}

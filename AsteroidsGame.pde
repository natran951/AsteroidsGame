Spaceship bob = new Spaceship();
Star[] stars = new Star[125];

public void setup(){
	size(600,600);
	for (int i = 0; i < stars.length; i++) {
		stars[i] = new Star();
	}
}
public void draw(){
	background(0);
  	bob.show();
  	bob.move();
  	for (int i = 0; i < stars.length; i++) {
  		stars[i].show();
  	}
}

public void keyPressed() {
	if(key == CODED) {
		if (keyCode == LEFT) {
			double nowP = bob.getPointDirection();
      		bob.turn(-5);
    	}
   		else if(keyCode == RIGHT) {
      		double nowP = bob.getPointDirection();
      		bob.turn(5);
    	}
    	if (keyCode == UP) {
    		bob.accelerate(0.4);
    	}
    	if (keyCode == DOWN) { // slow down to 0 spd plz
    		if (bob.getDirectionX() > 1 || bob.getDirectionY() > 1) {
    			bob.accelerate(-0.55);
    		}
    		else if ((bob.getDirectionX() < 1 && bob.getDirectionX() > 0) || (bob.getDirectionY() < 1 && bob.getDirectionY() > 0)) {
    			if (bob.getDirectionX() < 1 && bob.getDirectionX() > 0) {
    				bob.setDirectionX(0);
    			}
    			if (bob.getDirectionY() < 1 && bob.getDirectionY() > 0) {
    				bob.setDirectionY(0);
    			}
    		}
    		if (bob.getDirectionX() < -1 || bob.getDirectionY() < -1) {
    			bob.accelerate(-0.55);
    		}
    		else if ((bob.getDirectionY() > -1 && bob.getDirectionY() < 0) || (bob.getDirectionX() > -1 && bob.getDirectionX() < 0)) {
    			if (bob.getDirectionX() > -1 && bob.getDirectionX() < 0) {
    				bob.setDirectionX(0);
    			}
    			if (bob.getDirectionY() > -1 && bob.getDirectionY() < 0) {
    				bob.setDirectionY(0);
    			}
    		}
    	}
    	if (keyCode == CONTROL) {
    		bob.hyperspace();
    	}
    }
}
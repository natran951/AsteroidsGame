class Asteroid extends Floater {
	private int rotation;
	Asteroid() {
		rotation = (int)(Math.random() * 3 + 1);
		corners = 18;
		int[] xS = {0, 5, 15, 13, 10, 15, 12, 3, 0, -5, -2, -10, -10, -15, -18, -10, -10, -5};
		int[] yS = {-20, -15, -12, -5, 0, 0, 12, 7, 16, 14, 15, 0, 10, 3, 0, -5, -15, -10};
		xCorners = xS;
		yCorners = yS;
		myColor = color(78, 81, 86);
    	myCenterX = (Math.random() * 600);
    	myCenterY = (Math.random() * 600);
    	myPointDirection = (Math.random() * 361);
    	myDirectionX = Math.random() * 4.5 - 2.25;
    	myDirectionY = Math.random() * 4.5 - 2.25;
	}

	public void setX(int x) {
    	myCenterX = x;
  	}
   	public int getX() {
    	return (int)(myCenterX);
  	}
   	public void setY(int y) {
    	myCenterY = y;
  	}
  	public int getY() {
    	return (int)(myCenterY);
  	}
	public void setDirectionX(double x) {
    	myDirectionX = x;
  	}
  	public double getDirectionX() {
    	return myDirectionX;
  	}
  	public void setDirectionY(double y) {
    	myDirectionY = y;
  	}
  	public double getDirectionY() {
    	return myDirectionY;
  	}	
  	public void setPointDirection(int degrees) {
    	myPointDirection = degrees;
  	}
  	public double getPointDirection() {
    	return myPointDirection;
  	}

  	public void move() {
  		// myCenterX += myDirectionX;    
        // myCenterY += myDirectionY;
        // myPointDirection += rotation;
    	super.move();
    	super.turn(rotation);
  	}
}
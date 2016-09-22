Bacteria [] colony;


void setup()   
 {     
 	size(800,800);
 	frameRate(45);
 	colony = new Bacteria[50];
 	for (int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria();
 	}
 	stroke(.05);
}   
void draw()   
 {    
 	background(0);
 	for (int i = 0; i < colony.length; i++) {
 		colony[i].move();
 		colony[i].show();
 	}

} 
void mouseClicked() {
	
	for (int i = 0; i < colony.length; i++) {
		colony[i].myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),200);
		colony[i].myX = (int)(Math.random()*800);
		colony[i].myY = (int)(Math.random()*800);
	}

}
class Bacteria    
 {     
 	int myX, myY, myColor;

 	Bacteria() {
 		myX = 400;
 		myY = 400;
 		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),200);
 	}

 	void move() {
 		if(mouseX < myX) {
 			myX = myX + (int)(Math.random()*19) -15;
 		} else {
 			myX = myX + (int)(Math.random()*19) -5;
 		}
 		if(mouseY < myY) {
 			myY = myY + (int)(Math.random()*19) -15;
 		} else {
 			myY = myY + (int)(Math.random()*19) -5;
 		}


 	}

 	void show() {
 		fill(myColor);
 		ellipse(myX, myY, 15, 15);
 	}
}    
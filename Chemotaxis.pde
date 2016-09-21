 //declare bacteria variables here   
Bacteria [] colony;

void setup()   
 {     
 	size(800,800);
 	frameRate(10);
 	colony = new Bacteria[5];
 	for (int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria();
 	}
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
	colony.myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
class Bacteria    
 {     
 	int myX, myY, myColor;

 	Bacteria() {
 		myX = 400;
 		myY = 400;
 		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
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
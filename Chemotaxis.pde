 //declare bacteria variables here   
Bacteria [] colony;

void setup()   
 {     
 	size(800,800);
 	frameRate(5);
 	colony = new Bacteria[3];
}   
void draw()   
 {    
 	background(155);
 	for (int i = 0; i < colony.length; i++) {
 		colony[i] = new Bacteria();
 		colony[i].move();
 		colony[i].show();
 	}
 	//for (int i = 0; i < colony.length; i++) {
 	//	colony[i].move();
 	//	colony[i].show();
 	//}

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
 		myX = myX + (int)(Math.random()*59) -20;
 		myY = myY + (int)(Math.random()*59) -20;
 	}

 	void show() {
 		fill(myColor);
 		ellipse(myX, myY, 15, 15);
 	}
}    
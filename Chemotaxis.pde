 //declare bacteria variables here   
 void setup()   
 {     
 	size(800,800);  
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor

 	Bacteria() {
 		myX = 400;
 		myY = 400;
 		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	}
 }    
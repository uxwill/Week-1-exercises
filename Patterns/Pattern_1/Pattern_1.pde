/*
 * This program fills the display window with overlapping circles.
 * Incrementing each on the x and y axis based in the circle size.
 * This makes it easy to change the pattern by the circle size.
 * Which also changes the number of loops in 'repeats' variable.
 * 
 */
int x = 0;
int y = 25;
int mySize = 10;
int repeats = 0;

void setup() {
  size(700, 700);
  smooth();
  background(255);
  frameRate(5);
  
 
  
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(3);
  ellipseMode(CENTER);
  
  
    int a = 0;
int b = 255;
  
  repeats = width/mySize+1;

  for (int i = 0; i < repeats; i++) { 
    for (int j = 0; j < repeats; j++) {
     ellipse(mySize+x, 0+y, mySize, mySize);
    
      x = x + mySize;
      
    float R = random(a,b);
    float G = random(a,b);
    float B = random(a,b); 
   

      fill(R,G,B);
      noStroke();
    
    if (keyPressed == true && key=='r') {
        fill(R,random(0,100),random(0,100));
  }  
  
    if (keyPressed == true && key=='g') {
        fill(random(0,100),G,random(0,100));
  }  
  
    if (keyPressed == true && key=='b') {
        fill(random(0,100),random(0,100),B);
  }  
      
    }
    //fill(check your x's and y's);
    y = y + mySize;
    x = 0;
   
  }
  y = 0;
  
    if (keyPressed == true && key=='s') {
    saveFrame("yourName.jpg");
  }
  

  
}


/*ellipse(25,25,50,50);
 ellipse(75,25,50,50);
 ellipse(125,25,50,50);
 
 ellipse(0,50,50,50);
 ellipse(50,50,50,50);
 ellipse(100,50,50,50);*/

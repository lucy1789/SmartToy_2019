import processing.serial.*;

Serial myPort; 



String keyDisp;
void setup() {
  
  size(800, 600);
  // List all the available serial ports
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  //myPort = new Serial(this, Serial.list()[1], 9600); 
  myPort = new Serial(this, Serial.list()[0], 9600);
//Use [0] When I use a notebook, because there is only one port.
//When I run it, the number goes up.
  
  keyDisp = "-";
}
void draw() {
  
  background(255);  
  fill(0);
  
  String buf = String.format("cnt : %d", frameCount);
  text(buf, 20,20);
  //int i = frameCount % 255;
  
 
  text(keyDisp, 20,40);
  
  
  
}



void keyPressed() {
  
    keyDisp = String.format("%c", key);
    
    myPort.write(key);
  
}

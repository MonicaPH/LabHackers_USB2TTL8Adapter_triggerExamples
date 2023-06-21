import processing.serial.*;

Serial myPort;  // Create object from Serial class
boolean sent = false; // Keep track if "first message" was sent or not

void setup() 
{
  size(200, 200); // create a small window
  myPort = new Serial(
    this,
    "/dev/tty.usbmodem107219401", // ### ADJUST THIS ACCORDING TO YOUR PC ###
    128000 // lab hackers USB2TTL8 baudRate
  );
}

void draw() {
  background(255);
  if (mouseOverRect() == true) {  // If mouse is over square,
    fill(238, 238, 204);          // change color of rect (drawn later) and
    if (sent == false) {          // if no message was sent yet
      myPort.write("WRITE 255\n");// send a message
      sent = true;                // set sent state
    }
  } 
  else {                        // If mouse is not over square,
    fill(0);                    // change color of rect (drawn later) and
    if (sent == true) {         // if first message was sent
      sent = false;             // reset sent state
      myPort.write("WRITE 0\n");// and send second message
    }
  }
  rect(50, 50, 100, 100);       // Draw a square
}

boolean mouseOverRect() {
  // Test if mouse is over square
  return ((mouseX >= 50) && (mouseX <= 150) && (mouseY >= 50) && (mouseY <= 150));
}

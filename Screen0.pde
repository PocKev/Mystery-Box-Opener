//Screen Index: 0 - Menu
class Screen0 {
  PVector[] buttonPosition;
  boolean[] clicked; //whether or not an individual button is pressed
  boolean clicking; //whether or not any button is pressed
  
  int selection = 0;
  int buttonAmt = 3; //amount of buttons on menu screen (3)
  
  public Screen0() {
    buttonPosition = new PVector[buttonAmt];
    buttonPosition[0] = new PVector(50, 400);
    buttonPosition[1] = new PVector(50, 500);
    buttonPosition[2] = new PVector(50, 600);
    
    clicked = new boolean[buttonAmt];
    clicked[0] = false;
    clicked[1] = false;
    clicked[2] = false;
    clicking = false;
  }
  
  int go() {
    manageButton();
    display();
    
    return selection; //screenNum return
  }
  
  void display() {
    background(50);//changeable background picture
    stroke(218 * 3/4, 237 * 3/4, 254 * 3/4);
    strokeWeight(8);
    rectMode(CORNER);
    
    for (int i = 0; i < buttonAmt; i ++) { //loop for all buttons
      if (clicked[i] == false) { //if button isn't clicked, draw the button normally
        fill(218, 237, 254);
      } else { //if button is clicked, draw the button darker
        fill(218 / 2, 237 / 2, 254 / 2);
      }
      rect(buttonPosition[i].x, buttonPosition[i].y, 450, 80, 25);
    }
    fill(200, 230, 225);
    textSize(20);
    textAlign(LEFT);
    text("MENU", 50, 50); //left margin = 50
    
    textAlign(RIGHT);
    text("Loot Box Game\nDesigned by Kevin and Aris", 1350, 700);
    
    textSize(30);
    textAlign(CORNER);
    fill(0);
    text("\n  Shop", buttonPosition[0].x, buttonPosition[0].y);
    text("\n  Inventory", buttonPosition[1].x, buttonPosition[1].y);
    text("\n  Play", buttonPosition[2].x, buttonPosition[2].y);
  }
  
  void manageButton() { //graphic control
    if (clicking == true) {
      if (mouseX > 50 && mouseX < 500) {
        if (mouseY > 400 && mouseY < 480) { //if button 1 is pressed
          clicked[0] = true;
        } else clicked[0] = false;
        if (mouseY > 500 && mouseY < 580) { //if button 2 is pressed
          clicked[1] = true;
        } else clicked[1] = false;
        if (mouseY > 600 && mouseY < 680) { //if button 3 is pressed
          clicked[2] = true;
        } else clicked[2] = false;
      } 
      else {
        for (int i = 0; i < buttonAmt; i ++) {
          clicked[i] = false;
        }
      }
    } 
  }
  
  void pressed() {
    if (mouseX > 50 && mouseX < 500) {
      if (mouseY > 400 && mouseY < 480) { 
        clicking = true;
      }
      if (mouseY > 500 && mouseY < 580) {
        clicking = true;
      }
      if (mouseY > 600 && mouseY < 680) {
        clicking = true;
      }
    }
  }
  
  void released() {
    if (clicking == true) {
      if (mouseX > 50 && mouseX < 500) {
        if (mouseY > 400 && mouseY < 480) { //if button 1 is selected
          resetShop();
          selection = 1;
        } 
        if (mouseY > 500 && mouseY < 580) { //if button 2 is selected
          resetOpen();
          selection = 2;
        } 
        if (mouseY > 600 && mouseY < 680) { //if button 3 is selected
          resetGame();
          selection = 3;
        }
      }
    }
    clicking = false;
  }
}

//Screen Index: 1 - Buy Loot
class Screen1 {
  PVector[] buttonPosition;
  boolean[] clicked; //whether or not an individual button is pressed
  boolean clicking; //whether or not any button is pressed
  
  int selection = 1;
  int buttonAmt = 2; //amount of buttons on menu screen (2)
  
  public Screen1() {
    buttonPosition = new PVector[buttonAmt];
    buttonPosition[0] = new PVector(50, 500); //buy button
    buttonPosition[1] = new PVector(1300, 650); //back button
    
    clicked = new boolean[buttonAmt];
    clicked[0] = false;
    clicked[1] = false;
    
    clicking = false;
  }
  
  int go() {
    manageButton();
    display();
    
    return selection;
  }
  
  void display() {
    background(50, 25, 50);//changeable background picture
    stroke(218 * 3/4, 237 * 3/4, 254 * 3/4);
    strokeWeight(8);
    rectMode(CORNER);
    
    if (clicked[0] == false) { //if button isn't clicked, draw the button normally
      fill(218, 237, 254);
    } else { //if button is clicked, draw the button darker
      fill(218 / 2, 237 / 2, 254 / 2);
    }
    rect(buttonPosition[0].x, buttonPosition[0].y, 450, 80, 25);
    if (clicked[1] == false) { //if button isn't clicked, draw the button normally
      fill(218, 237, 254);
    } else { //if button is clicked, draw the button darker
      fill(218 / 2, 237 / 2, 254 / 2);
    }
    rect(buttonPosition[1].x, buttonPosition[1].y, 80, 80, 25);
    
    fill(200, 230, 225);
    textSize(20);
    textAlign(LEFT);
    text("SHOP", 50, 50); //left margin = 50
    
    textSize(30);
    textAlign(CORNER);
    fill(0);
    text("\n  Purchase 1 Chance Box", buttonPosition[0].x, buttonPosition[0].y);
    noStroke();
    triangle(1320, 690, 1360, 660, 1360, 720);
  }
  
  void manageButton() { //graphic control
    if (clicking == true) {
      if (mouseX > 50 && mouseX < 500 && mouseY > 500 && mouseY < 580) {
        clicked[0] = true;
      } else clicked[0] = false;
      if (mouseX > 1300 && mouseX < 1380 && mouseY > 650 && mouseY < 730) {
        clicked[1] = true;
      } else clicked[1] = false;
    } 
  }
  
  void buy() {
    System.out.println("buy");
  }
  
  void pressed() {
    if (mouseX > 50 && mouseX < 500 && mouseY > 500 && mouseY < 580) {
      clicking = true;
    }
    if (mouseX > 1300 && mouseX < 1380 && mouseY > 650 && mouseY < 730) {
      clicking = true; 
    }
  }
  
  void released() {
    if (clicking == true) {
      if (mouseX > 1300 && mouseX < 1380 && mouseY > 650 && mouseY < 730) {
        resetMenu();
        selection = 0; 
      }
      if (mouseX > 50 && mouseX < 500 && mouseY > 500 && mouseY < 580) {
        buy();
        clicked[0] = false;
      }
    }
    clicking = false;
  }
}

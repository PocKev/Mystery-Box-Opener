//Screen Index: 2 - Open Loot
class Screen2 {
  PVector[] buttonPosition;
  boolean[] clicked; //whether or not an individual button is pressed
  boolean clicking; //whether or not any button is pressed
  int selection = 2;
  int buttonAmt = 2;
  
  Loot loot;
  String result, rarity;
  int x, y;
  float randNumber;
  boolean activating = false;
  int startAct = 0;
  
  public Screen2(){
    buttonPosition = new PVector[buttonAmt];
    buttonPosition[0] = new PVector(50, 400);
    buttonPosition[1] = new PVector(1300, 650); //back button
    
    clicked = new boolean[buttonAmt];
    clicked[0] = false;
    clicked[1] = false;
    clicking = false;
  }
  
  int go() {
    manageButton();
    if (!activating) {
      display();
    }
    else { //if loot box is activating
      runOpen();
    }
    return selection;
  }
  
  void display() {
    background(25, 50, 35);
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
    text("YOUR LOOT", 50, 50);
    textAlign(CORNER);
    textSize(30);
    fill(0);
    text("\n  Open 1 Chance Box", buttonPosition[0].x, buttonPosition[0].y);
    
    noStroke();
    triangle(1320, 690, 1360, 660, 1360, 720);
  } //----------------------------------------------------------------------------------------------------
  
  void runOpen() { //runs continuously if activating, eventually include animation
    background(25, 50, 35);
    textSize(30);
    fill(255);
    textAlign(CENTER);
    text("You got " + rarity + ": " + result + "!", width / 2, height / 2);
    
    if (millis() - startAct > 1000) {
      activating = false;
    } //stop activating
  }
  
  void activate() { //opens a lootbox
    loot = new Loot();
    activating = true;
    randNumber = random(1, 100);
    startAct = millis();
    
    if (randNumber > 0 && randNumber <= 35) { //choose rare 35%
      x = int(random(loot.rareGearName.length));
      y = int(random(loot.rareGearName[x].length));
      result = loot.rareGearName[x][y];
      rarity = "Rare";
      player.rareGearAmt[x][y] += 1; //add one; this saves data into player object
    }
    else if (randNumber > 35 && randNumber <= 50) { //choose epic 15%
      x = int(random(loot.epicGearName.length));
      y = int(random(loot.epicGearName[x].length));
      result = loot.epicGearName[x][y];
      rarity = "Epic";
      player.epicGearAmt[x][y] += 1; //add one; this saves data into player object
    }
    else if (randNumber > 50 && randNumber <= 55) { //choose shadow 5%
      x = int(random(loot.shadowGearName.length));
      y = int(random(loot.shadowGearName[x].length));
      result = loot.shadowGearName[x][y];
      rarity = "Shadow";
      player.shadowGearAmt[x][y] += 1; //add one; this saves data into player object
    }
    else if (randNumber > 55 && randNumber <= 56) { //choose stellar 1%
      x = int(random(loot.stellarGearName.length));
      y = int(random(loot.stellarGearName[x].length));
      result = loot.stellarGearName[x][y];
      rarity = "Stellar";
      player.stellarGearAmt[x][y] += 1; //add one; this saves data into player object
    }
    else {
      x = int(random(loot.commonGearName.length));
      y = int(random(loot.commonGearName[x].length));
      result = loot.commonGearName[x][y];
      rarity = "Common";
      player.commonGearAmt[x][y] += 1; //add one; this saves data into player object
    }
    System.out.println(rarity + " " + result + " " + x + " " + y + " " + randNumber); //System test
    
    savePlayer();
  } //----------------------------------------------------------------------------------------------------
  
  void manageButton() { //graphic control
    if (clicking == true) {
      if (mouseX > 50 && mouseX < 500 && mouseY > 400 && mouseY < 480) {
        clicked[0] = true;
      } else clicked[0] = false;
      if (mouseX > 1300 && mouseX < 1380 && mouseY > 650 && mouseY < 730) {
        clicked[1] = true;
      } else clicked[1] = false;
    } 
  }
  
  void pressed() {
    if (!activating) {
      if (mouseX > 50 && mouseX < 500 && mouseY > 400 && mouseY < 480) {
        clicking = true;
      }
      if (mouseX > 1300 && mouseX < 1380 && mouseY > 650 && mouseY < 730) {
        clicking = true; 
      }
    }
  }
  void released() {
    if (clicking == true) {
      if (mouseX > 1300 && mouseX < 1380 && mouseY > 650 && mouseY < 730) {
        resetMenu();
        selection = 0; 
      }
      if (mouseX > 50 && mouseX < 500 && mouseY > 400 && mouseY < 480) {
        //if (player.amt >= 1)... player.amt --;
        activate();
        clicked[0] = false;
      }
    }
    clicking = false;
  }
}

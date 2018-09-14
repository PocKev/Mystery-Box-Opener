/* Loot Box Game by Kevin and Aris
Screen Index:
0: Main menu
1: Buy boxes
2: Open boxes
3: Future Minigame (perhaps)
*/

int screenNum;
Screen0 menu;
Screen1 shop;
Screen2 open;
Screen3 game;

int geartypes = 60; //the amount of total items in Loot
String[] line = new String[geartypes];
String[] common = new String[25]; String[] rare = new String[14]; String[] epic; String[] shadow; String[] stellar;
Profile player;

void setup() {
  size(1440, 800);
  menu = new Screen0();
  shop = new Screen1();
  open = new Screen2();
  game = new Screen3();
  
  screenNum = 0;
  player = new Profile();
  loadPlayer();
}

void draw() {
  switch(screenNum) {
    case 0:
      screenNum = menu.go(); //runs the menu program
      break;
    case 1:
      screenNum = shop.go(); //runs the shop program
      break;
    case 2:
      screenNum = open.go(); //runs the open program
      break;
    case 3:
      screenNum = game.go(); //runs the game program
      break;
    default: System.out.println("error");
  }
}

void mousePressed() {
  switch(screenNum) {
    case 0:
      menu.pressed();
      break;
    case 1:
      shop.pressed();
      break;
    case 2:
      open.pressed();
      break;
    case 3:
      game.pressed();
      break;
    default: System.out.println("error");
  }
}

void mouseReleased() {
  switch(screenNum) {
    case 0:
      menu.released();
      break;
    case 1:
      shop.released();
      break;
    case 2:
      open.released();
      break;
    case 3:
      game.released();
      break;
    default: System.out.println("error");
  }
}

void keyPressed() {
  if (key == ESC) {
    key = 0;
    if (!open.activating) {
      resetMenu();
      resetShop();
      resetOpen();
      resetGame();
      screenNum = 0;
    }
  }
}

// Reset Methods: before allowing program to move to different windows, they must be reset because their selection variable must be reinitialized

void resetMenu() { 
  menu = new Screen0(); //makes menu.selection = 0
}

void resetShop() {
  shop = new Screen1(); //makes shop.selection = 1
}

void resetOpen() {
  open = new Screen2(); //makes open.selection = 2
}

void resetGame() {
  game = new Screen3(); //makes game.selection = 3
}

// Save and Load

void savePlayer() { //save player object data into line.txt
  int lineLocation = 0;
  for (int count = 0; count < player.amtCategory; count ++) { //loop for all commons
    for (int j = 0; j < player.commonGearAmt[count].length; j ++) {
      line[lineLocation] = str(player.commonGearAmt[count][j]);
      //System.out.println(line[lineLocation]);
      lineLocation++;
    }
  }
  for (int count = 0; count < player.amtCategory; count ++) { //loop for all rares
    for (int j = 0; j < player.rareGearAmt[count].length; j ++) {
      line[lineLocation] = str(player.rareGearAmt[count][j]);
      //System.out.println(line[lineLocation]);
      lineLocation++;
    }
  }
  for (int count = 0; count < player.amtCategory; count ++) { //loop for all epics
    for (int j = 0; j < player.epicGearAmt[count].length; j ++) {
      line[lineLocation] = str(player.epicGearAmt[count][j]);
      //System.out.println(line[lineLocation]);
      lineLocation++;
    }
  }
  for (int count = 0; count < player.amtCategory; count ++) { //loop for all shadows
    for (int j = 0; j < player.shadowGearAmt[count].length; j ++) {
      line[lineLocation] = str(player.shadowGearAmt[count][j]);
      //System.out.println(line[lineLocation]);
      lineLocation++;
    }
  }
  for (int count = 0; count < player.amtCategory; count ++) { //loop for all stellars
    for (int j = 0; j < player.stellarGearAmt[count].length; j ++) {
      line[lineLocation] = str(player.stellarGearAmt[count][j]);
      //System.out.println(line[lineLocation]);
      lineLocation++;
    }
  }
  
  saveStrings("profile.txt", line);
}

void loadPlayer() {
  line = loadStrings("profile.txt");
  
  int lineLocation = 0;
  for (int count = 0; count < player.amtCategory; count ++) { //loop for all commons
    for (int j = 0; j < player.commonGearAmt[count].length; j ++) {
      player.commonGearAmt[count][j] = int(line[lineLocation]);
      //System.out.println(line[lineLocation]);
      lineLocation++;
    }
  }
  for (int count = 0; count < player.amtCategory; count ++) { //loop for all rares
    for (int j = 0; j < player.rareGearAmt[count].length; j ++) {
      player.rareGearAmt[count][j] = int(line[lineLocation]);
      //System.out.println(line[lineLocation]);
      lineLocation++;
    }
  }
  for (int count = 0; count < player.amtCategory; count ++) { //loop for all epics
    for (int j = 0; j < player.epicGearAmt[count].length; j ++) {
      player.epicGearAmt[count][j] = int(line[lineLocation]);
      //System.out.println(line[lineLocation]);
      lineLocation++;
    }
  }
  for (int count = 0; count < player.amtCategory; count ++) { //loop for all shadows
    for (int j = 0; j < player.shadowGearAmt[count].length; j ++) {
      player.shadowGearAmt[count][j] = int(line[lineLocation]);
      //System.out.println(line[lineLocation]);
      lineLocation++;
    }
  }
  for (int count = 0; count < player.amtCategory; count ++) { //loop for all stellars
    for (int j = 0; j < player.stellarGearAmt[count].length; j ++) {
      player.stellarGearAmt[count][j] = int(line[lineLocation]);
      //System.out.println(line[lineLocation]);
      lineLocation++;
    }
  }
}

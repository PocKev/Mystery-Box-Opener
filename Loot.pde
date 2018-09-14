class Loot {
  int amtCategory = 4;
  /*
  0 - headGear  [0][n]
  1 - tops      [1][n]
  2 - legGear   [2][n]
  3 - footwear  [3][n]
  */
  
  String[][] commonGearName; //stores list of common names
  String[][] rareGearName; //stores list of rare names
  String[][] epicGearName; //stores list of epic names
  String[][] shadowGearName; //stores list of shadow names
  String[][] stellarGearName; //stores list of stellar names
  
  public Loot() {
    callCommon();
    callRare();
    callEpic();
    callShadow();
    callStellar();
  }
  
  void callCommon() {
    commonGearName = new String[amtCategory][];
    
    commonGearName[0] = new String[6]; 
    commonGearName[0][0] = "Pirate Hat";
    commonGearName[0][1] = "Baseball Cap";
    commonGearName[0][2] = "Nerd Glasses";
    commonGearName[0][3] = "Common Helmet 3";
    commonGearName[0][4] = "Common Helmet 4";
    commonGearName[0][5] = "Common Helmet 5";
    
    commonGearName[1] = new String[8]; 
    commonGearName[1][0] = "White Tank Top";
    commonGearName[1][1] = "Christmas Sweater";
    commonGearName[1][2] = "Red T-Shirt";
    commonGearName[1][3] = "Common Jacket 3";
    commonGearName[1][4] = "Common Jacket 4";
    commonGearName[1][5] = "Common Jacket 5";
    commonGearName[1][6] = "Common Jacket 6";
    commonGearName[1][7] = "Common Jacket 7";
    
    commonGearName[2] = new String[6]; 
    commonGearName[2][0] = "Beach Shorts";
    commonGearName[2][1] = "Cargo Shorts";
    commonGearName[2][2] = "Baggy Jeans";
    commonGearName[2][3] = "Common Pants 3";
    commonGearName[2][4] = "Common Pants 4";
    commonGearName[2][5] = "Common Pants 5";
    
    commonGearName[3] = new String[6]; 
    commonGearName[3][0] = "Pink Socks";
    commonGearName[3][1] = "Work Boots";
    commonGearName[3][2] = "White Sneakers";
    commonGearName[3][3] = "Common Shoes 3";
    commonGearName[3][4] = "Common Shoes 4";
    commonGearName[3][5] = "Common Shoes 5";
  }
  
  void callRare() {
    rareGearName = new String[amtCategory][];
    
    rareGearName[0] = new String[4];
    rareGearName[0][0] = "Ski Goggles";
    rareGearName[0][1] = "Gray Beanie";
    rareGearName[0][2] = "Rare Helmet 2";
    rareGearName[0][3] = "Rare Helmet 3";
    
    rareGearName[1] = new String[4];
    rareGearName[1][0] = "Leather Jacket";
    rareGearName[1][1] = "Black V-Neck";
    rareGearName[1][2] = "Rare Jacket 2";
    rareGearName[1][3] = "Rare Jacket 3";
    
    rareGearName[2] = new String[3];
    rareGearName[2][0] = "Gray Jeans";
    rareGearName[2][1] = "Ski Pants";
    rareGearName[2][2] = "Red Skirt";
    
    rareGearName[3] = new String[3];
    rareGearName[3][0] = "Flats";
    rareGearName[3][1] = "Dress Boots";
    rareGearName[3][2] = "Black Sneakers";
  }
  
  void callEpic() {
    epicGearName = new String[amtCategory][];
    
    epicGearName[0] = new String[2];
    epicGearName[0][0] = "Pan";
    epicGearName[0][1] = "Epic Helmet 1";
    
    epicGearName[1] = new String[2];
    epicGearName[1][0] = "Epic Jacket 0";
    epicGearName[1][1] = "Epic Jacket 1";
    
    epicGearName[2] = new String[2];
    epicGearName[2][0] = "Epic Pants 0";
    epicGearName[2][1] = "Epic Pants 1";
    
    epicGearName[3] = new String[2];
    epicGearName[3][0] = "Epic Shoes 0";
    epicGearName[3][1] = "Epic Shoes 1";
  }
  
  void callShadow() {
    shadowGearName = new String[amtCategory][];
    
    shadowGearName[0] = new String[2];
    shadowGearName[0][0] = "Shadow Helmet 0";
    shadowGearName[0][1] = "Shadow Helmet 1";
    
    shadowGearName[1] = new String[2];
    shadowGearName[1][0] = "Shadow Jacket 0";
    shadowGearName[1][1] = "Shadow Jacket 1";
    
    shadowGearName[2] = new String[2];
    shadowGearName[2][0] = "Shadow Pants 0";
    shadowGearName[2][1] = "Shadow Pants 1";
    
    shadowGearName[3] = new String[2];
    shadowGearName[3][0] = "Shadow Sheos 0";
    shadowGearName[3][1] = "Shadow Shoes 1";
  }
  
  void callStellar() {
    stellarGearName = new String[amtCategory][];
    
    stellarGearName[0] = new String[1];
    stellarGearName[0][0] = "Stellar Helmet 0";
    
    stellarGearName[1] = new String[1];
    stellarGearName[1][0] = "Stellar Jacket 0";
    
    stellarGearName[2] = new String[1];
    stellarGearName[2][0] = "Stellar Pants 0";
    
    stellarGearName[3] = new String[1];
    stellarGearName[3][0] = "Stellar Shoes 0";
  }
  
  /*
  The randomization system will make each obtaining from each category equally probable, no matter the amount of items in each category.
  Each item within each category has an equal probability of being selected.
  
  Stellar: 1%
  Shadow: 5%
  Epic: 15%
  Rare: 35%
  Common: rest%
  */
  
}

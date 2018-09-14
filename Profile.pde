class Profile {
  String playerName;
  int amtCategory = 4; //same as class Loot
  
  int[][] commonGearAmt; //the amount of gear
  int[][] rareGearAmt;
  int[][] epicGearAmt;
  int[][] shadowGearAmt;
  int[][] stellarGearAmt;
  
  public Profile() {
    callCommon();
    callRare();
    callEpic();
    callShadow();
    callStellar();
  }
  
  void callCommon() { //note importance: all the arrays have the same length as the corresponding ones in class Loot
    commonGearAmt = new int[amtCategory][];
    
    commonGearAmt[0] = new int[6]; //common Helmets (6)
    commonGearAmt[1] = new int[8]; //common Jackets (8)
    commonGearAmt[2] = new int[6]; //common Pants (6) 
    commonGearAmt[3] = new int[6]; //common Shoes (6) 
    
  }
  
  void callRare() {
    rareGearAmt = new int[amtCategory][];
    
    rareGearAmt[0] = new int[4];
    rareGearAmt[1] = new int[4];
    rareGearAmt[2] = new int[3];
    rareGearAmt[3] = new int[3];
  }
  
  void callEpic() {
    epicGearAmt = new int[amtCategory][];
    
    epicGearAmt[0] = new int[2];
    epicGearAmt[1] = new int[2];
    epicGearAmt[2] = new int[2];
    epicGearAmt[3] = new int[2];
  }
  
  void callShadow() {
    shadowGearAmt = new int[amtCategory][];
    
    shadowGearAmt[0] = new int[2];
    shadowGearAmt[1] = new int[2];
    shadowGearAmt[2] = new int[2];
    shadowGearAmt[3] = new int[2];
  }
  
  void callStellar() {
    stellarGearAmt = new int[amtCategory][];
    
    stellarGearAmt[0] = new int[1];
    stellarGearAmt[1] = new int[1];
    stellarGearAmt[2] = new int[1];
    stellarGearAmt[3] = new int[1];
  }
}

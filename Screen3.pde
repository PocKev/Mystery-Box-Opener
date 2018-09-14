//Screen Index: 3 - Game
class Screen3 {
  
  int selection = 3;
  
  public Screen3() { //return using ESC key
    
  }
  
  int go() {
    display();
    return selection;
  }
  
  void display() {
    background(50, 35, 20);
  }
  
  void pressed() {
    
  }
  
  void released() {
    
  } 
}

public class Creature {
  Creature c1;
  public PVector pos, vel;
  public int speed = 5;
  public int hp = 700;
  public final int SIZE = 25;
  public final color COLOR = color(255,255,255);
  public boolean active = true;



  public Creature(int x, int y) {
    pos = new PVector(x, y);
  }
   
            
            
            
  public void show() {
    fill(COLOR);
    System.out.println(this.hp);
    circle(pos.x, pos.y, SIZE);
     if( this.active == true){
            hp -=1;
            if (this.hp == 0)
        this.active = false;
    }
  }

  public void move() {
    vel = PVector.random2D().mult(speed);          
    pos.add(vel);
  }

  public void collides(Food f1) {
    //if laser and wp overlap
    if (this.pos.x >= f1.pos.x
      && this.pos.x <= f1.pos.x +f1.SIZE
      && this.pos.y >= f1.pos.y
      && this.pos.y <= f1.pos.y + f1.SIZE) {
      f1.active = false;
      hp += 30;
      
       
          
    }
  }
}

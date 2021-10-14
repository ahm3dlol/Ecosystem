public class Food {
  Food f1;
  public PVector pos;
  public final int SIZE = 10;
  public final color COLOR = color(44, 34, 230);
  public int health = (int)random(1, 5);
  public boolean active = true;

  public Food(int x, int y) {
    pos = new PVector(x, y);
  }

  public void show() {
    fill(COLOR);
    circle(pos.x, pos.y, SIZE);
   
  }
}

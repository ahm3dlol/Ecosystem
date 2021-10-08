Creature c1;
Food[] f1 = new Food[10];
public void setup() {
  size(800, 800);
  c1 = new Creature(300, 300);
  spawnFood();
}

public void draw() {
  background(220);
  c1.show();
  c1.move();
  for (int i = 0; i < f1.length; i++) {
    if (f1[i].active == false)
      continue;
    f1[i].show();
  }
}

private void spawnFood() {
  for (int i = 0; i < f1.length; i++) {
    f1[i] = new Food((int)(Math.random()*width), (int)(Math.random()*height));
  }
}

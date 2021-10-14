Creature[] c1 = new Creature[10];
int x;
int y;
int vx, vy;
Food[] f1 = new Food[75];
public void setup() {
  size(800, 800);
  spawnCreature();
  spawnFood();
  x = 20;
  y = 25;
  vx= 3;
  vy = 4;
}

public void draw() {
  background(0);
  for (int i = 0; i < c1.length; i++) {
    if (c1[i].active == false)
      continue;
      if (c1[i].active){
        c1[i].show();
      }
    c1[i].move();
    for (int j = 0; j < f1.length; j++) {
      Food onef1 = f1 [j];
      c1[i].collides(onef1);
    }
    
  }
  for (int j = 0; j < f1.length; j++) {
      if (f1[j].active)
        f1[j].show();
}
}

private void spawnFood() {
  for (int i = 0; i < f1.length; i++) {
    f1[i] = new Food((int)(Math.random()*width), (int)(Math.random()*height));
  }
}
private void spawnCreature() {
  for (int i = 0; i < c1.length; i++) {
    c1[i] = new Creature((int)(Math.random()*width), (int)(Math.random()*height));
  }
}

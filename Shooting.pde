class Shooting {
  Shooting() {
    bullet =new ArrayList<Bullet>();
  }
  float X, Y;
  ArrayList<Bullet> bullet;
  void output() {
    for (int i=0; i<bullet.size(); i++) {
      bullet.get(i).output();
      bullet.get(i).update(0.5, 0);
    }
  }
}

class Bullet {
  Bullet() {
    object = new Object();
  }

  Object object;

  int X, Y;
  PImage BEAM;

  void output() {
    object.Ball(random(width/2, width), random(height/2, height), 12.3, 12.3, 200, 200, 200);
  }
  void update(float speedX, float speedY) {
    X+=speedX;
    Y+=speedY;
  }
}

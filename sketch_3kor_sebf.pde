class Labda {
  float x;
  float y;
  float sugar;
  color szin;

  void rajzold_ki() {
    noStroke();
    fill(szin);
    ellipse(x, y, 2*sugar, 2*sugar);
  }
  void fel(float f) {
    y=y-f;
  }
  void jobbra(float f) {
    x=x+f;
  }
  void le(float f) {
    y=y+f;
  }
  void novekedjen(float f) {
    sugar=sugar+f;
  }
  void csokkenjen() {
    sugar=sugar-1;
  }
  boolean bent_van() {
    if (x>0+sugar && x<500-sugar && y>0+sugar && y<500-sugar) {
      return true;
    } else {
      return false;
    }
  }
}
Labda sarga_labda=new Labda();
Labda zold_labda=new Labda();
Labda kek_labda=new Labda();
void setup() {
  size (500, 500);

  sarga_labda.x=400;
  sarga_labda.y=100;
  sarga_labda.sugar=50;
  sarga_labda.szin=color(#face21);

  zold_labda.x=120;
  zold_labda.y=300;
  zold_labda.sugar=100;
  zold_labda.szin=color(#a1ffc0);

  kek_labda.x=200;
  kek_labda.y=110;
  kek_labda.sugar=70;
  kek_labda.szin=color(#59c1da);
}
void draw() {
  background(#949494);
  sarga_labda.rajzold_ki();
  zold_labda.rajzold_ki();
  kek_labda.rajzold_ki();



  if (sarga_labda.bent_van()) {
    sarga_labda.le(2);
    sarga_labda.novekedjen(0.1);
  }

  if (kek_labda.bent_van()) {
    kek_labda.fel(1);
    kek_labda.novekedjen(0.6);
  }

  if (zold_labda.bent_van()) {
    zold_labda.jobbra(3);
    zold_labda.csokkenjen();
  }
}
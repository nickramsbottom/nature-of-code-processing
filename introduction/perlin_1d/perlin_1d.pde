Walker w;

void setup() {
  size(800, 800);
  frameRate(30);
  background(255);

  w = new Walker();
}

void draw() {
	w.step();
	w.display();
}

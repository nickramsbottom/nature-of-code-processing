Oscillator oscillator;

void setup() {
	size(640, 360);
	smooth();

	oscillator = new Oscillator();

	background(255);
}

void draw() {
	background(255);
	oscillator.oscillate();
	oscillator.display();
}
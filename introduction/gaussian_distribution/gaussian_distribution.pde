void setup() {
	size(640,360);
	background(255);
}

void draw() {
	float num = randomGaussian();

	float sd = 60;
	float mean = 320;

	float x = sd * num + mean;

	fill(0, 10);
	noStroke();
	ellipse(x, height/2, 16, 16);
}

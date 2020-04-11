Mover[] movers = new Mover[100];

void setup() {
	size(640, 360);

	for (int i = 0; i < movers.length; i++) {
		movers[i] = new Mover(random(0.1, 5), 0, 0);
	}
}

void draw() {
	background(255);

	for (int i = 0; i < movers.length; i++) {
		PVector wind = new PVector(0.01, 0);
		movers[i].applyForce(wind);

		float m = movers[i].mass;
		PVector gravity = new PVector(0, 0.1*m);

		movers[i].applyForce(gravity);
		movers[i].update();
		movers[i].checkEdges();
		movers[i].display();
	}
	
}
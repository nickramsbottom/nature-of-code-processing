class Mover {
	PVector location;
	PVector velocity;
	PVector acceleration;
	float mass;
	float G;

	Mover(float m, float x, float y) {
		mass = m;
		location = new PVector(x, y);
		velocity = new PVector(0, 0);
		acceleration = new PVector(0, 0);
		G = 0.4;
	}

	void applyForce(PVector force) {
		PVector f = PVector.div(force, mass);
		acceleration.add(f);
	}

	void update() {
		velocity.add(acceleration);
		location.add(velocity);
		acceleration.mult(0);
	}

	void display() {
		stroke(0);
		fill(175);
		ellipse(location.x, location.y, mass*16, mass*16);
	}

	PVector attract(Mover m) {
		PVector force = PVector.sub(location, m.location);
		float distance = force.mag();
		distance = constrain(distance, 5.0, 25.0);

		force.normalize();
		float strength = (G * mass * mass) / (distance * distance);
		force.mult(strength);
		return force;
	}

	void checkEdges() {
		if (location.x > width) {
			location.x = width;
			velocity.x *= -1;
		} else if (location.x < 0) {
			location.x = 0;
			velocity.x *= -1;
		}

		if (location.y > height) {
			velocity.y *= -1;
			location.y = height;
		}
	}
}
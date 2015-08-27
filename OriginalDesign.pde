void setup()
{
	size(1000, 1000);
}

void draw()
{
	background(135, 206,250);
	head();
	mouth();
  	eyes();
  	hat();
  	handle();
  	body();
  	sword();
  	noLoop();
}

void eyes()
{
	ellipse(460, 190, 10, 25);
	ellipse(540, 190, 10, 25);

	fill(128, 0, 128, 127);
	ellipse(460, 185, 10, 15);
	ellipse(540, 185, 10, 15);

	fill(255, 255, 255);
	ellipse(459, 183, 7, 9);
	ellipse(539, 183, 7, 9);

}

void head()
{
	noStroke();

	//main
	fill(255, 231, 186);
	ellipse(500, 200, 200, 250);

	//ears
	ellipse(400, 200, 15, 20);
	ellipse(600, 200, 15, 20);

}

void mouth()
{
	fill(0,0,0);
	strokeWeight(5);
	stroke(0, 0, 0);
	line(470, 250, 530, 250);
	strokeWeight(1);
}

void hat()
{
	fill(255, 193, 37);
	noStroke();

	//main
	arc(500, 150, 220, 220, PI, TWO_PI);

	//rim
	rect(300, 140, 400, 20, 50);

	//band
	fill(255, 255, 255);
	rect(390, 110, 220, 20);
}

void body()
{
	strokeWeight(20);
	stroke(255, 231, 186);

	//Main body
	line(500, 300, 500, 600);

	//Legs
	int leglength = 900;

	line(500, 600, 600, leglength);
	line(500, 600, 400, leglength);

	//Arms
	int armlength = 600;

	line(500, 300, 600, armlength);
	line(500, 300, 400, armlength);

}

void sword()
{
	noStroke();

	//Blade
	fill(205, 255, 255);

	beginShape();
	vertex(75, 40);
	vertex(85, 100);
	vertex(600, 600);
	vertex(600, 590);
	endShape(CLOSE);

	//Handle 1
	fill(184,134,11);

	beginShape();
	vertex(500, 485);
	vertex(500, 503);
	vertex(600, 600);
	vertex(600, 590);
	endShape(CLOSE);
}

void handle()
{
	fill(184,134,11);

	beginShape();
	vertex(600, 600);
	vertex(600, 590);
	vertex(700, 685);
	vertex(700, 700);
	endShape(CLOSE);
}

void mousePressed()
{
	redraw();
}
int wepx1 = 450;
int wepy1 = 600;

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
	vertex(wepx1 - 375, wepy1 - 560);
	vertex(wepx1 - 365, wepy1 - 500);
	vertex(wepx1 + 150, wepy1);
	vertex(wepx1 + 150, wepy1 - 10);
	endShape(CLOSE);

	//Handle 1
	fill(184,134,11);

	beginShape();
	vertex(wepx1, wepy1 - 167);
	vertex(wepx1, wepy1 - 145);
	vertex(wepx1 + 150, wepy1);
	vertex(wepx1 + 150, wepy1 - 10);
	endShape(CLOSE);

	wepy1 = wepy1 - 3;
	wepx1 = wepx1 - 3;

	/*

	if (wepx1 < 200) {

	wepx1 = wepx1 + 3;

	}
	if (wepy1 < 400) {

	wepy1 = wepy1 + 3;

	}
	if (wepx1 > 500) {
	
	wepx1 = wepx1 - 3;
	}
	if (wepy1 > 700) {

	wepy1 = wepy1 - 3;
	
	}
	*/
}

void handle()
{
	fill(184,134,11);

	beginShape();
	vertex(wepx1 + 149, wepy1 - 1);
	vertex(wepx1 + 149, wepy1 - 11);
	vertex(wepx1 + 250, wepy1 + 85);
	vertex(wepx1 + 250, wepy1 + 100);
	endShape(CLOSE);

	wepy1 = wepy1 - 3;
	wepx1 = wepx1 - 3;

	
	/*
	if (wepx1 < 200) {

	wepx1 = wepx1 + 3;

	}
	if (wepy1 < 400) {

	wepy1 = wepy1 + 3;

	}
	if (wepx1 > 500) {
	
	wepx1 = wepx1 - 3;
	}
	if (wepy1 > 700) {

	wepy1 = wepy1 - 3;
	
	}
	*/

}


void mousePressed()
{
	redraw();
}
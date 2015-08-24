void setup()
{
size(1000, 1000);
}
void draw()
{
	head();
	mouth();
  	eyes();
  	hat();
}

void eyes()
{
	ellipse(460,190,10,25);
	ellipse(540,190,10,25);

	fill(128,0,128,127);
	ellipse(460,185,10,15);
	ellipse(540,185,10,15);

	fill(255,255,255);
	ellipse(459,183,7,9);
	ellipse(539,183,7,9);

}

void head()
{
	noFill();
	ellipse(500,200,200,250);
}

void mouth()
{
	fill(0,0,0);
	strokeWeight(5);
	line(470, 250, 530, 250);
	strokeWeight(1);
}

void hat()
{
fill(255, 255, 153);
noStroke();
arc(500, 150, 200, 200, PI, TWO_PI);

strokeWeight(50);
rect(x, y, width, height);
strokeWeight(1);
stroke(0, 0, 0);
}
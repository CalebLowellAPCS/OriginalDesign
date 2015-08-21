void setup()
{
size(1000, 1000);
}
void draw()
{
	head();
  	eyes();
}

void eyes()
{
	ellipse(460,190,10,25);
	ellipse(540,190,10,25);

	fill(128,0,128,127);
	ellipse(460,185,10,15);
	ellipse(540,185,10,15);

}

void head()
{
	noFill();
	ellipse(500,200,200,250);
}
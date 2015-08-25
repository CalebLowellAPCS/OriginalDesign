import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

public void setup()
{
size(1000, 1000);
}
public void draw()
{
	background(255, 0, 0);
	head();
	mouth();
  	eyes();
  	hat();
  	body();
}

public void eyes()
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

public void head()
{
	fill(255, 231, 186);
	ellipse(500,200,200,250);
}

public void mouth()
{
	fill(0,0,0);
	strokeWeight(5);
	stroke(0, 0, 0);
	line(470, 250, 530, 250);
	strokeWeight(1);
}

public void hat()
{
fill(255, 193, 37);
noStroke();
arc(500, 150, 210, 210, PI, TWO_PI);
rect(300, 140, 400, 20, 50);
}

public void body()
{
	strokeWeight(5);
	stroke(255, 231, 186);

	//Main body
	line(500, 300, 500, 600);

	//Legs
	line(x1, y1, x2, y2);
	line(x1, y1, x2, y2);

}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

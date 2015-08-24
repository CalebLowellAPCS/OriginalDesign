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
	head();
	mouth();
  	eyes();
  	hat();
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
	noFill();
	ellipse(500,200,200,250);
}

public void mouth()
{
	fill(0,0,0);
	strokeWeight(5);
	line(470, 250, 530, 250);
	strokeWeight(1);
}

public void hat()
{
fill(255, 255, 153);
noStroke();
arc(500, 150, 200, 200, PI, TWO_PI);

strokeWeight(50);
line(300, 350, 700, 350);
strokeWeight(1);
stroke(0, 0, 0);
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

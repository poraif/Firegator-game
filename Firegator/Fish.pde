/*THIS IS THE FISH CLASS*/
/*THESE WILL BE SWIMMING AND NEED TO BE BITTEN/HIT WITH FIREBALL TO AVOID LOSING POINTS*/

public class Fish {
  private float xCoord;    //fish xcoord
  private float yCoord;    //fish ycoord
  private float diameter;  //fish diameter
  private float speedX;    //fish x speed
  private float speedY;    //fish y speed


  /*----CONSTRUCTORS----*/


  public Fish () {
    launchFish();
  }

  public Fish (float diameter) {
    setDiameter(diameter);
    launchFish();
  }


  /*----METHODS----*/

  //Show fish
  public void display()
  {
    drawFish();
  }

  //fish killed
  public void killedFish()
  {
    yCoord += 10000;
    speedX = 0;
    score += 5;
    launchFish();
  }




  public void update()
  {
    //update fish
    xCoord = xCoord + speedX;
    yCoord = yCoord + speedY;

    //launches new fish if it passes Gator
    if (yCoord > height + diameter/2) {
      launchFish();
      missedFish++;
      // reduces score for each missed fish if score is greater than 0.
      if (score > 0)
      {
        score--;
      }
    }



    //If ball hits the left edge of the display window, change direction of xCoord
    if (xCoord < diameter/2) {
      xCoord = diameter/2;
      speedX = speedX * -1;
    }

    //If fish gets close to the L or R side, move inwards
    if (xCoord > width - (diameter/2))
    {
      xCoord = width - (diameter/2);
      speedX *= -1;
    } else if (xCoord < (diameter/2))
    {
      yCoord = (diameter*2);
      speedX *= -1;
    }
  }

  /*----GETTERS----*/

  public float getXCoord() {
    return xCoord;
  }

  public float getYCoord() {
    return yCoord;
  }

  public float getDiameter() {
    return diameter;
  }

  public float getSpeedX () {
    return speedX;
  }

  public float getSpeedY() {
    return speedY;
  }

  /*----SETTERS----*/

  //Fish diameter must be between 20 and width/12 or defaults to 20
  public void setDiameter(float diameter) {
    if ((diameter >= 40) && (diameter <= width/12)) {
      this.diameter = diameter;
    } else {
      this.diameter = 40;
    }
  }


  public void setYCoord(float yCoord) {
    this.yCoord = yCoord;
  }


  public void setXCoord(float xCoord) {
    this.xCoord = xCoord;
  }


  public void setSpeedY(float speedY) {
    this.speedY = speedY;
  }

  public void setSpeedX(float speedX) {
    this.speedX = speedX;
  }

  /*----HELPERS----*/

  private void launchFish() {
    yCoord = 0;
    xCoord = random(width);
    speedX = random(-2, 1);
    speedY = random(3, 6);
  }

  private void drawFish() {
    fill(255, 0, 0);
    noStroke();
    circle(xCoord, yCoord, diameter);
  }
}

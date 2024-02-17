/*FIREBALLS ARE THE BULLETS OF THE GAME*/

public class Fireball {
  private float xCoord;    // ycoord
  private float yCoord;    // ycoord
  private float diameter;  // diameter
  private float speedY;    // y speed
  private boolean fire;  //boolean for firing fireball



  /*----CONSTRUCTORS----*/

  public Fireball () {
  }

  public Fireball (float diameter, float speedY) {
    setDiameter(diameter);
    setXCoord(xCoord);
    setYCoord(yCoord);
    this.speedY = speedY;
  }

  public Fireball (float diameter) {
    setDiameter(diameter);
    setXCoord(xCoord);
    setYCoord(yCoord);
    speedY = 10;
  }


  /*----METHODS----*/

  public void display()
  {
    drawFireBall();
  }



  public void move()
  {
    xCoord = (gator.getXCoord()+(gator.getGatorWidth()/2));

    if (fire) {
      yCoord -= speedY;
    } else
    {
      reset();
      yCoord = (gator.getYCoord());
    }
  }




  public void reset()
  {
    if (yCoord <= 0) //resets fireball if goes offscreen
    {
      resetFireball();
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

  public float getSpeedY() {
    return speedY;
  }

  public boolean getFire() {
    return fire;
  }


  /*----SETTERS----*/

  //diameter setter keeps fireball within set range
  public void setDiameter(float diameter) {
    if ((diameter >= 10) && (diameter <= width/20)) {
      this.diameter = diameter;
    } else {
      this.diameter = 10;
    }
  }

  public void setXCoord(float xCoord)
  {
    this.xCoord = xCoord;
  }

  public void setYCoord(float yCoord)
  {
    this.yCoord = yCoord;
  }

  public void setSpeedY(float speedY) {
    this.speedY = speedY;
  }

  public void setFire(boolean fire) {
    this.fire = fire;
  }

  /*----HELPERS----*/


  private void drawFireBall() {
    fill(227, 140, 45);
    noStroke();
    circle(xCoord, yCoord, diameter);
  }

  //resets fireball by setting fire to false and calling display function
  public void resetFireball()
  {
    fire = false; //without this, fireball only reset when key b pressed again
    display();
  }
}

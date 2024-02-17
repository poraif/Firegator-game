/* THIS IS THE GATOR CLASS */
/*GATOR IS THE 'GOODIE' OF THE GAME*/

public class Gator {
  private float xCoord;
  private float yCoord;
  private float gatorWidth;
  private float gatorHeight;
  private float speed;
  private boolean left;
  private boolean right;
  private boolean up;
  private boolean down;
  private boolean bite;

  /*----CONSTRUCTORS----*/

  public Gator () {
  }

  public Gator (float gatorWidth, float gatorHeight) {
    setGatorWidth(gatorWidth);
    setGatorHeight(gatorHeight);
    yCoord = height - this.gatorHeight; //locks gator bottom of screen
    xCoord = width/2; //starts gator off bottom centre screen
    speed = 8;
  }


  /*----METHODS----*/

  //Show gator
  public void display()
  {
    drawGator();
  }


  //Puts gator back in centre of screen when game resets.
  public void gatorRestart()
  {
    yCoord = height - this.gatorHeight; //locks gator bottom of screen
    xCoord = width/2; //starts gator off bottom centre scree
  }


  //move gator
  public void move() {
    if (left) {
      xCoord -= speed;
    }

    if (right) {
      xCoord += speed;
    }

    if (up) {
      yCoord -= speed;
    }

    if (down) {
      yCoord += speed;
    }
  }


  //Keeps gator going offscreen, and prevents moving too far upscreen
  public void update() {

    if (xCoord <= 0)
    {
      xCoord = 0;
    }
    if (xCoord > (width - gatorWidth))
    {
      xCoord = width - gatorWidth;
    }

    if (yCoord < (height*0.6)) //stops movement past certain point of screen
    {
      yCoord = (height*0.6);
    }
    if (yCoord > (height - gatorHeight))
    {
      yCoord = height - gatorHeight;
    }
  }




  /*----GETTERS----*/

  public float getXCoord() {
    return xCoord;
  }

  public float getYCoord() {
    return yCoord;
  }

  public float getGatorWidth() {
    return gatorWidth;
  }

  public float getGatorHeight() {
    return gatorHeight;
  }

  public float getSpeed() {
    return speed;
  }

  public boolean getLeft() {
    return left;
  }

  public boolean getRight() {
    return right;
  }

  public boolean getUp() {
    return up;
  }

  public boolean getDown() {
    return down;
  }

  public boolean getBite() {
    return bite;
  }



  /*----SETTERS----*/


  public void setGatorWidth(float gatorWidth) {
    if (width % gatorWidth == 0) {
      this.gatorWidth = gatorWidth;
    } else {
      this.gatorWidth = 20;
    }
  }


  public void setGatorHeight(float gatorHeight) {
    if ((gatorHeight >= 60) && (gatorHeight <= 80)) {
      this.gatorHeight = gatorHeight;
    } else {
      this.gatorHeight = 60;
    }
  }

  public void setSpeed(float speed) {
    this.speed = speed;
  }

  public void setXCoord(float xCoord) {
    this.xCoord = xCoord;
  }

  public void setYCoord(float yCoord) {
    this.yCoord = yCoord;
  }

  public void setLeft(boolean left) {
    this.left = left;
  }

  public void setRight(boolean right) {
    this.right = right;
  }

  public void setUp(boolean up) {
    this.up = up;
  }

  public void setDown(boolean down) {
    this.down = down;
  }

  public void setBite(boolean bite) {
    this.bite = bite;
  }


  /*----HELPERS----*/

  private void drawGator() {
    fill(0, 255, 0);
    noStroke();
    rect(xCoord, yCoord, gatorWidth, gatorHeight);
  }
}

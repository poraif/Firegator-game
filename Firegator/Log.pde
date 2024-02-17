/* THIS IS THE LOG CLASS */
/*LIFE LOST IF GATOR HITS A LOG*/

public class Log {
  private float xCoord;
  private float yCoord;
  private float logHeight;
  private float logWidth;
  private float speedY;
  private Gator gator; //added so gator fields accessible

  /*----CONSTRUCTORS----*/

  public Log () {
    launchLog();
  }

  public Log (float logHeight) {
    setSpeedY(speedY);
    setLogWidth(logWidth);
    setLogHeight(logHeight);
    launchLog();
  }

  public Log (float logHeight, float speedY) {
    setSpeedY(speedY);
    setLogWidth(logWidth);
    setLogHeight(logHeight);
    launchLog();
  }


  /*----METHODS----*/

  //Show log
  public void display()
  {
    drawLog();
  }

  //life lost if gator hit by log*/
  public void killedGator()
  {
    yCoord += 10000; //removes log from screen
    lives--;
    launchLog();
  }


  public void update()
  {
    //update log
    yCoord += speedY;

    //launches new log if it passes Gator
    if (yCoord > height + logHeight) {
      launchLog();
    }
  }


  /*----GETTERS----*/

  public float getXCoord() {
    return xCoord;
  }

  public float getYCoord() {
    return yCoord;
  }

  public float getLogHeight() {
    return logHeight;
  }

  public float getLogWidth() {
    return logWidth;
  }

  public float getspeedY() {
    return speedY;
  }

  /*----SETTERS----*/

  public void setLogWidth(float logWidth) {
    if ((logWidth >= 20) && (logWidth <= (gator.getGatorWidth()))) {
      this.logWidth = logWidth;
    } else {
      this.logWidth = 20;
    }
  }

  public void setLogHeight(float logHeight) {
    this.logHeight = logHeight;
  }

  public void setXCoord(float xCoord) {
    this.xCoord = xCoord;
  }

  public void setYCoord(float YCoord) {
    this.yCoord = yCoord;
  }

  public void setSpeedY(float speedY) {
    this.speedY = speedY;
  }


  /*----HELPERS----*/

  private void launchLog() {

    yCoord = 0;
    xCoord = random(width);
    speedY = random(3, 5);
  }

  private void drawLog() {
    fill(150, 75, 0);
    noStroke();
    rect(xCoord, yCoord, logWidth, logHeight);
  }
}

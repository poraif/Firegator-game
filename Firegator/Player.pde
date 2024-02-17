public class Player
{
  private String playerName;

  //Constructor to create a player with a starting name and sets the size of the array
  //to the number of games in the tournament, as entered by the player.
  public Player(String playerName)
  {
    if (playerName.length() < 6)
    {
      this.playerName = playerName;
    } else
    {
      this.playerName = playerName.substring(0, 6);
    }
  }

  //accessors
  public String getPlayerName()
  {
    return playerName;
  }


  //mutator for player name
  public void setPlayerName(String playerName)
  {
    this.playerName = playerName.substring(0, 6);
  }
}

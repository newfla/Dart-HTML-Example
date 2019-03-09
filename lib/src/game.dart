class Game {
  //Fields 
    final String _title;
    final GamePlatform _platform;
    final String _priceNew, _priceUsed;

  //Getter Methods
    get title => _title;
    get type => _platform;
    get priceNew => _priceNew;
    get priceUsed => _priceUsed;

  //Constructor
  Game(this._title, this._platform, this._priceNew, this._priceUsed);
}

  //Enum Game Platoform
  enum GamePlatform{PS4, XBOXOne, Switch}

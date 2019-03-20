import 'dart:core';
import 'game.dart';
import 'gameBuilder.dart';

class GamesContainer {

  //Fields
  Map<GamePlatform,List<Game>> _mapPlatformGames = Map();
  Map<GamePlatform,GameBuilder> _mapPlatformBuilder = Map();
  Future<void> _loadPage;

  //Getter methods
  List<Game> getByPlatform(GamePlatform platform) => _mapPlatformGames[platform];

  //Constructor
  GamesContainer(){
    
    //Start loading the site
    _loadPage = GameBuilder.loadPage();

    //Set Builder objext
    for (var type in GamePlatform.values)
      _mapPlatformBuilder[type] = GameBuilder(type);
  }

  //Public Populate Method
  Future<void> populate() async {
    
    await _loadPage;

    for (var platform in GamePlatform.values)
      _internalPopulate(platform);
  }

  //Private Populate
  void _internalPopulate(GamePlatform platform) {
    _mapPlatformGames[platform] =  _mapPlatformBuilder[platform].buildPlatformList();
  }
}
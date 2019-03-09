import 'package:gamestop/gamestop.dart';

main() {
    final Stopwatch stopwatch = Stopwatch()..start();
    final GamesContainer container = GamesContainer();
    container.populate().then((_){
      Duration temp = stopwatch.elapsed;
      for (GamePlatform type in GamePlatform.values) {
        print("--------" + type.toString() + "--------");
        container.getByPlatform(type).forEach((element) => stampaTitolo(element));
      }
      print("Tempo trascorso: " + temp.toString());
    });
}

void stampaTitolo(Game game){
  print(game.title);
  print("Prezzo nuovo: " + game.priceNew + "    Prezzo usato: " + game.priceUsed+ "\n");
  print("//////////////");
}

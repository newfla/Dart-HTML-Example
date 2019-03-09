A simple asynchronus Dart 2.2 HTML parser example 

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:gamestop/gamestop.dart';

main() {
  GamesContainer container = GamesContainer ();
  container.populate().then((_){
      for (GamePlatform type in GamePlatform.values) {
        print("--------" + type.toString() + "--------");
        container.getByPlatform(type).forEach((element) => print(element.title));
      }
  });
}
```

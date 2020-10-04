import 'package:di/di.dart' as di;

import '../lib/di.dart';

void main(List<String> arguments) {
  print('Hello world: ${di.calculate()}!');

  Traveller tourist = Traveller(name: "Jhon Smith");
  print("Moving! Cost: ${tourist.Move(15)}€");
  print("Moving! Cost: ${tourist.Move(1)}€");
  print("Moving! Cost: ${tourist.Move(42)}€");
}

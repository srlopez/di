import 'package:di/di.dart' as di;
import '../lib/di.dart';

void main(List<String> arguments) {
  print('Hello world: ${di.calculate()}!');

  var fabia = Vehicle(license: '0249JSH', description: 'Skoda fabia');
  var tourist = Traveller(name: 'Aroa López', vehicle: fabia);
  print('Moving! Cost: ${tourist.Move(15)}€');
  print('Moving! Cost: ${tourist.Move(1)}€');
  print('Moving! Cost: ${tourist.Move(42)}€');
}

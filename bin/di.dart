import 'package:di/di.dart' as di;
import '../lib/di.dart';

void main(List<String> arguments) {
  print('Hello world: ${di.calculate()}!');

  var fabia = Car(license: '0249JSH', description: 'Skoda fabia');
  var ave = Train(license: '16ESP', description: 'Ave M. de Cervantes');

  var tourist = Traveller(name: 'Aroa López', vehicle: fabia);
  print('Moving! Cost: ${tourist.Move(15)}€');
  print('Moving! Cost: ${tourist.Move(1)}€');

  tourist.vehicle = ave;
  print('Moving! Cost: ${tourist.Move(42)}€');
}

import 'package:get_it/get_it.dart';

import 'package:di/model.dart';
import 'package:di/getit.dart';

void main(List<String> arguments) {
  var getIt = GetIt.instance;

  // getIt.registerSingleton<di.Car>(
  //     di.Car(license: '01234', description: 'Tesla model 3'));
  // getIt.registerSingleton<Train>(
  //     Train(license: 'z2ESP', description: 'Ave Fray Luis de León'));
  init();

  print('Hello world: ${calculate()}!');

  var tourist = Traveller(name: 'Aroa López', vehicle: getIt.get<Car>());
  print('Moving! Cost: ${tourist.Move(15)}€');
  print('Moving! Cost: ${tourist.Move(1)}€');

  tourist.vehicle = getIt.get<Train>();
  print('Moving! Cost: ${tourist.Move(42)}€');
}

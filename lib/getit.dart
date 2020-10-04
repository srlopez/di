import 'package:get_it/get_it.dart';

import 'model.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerSingleton<Car>(
      Car(license: '0249JSH', description: 'Skoda fabia'));
  getIt.registerSingleton<Train>(
      Train(license: '16ESP', description: 'Ave M. de Cervantes'));
}

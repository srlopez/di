import 'dart:math';

int calculate() {
  return 6 * 7;
}

abstract class Vehicle {
  final String _license;
  final String _description;

  Vehicle({String license, String description})
      : _license = license,
        _description = description;

  double Move(int km); //No implementada - Interface

  @override
  String toString() {
    return 'Vehicle [license: $_license, description: $_description]';
  }
}

class Car extends Vehicle {
  Car({String license, String description})
      : super(license: license, description: description);

  @override
  double Move(int km) {
    print('Moving car: $this');
    return Random().nextDouble() * km;
  }
}

class Train extends Vehicle {
  Train({String license, String description})
      : super(license: license, description: description);

  @override
  double Move(int km) {
    print('Moving train: $this');
    return Random().nextDouble() * km;
  }
}

class Traveller {
  final String _name;
  Vehicle _vehicle;

  Traveller({String name, Vehicle vehicle})
      : _name = name,
        _vehicle = vehicle;

  set vehicle(Vehicle v) => _vehicle = v;

  double Move(int km) {
    print('$_name travelling: $km');
    return _vehicle.Move(km); //cost
  }
}

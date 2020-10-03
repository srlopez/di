import 'dart:math';

int calculate() {
  return 6 * 7;
}

class Vehicle {
  final String _license;
  final String _description;

  Vehicle({String license, String description})
      : _license = license,
        _description = description;

  double Move(int km) {
    print('Moving vehicle: $this');
    return Random().nextDouble() * km;
  }

  @override
  String toString() {
    return 'Vehicle [license: $_license, description: $_description]';
  }
}

class Traveller {
  final String _name;
  final Vehicle _vehicle;

  Traveller({String name, Vehicle vehicle})
      : _name = name,
        _vehicle = vehicle;

  double Move(int km) {
    print('$_name travelling: $km');
    return _vehicle.Move(km); //cost
  }
}

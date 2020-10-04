import 'dart:math';

int calculate() {
  return 6 * 7;
}

class Vehicle {
  String _license;
  String _description;

  Vehicle({String license, String description})
      : _license = license,
        _description = description;

  double Move(int km) {
    print("Moving vehicle: $this");
    return Random().nextDouble() * km;
  }

  @override
  String toString() {
    return "Vehicle [license=$_license, description=$_description";
  }
}

class Traveller {
  String _name;
  Vehicle _vehicle;

  Traveller({String name})
      : _name = name,
        _vehicle = Vehicle(license: "20249JSH", description: "Skoda Fabia");

  double Move(int km) {
    print("Travelling: $km");
    return _vehicle.Move(km); //cost
  }
}

# 00.SolucionAcoplada

A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

git branch
# Nos mostrará varias ramas de trabajo

git checkout -b 00.SolucionAcoplada
# La primera aproximación a que un turista tome un vehiculo. Las clase están fuertemente acopladas
git checkout -b 01.SolucionMejorada

# Solución mejorada, sin acoplamiento, pero depende de la clase de vehiculo

git checkout -b 02.SolucionDeseable
# Desable en POO, se crea una interfaz (en Dart un extend de una clase abstracta Vehicle) que es lo que se utiliza. pero creamos instancias distintas con esa interface Car, Train, que es lo que se utiliza). Hemos invertido el control. El turista no maneja el vehiculo, sino que se sube el control de la gestión a la clase que lo maneja, y desde main inyectamos la dependencia del vehiculo final.

git checkout -b 03.GetIt
# La solución con GetIt. Ideal para arquitecturas de inyección de dependencias como la Arquitectura Limpia. La inyección se hace en un bloque de inicialización que puede ser parametrizado.
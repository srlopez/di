# 00.SolucionAcoplada

A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

Para jugar:

`git clone https://github.com/srlopez/di`
`git branch -a`
- Nos mostrará las varias ramas de trabajo locales y remotas

`git fetch origin 00.SolucionAcoplada`
`git checkout 00.SolucionAcoplada`
- La primera aproximación a que un turista tome un vehiculo. Las clase están fuertemente acopladas

`git fetch origin 01.SolucionMejorada`
`git checkout 01.SolucionMejorada`
- Solución mejorada, sin acoplamiento, pero depende de la clase de vehiculo

`git fetch origin 02.SolucionDeseable`
`git checkout 02.SolucionDeseable`
- Desable en POO, se crea una interfaz (en Dart un extend de una clase abstracta Vehicle) que es lo que se utiliza. pero creamos instancias distintas con esa interface Car, Train, que es lo que se utiliza). 
- Hemos invertido el control. El turista no maneja el vehiculo, sino que se sube el control de la gestión a la clase que lo maneja, y desde main inyectamos la dependencia del vehiculo final.

`git fetch origin 03.GetIt`
`git checkout 03.GetIt`
- La solución con GetIt. Ideal para arquitecturas de inyección de dependencias como la _Arquitectura Limpia_. La inyección se hace en un bloque de inicialización que puede ser parametrizado.

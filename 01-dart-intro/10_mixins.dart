abstract class Animal{}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('estoy volando');
}

mixin Caminante {
  void caminar() => print('estoy caminando');
}

mixin Nadador {
  void nadar() => print('estoy nadando');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}
class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador, Volador {}

void main (){
  print("flipper");
  final flipper = Delfin();
  flipper.nadar();
  
  print("batman");
  final batman = Murcielago();
  batman.volar();
  batman.caminar();
  
  print("namor");
  final namor = Pato();
  namor.caminar();
  namor.nadar();
  namor.volar();
  
  print("nemo");
  final nemo = PezVolador();
  nemo.nadar();
  nemo.volar();
  
}


// son como especialisaciones de las clases, particularidades, funciones especiales.. etc.
// propias de Dart y Flutter.
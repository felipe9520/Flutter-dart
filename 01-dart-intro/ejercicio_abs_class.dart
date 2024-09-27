void main() {
  
  print('Bee');
  final bee = Camaro();
  bee.acelerar();
  bee.transformarse();
  
  
}

abstract class Automotor{}


abstract class Automivil extends Automotor{}
abstract class Camioneta extends Automotor{}
abstract class Tractomula extends Automotor{}
abstract class Volqueta extends Automotor{}

abstract class Motocicleta extends Automotor{}
abstract class Motocarro extends Automotor{}
abstract class Cuatrimoto extends Automotor{}

mixin Corredor {
  void acelerar() => print('estoy acelerando');
}

mixin Cargador {
  void cargar() => print('estoy cargando');
}

mixin Remolcador {
  void remolcar() => print('estoy remolcando');
}

mixin Transformer {
  void transformarse() => print('me estoy transformando');
}


class Camaro extends Automivil with Corredor, Transformer {}

class Kenworth extends Automivil with Corredor, Cargador, Remolcador, Transformer {}
  
  
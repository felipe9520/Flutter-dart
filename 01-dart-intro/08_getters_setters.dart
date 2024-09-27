void main() {
  //la assercion detecta el -10, con el condicional(lin 35) rebota el -5 pero no el -10
  final mySquare = Square(side: -10);
  
  // No deberiamos poder acceder a la propiedad _side xq es privada (error de dartpad)
  //mySquare.side = -5;
   
  print('Area: ${ mySquare.area }');
  
}

class Square {

//atributos clase Square  
  //double side; // side * side

//hacemos la "propiedad" privado en dart con "_xxx"  
  double _side;
  
//constructor iniciado con "this."
  //Square({ required this.side });
  
//constructor iniciado con ":"
  Square({ required double side })
  //asserciones dentro del costructor antes de las asignaciones
    : assert(side >= 0, 'assert must be >=0'),
      _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side( double value ) {
    print('setting new value $value');
    if ( value < 0 ) throw 'value must be >=0';
    
    _side = value; 
  }
  
  double calcularArea(){
    return _side * _side;
  }
}


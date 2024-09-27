void main() {
  
  /* argumento posicional
  final Hero wolverine = Hero('Logan','Regeneracion');*/
  
  //argumento por nombre
  final Hero wolverine = Hero(name: 'Logan'); /*power: vacio o null*/
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
}

class Hero {
  
  String name;
  String power;
  
  /* argumentos posicionales
  Hero( this.name, this.power );*/
  
  // "{}" para argumentos por nombre 
  Hero({
    required this.name, //valor obligatorio
    this.power = 'Sin poder' //para valor null = 'Sin poder' por defecto
    
  });
  
  //Hero( String pName, String pPower )
  // : name = pName,
  //   power = pPower;
  
  @override
  String toString(){
    return '$name - $power';
  }
  
}
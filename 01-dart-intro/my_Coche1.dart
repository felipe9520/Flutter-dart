void main() {
  final myCoche = Coche(     
    marca: 'Hyundai', 
    color: 'Blanco cristal',
    placa: 'HBR207'
  );

  print(myCoche);
  print(myCoche.marca);
  print(myCoche.color);
  print(myCoche.placa);
}

class Coche {  
  String marca;
  String color;
  String placa;

  Coche({
    required this.placa, 
    required this.marca, 
    required this.color
  });
  
  @override
  String toString(){
    return '$placa - $marca - $color';
  }
  
}
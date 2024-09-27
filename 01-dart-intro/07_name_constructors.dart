void main() {
//para peticiones http
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': false
  };
//creando instancia de Hero basados en "Map<> rawJson"
  final ironman = Hero.fromJson( rawJson );
  
//final ironman = Hero(
//  isAlive:false,
//  power:'Money',
//  name:'Tony Stark'    
//);
    
  print(ironman);         
  }
    
  class Hero {
    String name;
    String power;
    bool isAlive;

    //constructor (escrito igual al nombre de la clase)
    Hero({
      required this.name,
      required this.power,
      required this.isAlive
    });
    
    //constructor CON nombre (nameclass.nameconstructor  ej: "Hero.fromMap")
    Hero.fromJson( Map<String, dynamic> json)
      : name = json['name'] ?? 'no name found',
        power = json['power'] ?? 'no power found',
        isAlive = json['isAlive'] ?? 'no isAlive found';
    
    @override
    String toString(){
      return '$name - $power - ${isAlive ? 'Alive':'Dead'}';
    }      
    
  }
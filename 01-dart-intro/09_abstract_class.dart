void main(){

  // las abstract class no se instancias por si misma, se usan para crear patrones de arquitecturas
  //final windPlant = EnergyPlant();
  
}
//enumeracion de type, sin '=' ó seria asignacion a Map o a set, y al final NO lleva ';', va antes y fuera de la abstract class
enum PlantType { nuclear, wind, water}

//class de class ó class de arquitectura
abstract class EnergyPlant {
  // las class que estiendan de EnergyPlant deben tener energyLeft y type.. no pueden ser null
  double energyLeft; 
  PlantType type; // nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  // metodo resultado no aplicable, necesario como verificació 'firma'
  void consumeEnergy( double amount );
  //metodo no implementado
  //es decir, no {xxx, yyy, zzz}  
}
//Definicion de class abstract.
//estructura que hace el codigo escalable usando extends 


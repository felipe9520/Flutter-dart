void main(){
  
  final windPlant = WindPlant ( initialEnergy: 100 );
  
  print(windPlant);
  
  // *** ejemplo de uso de funcion en extructura class abstract con extends ***
  print( 'wind: ${ chargePhone( windPlant ) }' );
  
}
// *** finción ejemplo de uso de extructura *** // PRINCIPIO INVERSION DE DEPENDENCIAS ?

double chargePhone( EnergyPlant plant ){
  if ( plant.energyLeft < 10 ){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;

}

enum PlantType { nuclear, wind, water}

abstract class EnergyPlant {
  
  double energyLeft; 
  PlantType type; // nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy( double amount );
  
}

// extends 
class WindPlant extends EnergyPlant {
  
  WindPlant({ required double initialEnergy })
    : super( energyLeft: initialEnergy, type: PlantType.wind );
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
   
}

//con los extends hacemos class hijas que HEREDAN los atrubutos y metodos de la class abstract.
//con ésta extructura se usan extends para hacer el codigo escalable






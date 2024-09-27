
void main(){
  
  final windPlant = WindPlant ( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );
  
  print(windPlant);
  
  // *** ejemplo de uso de funcion en extructura class abstract con extends ***
  print( 'wind: ${ chargePhone( windPlant ) }' );
  //ej implement
  print( 'nuclear: ${ chargePhone( nuclearPlant ) }' );
  
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

// extends o implements
class WindPlant extends EnergyPlant {
  
  WindPlant({ required double initialEnergy })
    : super( energyLeft: initialEnergy, type: PlantType.wind );
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
   
}

class NuclearPlant implements EnergyPlant {
  
  double energyLeft;
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5);
  }
  
  @override
  set type(PlantType _type) {
    // TODO: implement type
  } 
  
}

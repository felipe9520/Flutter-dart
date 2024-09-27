void main() {
  
  final  jefe = Capitan( 
    id: 1234, 
    typeId: IdType.cc,
    typeUser: UserType.capitan,
    lastName: 'Cortés', 
    firstName: 'José',
    license: License.administrador    
  ); 
  
  print(jefe);
  jefe.administrar();
}

enum IdType { cc, pp, pb, }
enum UserType { capitan, cliente, typeX }

abstract class User {
  
  int id;
  IdType typeId;
  UserType typeUser;
  
  User ({
    required this.id,
    required this.typeId,
    required this.typeUser
  });

}

mixin class Admin { void administrar () => print("Estoy administrando"); }
mixin class Consumer { void consumir () => print("Estoy consumiendo"); }

enum License { administrador, consumidor }
class Capitan extends User with Admin {
  
  String lastName;
  String firstName;
  License license;
    
  Capitan ({
    required int id,
    required IdType typeId,
    required UserType typeUser,
    required this.lastName, 
    required this.firstName,
    required this.license  
  }) 
    : super( id: id, typeId: typeId, typeUser: UserType.capitan );
}

class Cliente extends User {
  
  String lastName;
  String firstName;
  License license;
    
  Cliente ({
    required int id,
    required IdType typeId,
    required UserType typeUser,
    required this.lastName, 
    required this.firstName,
    required this.license 
  })
  : super( id: id, typeId: typeId, typeUser: UserType.cliente );
  
}

void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': 'impostor',
    'sprites': <int, String>{
      1: 'ditto/front,png', 
      2: 'ditto/back.png'}
  };

  //final String abc = 'okey';

  //print(pokemon);
  print('Name: ${pokemon['name']}');
  print('sprites: ${pokemon['sprites']}');
  
  print('front: ${pokemon['sprites'] [1] }');
  print('back: ${pokemon['sprites'] [2] }');


}

/* EJEMPLO DE PRACTICA POR ESTUDIANTE.
  
  void main() {
  final Map<String, dynamic> fullname = {
    'n1': 'andres',
    'n2': 'felipe',
    'apellido': <int, String>{1: 'altamiranda', 2: 'padilla'}
  };

  print('primer nombre:  ${fullname['n1']} ');
  print('segundo nombre:  ${fullname['n2']} ');
  print('primer apellido:  ${fullname['apellido'][1]} ');
  print('segundo apellido:  ${ fullname ['apellido'] [2] } ');
}

 */
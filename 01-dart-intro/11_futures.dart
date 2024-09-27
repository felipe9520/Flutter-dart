void main(){
  
  print('Inicio  del programa');
  
  httpGet('https://andres_altamiranda.com/cursos')
    .then( 
      (value) {
        print( value );
      })
    .catchError( 
      (err){
        print('Error controlado: $err');
  });
  
  print('Fin  del programa');  
  
} 

Future<String> httpGet( String url ){
  
  return Future.delayed( const Duration(seconds: 1), () {
    
    throw 'Error en la peticion http';
    
    //return 'Respuesta de la peticion http';
  });
}


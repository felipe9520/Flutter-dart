void main(){
  
  print( greetEveryone() );
  print( 'Suma: ${ addTwoNumbers( 10, 20 ) }' );
  
}

String greetEveryone() => 'Hello everyone!';

/*int addTwoNumbers( int a, int b ) {
  return a + b;
}*/
int addTwoNumbers(int a, int b) => a + b;

// Forma 1 de hacer opcional
int addTwoNumbersOptional( int a, [ int? b ] ) {
  
  b ??= 0;
  
  return a + b;
}
// Forma 2 de hacer opcional *preferido*
int addTwoNumbersOptional2( int a, [ int b = 0 ] ) {
  
  return a + b;
}

// example:
// b = b ?? 0;
// b ??= 0;

// b = b + 1; 
// b++; 
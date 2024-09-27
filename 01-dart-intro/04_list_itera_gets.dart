void main() {
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('List Original: $numbers');
  print('Legenth: ${numbers.length}');  
  print('Index 0: ${numbers[0]}');
  print('First ${numbers.first}');
  print('Last ${numbers.last}');
  print('Reversed ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  print('Iterable $reversedNumbers');
  print('List: ${reversedNumbers.toList() }');
  print('Set: ${reversedNumbers.toSet() }');
  
  //ejemplo manipulacion de dato:
  //print('List new: ${numbers.toSet().toList()}');
  
  final numbersGreaterThan5 = numbers.where( (int num) {
    return num > 5; //true
  });
  
  print('>5 Iterable: $numbersGreaterThan5');
  print('>5 Set: ${numbersGreaterThan5.toSet() }');

}


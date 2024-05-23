void main(){
  final number = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  
  print('Lista original: $number');
  print('Length: ${number.length}');
  print('First: ${number.first}');
  print('Last: ${number.last}');
  print('Desc: ${number.reversed}');
  
  
 final reversedNumber = number.reversed;
  print('Iterable: $reversedNumber');
  print('List: ${reversedNumber.toList}');
  print('Set: ${reversedNumber.toSet}');
  
  // WHERE
  // Obtener numeros mayores a 5 
  final numberGreatherThan5 = number.where((number){
    return number > 5;
  });
  
  print('> 5: ${numberGreatherThan5}');
  print('> 5 convert set to list ${numberGreatherThan5.toSet}');
}
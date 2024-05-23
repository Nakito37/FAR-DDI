void main() {
  print(saludar());
  print(greetEveryone());
  print(agregarNumeros(5, 5));
  print(addTwoNumber(2, 2));
  print(greetPerson(message: "hola", name: "Paco"));
  print(greetPerson(name: "Paco"));
}

String saludar() {
  return "Hola a todos";
}

// lamda
String greetEveryone() => "Hello Everyone";

int agregarNumeros(int a, int b){
  return a + b;
}

//convertir lamda
int addTwoNumber(int a,int b) => a + b;

// Variables opcionales
int agregarDosNumerosOpcional(int a, [int? b /*int b = 0 */]){
  b ??= 0;
  
  return a + b;
}

// Variable por referencia
String greetPerson({required String name, String? message = 'Hola'}) {
  return '$message, $name';
}
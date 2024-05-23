/*
 * Futures
 * Son un acuerdo de que en el futuro tendras un valor para ser usado
 */

void main() async {
  print('Inicia el programa');

  final value = await httpGet('https://');
  print(value);

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));

  return 'Respuesta de la peticion HTTP';
}

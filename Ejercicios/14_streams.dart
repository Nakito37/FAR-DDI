/*
 * Streams
 * Son flujos de informacion que pueden estar emitiendo valores periodicamente una ve o nunca
 * Son como un flujo de agua, pueden cerrarse o abrirse
 **/ 

void main() {
  emitNumbers().listen((value){
    print('emit: $value');
  });
}

  Stream<int> emitNumbers(){
    return Stream.periodic(const Duration(seconds: 2), (value){
      return value;
    }).take(3);
  }
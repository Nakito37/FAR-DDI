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

  Stream<int> emitNumbers() async*{
    final valuesToEmit = [1, 2, 3, 4, 5];
    
    for(int i in valuesToEmit){
      await Future.delayed(const Duration(seconds: 1));
      
      //ceder un valor
      yield i;
    }
  }
/**
 * Una clase abstracta no se puede instanciar como si misma
 * es un molde para crear otro molde
 * pueden creaer funciones sin implementacion
 **/
void main() {
  final plantaViento = PlantaViento(energiaInicial: 9);
  final plantaNuclear = PlantaNuclear(cantidadEnergia: 100);
  
  print('Viento: ${cargarBateria(plantaViento)}');
  print('Nuclear: ${cargarBateria(plantaNuclear)}');
}

double cargarBateria(PlantaEnergia planta){
  if(planta.cantidadEnergia < 10){
    throw Exception('Energia insuficiente');
  }
  return planta.cantidadEnergia - 10;
}

enum TipoPlanta { viento, agua, nuclear }

abstract class PlantaEnergia {
  double cantidadEnergia;
  final TipoPlanta tipo; // Agua, viento, nuclear, etc.

  PlantaEnergia({required this.cantidadEnergia, required this.tipo});

  void consumirEnergia(double cantidad);
}

/**
 * Extends or implements
 * Extends: extender o heredar de una clase
 */
class PlantaViento extends PlantaEnergia {
  PlantaViento({required double energiaInicial})
      : super(cantidadEnergia: energiaInicial, tipo: TipoPlanta.viento);

  @override
  void consumirEnergia(double cantidad) {
    cantidadEnergia -= cantidad;
  }
}

// Implementar
class PlantaNuclear implements PlantaEnergia {
  @override
  double cantidadEnergia;

  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;

  PlantaNuclear({required double this.cantidadEnergia});

  @override
  void consumirEnergia(double cantidad) {
    cantidadEnergia -= cantidad;
  }
}

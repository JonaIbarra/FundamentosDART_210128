abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador{
  void volar() => print('Estoy volando');
  void planear(int distanciaMaxima) => print('Este animal puede planear hasta: ${distanciaMaxima}');
  void ascender(double alturaMaxima) => print('Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel del mar');
  void descender(String velocidadMax) => print('Este animal puede descender a una velocidad de hasta ${velocidadMax}');
}



mixin Caminante{
  void caminar() => print('Estoy caminando');
  void correr(int velMax) => print('Este animal puede correr hasta: ${velMax} Km/h');
  void trotar(bool puedeTrotar) => print('¿Este animal puede Trotar?: ${puedeTrotar}');
  void saltar(bool puedeSaltar) => print('¿Este animal puede Saltar?: ${puedeSaltar}');
}

mixin Nadador{
  void nadar() => print('Estoy nadando');
  void sumergir(double profundidadMaxima) => print('Este animal puede sumergirse hasta una profundidad de ${profundidad} mts. bajo el nivel del mar');
  void respirar(bool puedeRespirar) => print('¿Este animal puede Respirar?: ${puedeRespirar}');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador,Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Nadador,Caminante,Volador{}

class Tiburon extends Pez with Nadador{}
class PexVolador extends Pez with Nadador,Volador{}

void main(){
  final flipper = Delfin();
  print("Instanciando la clase Delfin y accediendo a sus funciones");
  flipper.nadar();
  print("---------------------------------------------------------");
  print("Instanciando la clase Murcielago y accediendo a sus funciones");
  final chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();
  print("---------------------------------------------------------");
  print("Instanciando la clase Pato y accediendo a sus funciones");
  final pekines = Pato();
  pekines.volar();
  pekines.planear(100);
  pekines.ascender(30.0);
  pekines.descender('5');
  pekines.caminar();
  pekines.nadar();
  print("---------------------------------------------------------");
  print("Instanciando la clase Gato y accediendo a sus funciones (Gato Oriental)");
  final gatoOriental = Pato();
  gatoOriental.caminar();
  gatoOriental.correr(48);
  gatoOriental.trotar(true);
  gatoOriental.saltar(true);
  print("---------------------------------------------------------");
  print("Instanciando la clase Tiburon y accediendo a sus funciones (Tiburon Cazón)");
  final tiburonCazon = Pato();
  tiburonCazon.nadar();
  tiburonCazon.sumergir(200);
  tiburonCazon.respirar(true);
  print("---------------------------------------------------------");
}


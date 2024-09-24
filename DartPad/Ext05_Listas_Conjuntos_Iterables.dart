void main() {
  
  
  // La declaración de una lista exta limitada por corchetes (brackets) y cada elemento de ser individual y puede repetirse.
  
  final numeros = [1, 2, 3, 4, 5, 6,9,7,7 ,7, 8, 9,9,9, 10];
  
  print("Ejemplo de LIST: $numeros");

  print("Coonfirmamos el tipo de daro para numeros que es: ${numeros.runtimeType}");
  print("Podemos acceder a cierta información de una lista tal como: ");
  print("El tamaño: ${numeros.length}");
  print("""Para acceder a los elementos debemos especificar la posicion entre []
        El primer elemento en la primera posición es : ${numeros[0]}
        El elemento en la segunda posición es: ${numeros[1]}, siempre respetando el posición -1
        El ultimo elemento de la lista seria: ${numeros[numeros.length - 1]} 
        ------------------------------------------------------------------------------------
        De igual manera existen las siguientes alternativas
        Primer elemento ${numeros.first}
        Ultimo elemento ${numeros.last}
        
        Tambien tenemos acceso a algunos metodos que permiten la transformacion o filtrado
        Por ejemplo usar reserved para invertir el orden original: ${numeros.reversed}
        Es importante observar que la funcion reserved ha transformada las LIST orfinal y 
        la retorna como un ITERABLE
        """);
    
  final numerosAlreves = numeros.reversed;

  print(
    """Los iterables son estructuras de ddatos que DART y otros lenguajes para
    optimizar en termino de velocidad el acceso a los datos y propiedades"""
  );
  print("Ejemplo de un ITERABLE : $numerosAlreves");
  print("""
  Confirmamos el tipo de dato para NUMEROSALREVES que es: ${numerosAlreves.runtimeType}""");
  
  print("De igual manera podemos transformar una lista ITERABLE  y viceversa");
  print(
    """
    Convertimos el ITERABLE a LISTA usando .toList(): ${numerosAlreves.toList()} y
    verificamos su tipo de dato ${numerosAlreves.toList.runtimeType}
    """
  );

  //Conjunto de datos (SET)
  // Un set es una estructura de datos utilizada por DART, que simplifica los elementos eliminando los duplicados.


  print("""
  Veamos que pasa con los Conjuntos (SET)
  Convertimos en ITERABLE en un SET  usando .toSET: ${numerosAlreves.toSet()}
  Podemos visualizar en el resultado que el SET a eliminado los duplicados y ahora delimita los datos 
  usando {}
  """);

  //De igual manera podemos ralizar operaciones para el filtrado de elementos  usando where ()

  final numerosMayoresA5 = numeros.where((int num) {
    return num > 5; 
  });

  print("""
  Hemos filtrado sobnre la LIST solo los elementos mayores a 5:
  Resultado de Filtro: ${numerosMayoresA5}
  """);
  print(" Eliminamos duplicados ... ${numerosMayoresA5.toSet()}");




}

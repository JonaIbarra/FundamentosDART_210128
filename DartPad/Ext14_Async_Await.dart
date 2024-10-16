void main() async {
  
  // Inicio del programa
  print('Inicio del programa');
  
  try {
    // Llamamos a la función httpGet, que simula hacer una petición a una URL
    // Utilizamos 'await' porque es una función asíncrona y queremos esperar su respuesta
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si la petición es exitosa, imprimimos el valor que recibimos
    print(value);
    
  } catch (err) {
    // Si ocurre un error, lo atrapamos en el bloque catch y mostramos el mensaje del error
    print('Tenemos un error: $err');
  }
  
  // Fin del programa
  print('Fin del programa');
}

// Función asíncrona que simula una petición HTTP
Future<String> httpGet(String url) async {
  
  // Simulamos una espera de 1 segundo como si estuviéramos esperando una respuesta de la red
  await Future.delayed(const Duration(seconds: 1));
  
  // Forzamos un error en la petición lanzando una excepción
  throw 'Error en la petición';
  
  // Si no hubiera error, aquí devolveríamos una respuesta simulada
  // return 'Tenemos un valor de la petición';
}

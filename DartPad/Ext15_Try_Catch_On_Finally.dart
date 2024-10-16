void main() async {
  
  // Inicio del programa
  print('Inicio del programa');
  
  try {
    // Llamamos a la función httpGet, que simula hacer una petición a una URL
    // 'await' espera el resultado porque es una función asíncrona
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si la petición es exitosa, imprimimos el valor recibido
    print('éxito: $value');
    
  } on Exception catch(err) {
    // Si se lanza una excepción del tipo Exception, la atrapamos aquí
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    // Si ocurre cualquier otro tipo de error, lo atrapamos aquí
    print('OOP!! algo terrible pasó: $err');
    
  } finally {
    // Este bloque se ejecuta siempre, independientemente de si hubo un error o no
    print('Fin del try y catch');
  }
  
  // Fin del programa
  print('Fin del programa');
}

// Función asíncrona que simula una petición HTTP
Future<String> httpGet(String url) async {
  
  // Simulamos un retraso de 1 segundo, como si esperáramos la respuesta de una petición en la red
  await Future.delayed(const Duration(seconds: 1));
  
  // Lanzamos una excepción del tipo Exception, simulando un error en la petición
  throw Exception('No hay parámetros en el URL');
  
  // Alternativamente, podríamos lanzar otro tipo de error o devolver un valor exitoso
  // throw 'Error en la petición';
  
  // return 'Tenemos un valor de la petición';
}

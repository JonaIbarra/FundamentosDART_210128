void main() {
  // Declaración de las Variables de Personas
  final miembroUno = MiembroGym(
      id: 300,
      cortesyTitle: "Sr.",
      name: "Carlos",
      firstLastName: "Ramírez",
      secondLastName: "Martínez",
      gender: "Hombre",
      bloodGroup: "A+",
      photoURL: "images/clients/300.png",
      curp: "RAMC921005HPLRN06",
      birthdate: DateTime(1992, 10, 05),
      isActive: true,
      createdAt: DateTime.now(),
      empleado: Fue_Empleado.no
  );

  final miembroDos = MiembroGym(
      id: 200,
      cortesyTitle: "Sr.",
      name: "Luis",
      firstLastName: "Gómez",
      secondLastName: "Fernández",
      gender: "Hombre",
      bloodGroup: "B+",
      photoURL: "images/clients/200.png",
      curp: "GOML900305HPLRN08",
      birthdate: DateTime(1990, 03, 05),
      isActive: true,
      createdAt: DateTime(2020, 02, 15),
      empleado: Fue_Empleado.si
  );

  final miembroTres = MiembroGym(
      id: 150,
      cortesyTitle: "Sra.",
      name: "María",
      firstLastName: "López",
      secondLastName: "Hernández",
      gender: "Mujer",
      bloodGroup: "O-",
      photoURL: "images/clients/150.png",
      curp: "LOPM850710MPLRN12",
      birthdate: DateTime(1985, 07, 10),
      isActive: true,
      createdAt: DateTime(2018, 06, 20),
      empleado: Fue_Empleado.no
  );

  // Lista de todos los miembros
  final List<MiembroGym> miembros = [miembroUno, miembroDos, miembroTres];

  // Imprimir detalles de todos los miembros
  printAllMembersDetails(miembros);
}

// Función que imprime los detalles de todos los miembros
void printAllMembersDetails(List<MiembroGym> miembros) {
  for (var miembro in miembros) {
    miembro.printDetails();  // Llamada al método que imprime los detalles
    print('------------------------');
  }
}

// Enum para tipo de usuario
enum TipoUsuario { nuevo, registrado }

// Enum para indicar si fue empleado
enum Fue_Empleado { si, no }

// Abstracción de la clase Persona
abstract class Person {
  int id;
  String cortesyTitle;
  String name;
  String firstLastName;
  String secondLastName;
  String gender;
  String bloodGroup;
  String photoURL;
  String curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  final TipoUsuario tipo;
  final Fue_Empleado empleado;

  Person({
    required this.id,
    required this.cortesyTitle,
    required this.name,
    required this.firstLastName,
    required this.secondLastName,
    required this.gender,
    required this.bloodGroup,
    required this.photoURL,
    required this.curp,
    required this.birthdate,
    required this.isActive,
    required this.createdAt,
    required this.tipo,
    required this.empleado,
  });

  void cancelMembership();
}

// Implementación de la clase MiembroGym
class MiembroGym extends Person {
  MiembroGym({
    required int id,
    required String cortesyTitle,
    required String name,
    required String firstLastName,
    required String secondLastName,
    required String gender,
    required String bloodGroup,
    required String photoURL,
    required String curp,
    required DateTime birthdate,
    required bool isActive,
    required DateTime createdAt,
    TipoUsuario tipo = TipoUsuario.nuevo,
    Fue_Empleado empleado = Fue_Empleado.no
  }) : super(
          id: id,
          cortesyTitle: cortesyTitle,
          name: name,
          firstLastName: firstLastName,
          secondLastName: secondLastName,
          gender: gender,
          bloodGroup: bloodGroup,
          photoURL: photoURL,
          curp: curp,
          birthdate: birthdate,
          isActive: isActive,
          createdAt: createdAt,
          tipo: tipo,
          empleado: empleado,
        );

  @override
  void cancelMembership() {
    isActive = false;  // Cancela la membresía
  }

  // Método para imprimir los detalles de la persona
  void printDetails() {
    print('ID: $id');
    print('Nombre Completo: $cortesyTitle $name $firstLastName $secondLastName');
    print('Género: $gender');
    print('Grupo Sanguíneo: $bloodGroup');
    print('CURP: $curp');
    print('Fecha de Nacimiento: $birthdate');
    print('Activo: $isActive');
    print('Fecha de Registro: $createdAt');
    print('Tipo de Usuario: ${tipo == TipoUsuario.nuevo ? 'Nuevo' : 'Registrado'}');
    print('¿Fue empleado?: ${empleado == Fue_Empleado.si ? 'Sí' : 'No'}');
    print('URL de la foto: $photoURL');
  }
}

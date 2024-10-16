// Función principal
void main() {
  SistemaRegistro sistema = SistemaRegistro();

  // Caso 1: Se crea un nuevo miembro registrado hoy.
  Miembro juan = Miembro(
    titulo: 'Lic.',
    nombre: 'Juan',
    primerApellido: 'Pérez',
    segundoApellido: 'López',
    genero: 'Masculino',
    grupoSanguineo: 'O+',
    fechaNacimiento: DateTime(1990, 4, 15),
    curp: 'JUPL900415HDFRPN01',
    fueTrabajador: false,
    tieneMembresia: true,
    fechaRegistro: DateTime.now(),
  );

  sistema.registrarMiembro(juan);

  // Caso 2: Miembro que trabajó en la empresa.
  Miembro maria = Miembro(
    titulo: 'Dra.',
    nombre: 'María',
    primerApellido: 'García',
    segundoApellido: 'Hernández',
    genero: 'Femenino',
    grupoSanguineo: 'A-',
    fechaNacimiento: DateTime(1980, 3, 22),
    curp: 'MAGH800322MDFLRN01',
    fueTrabajador: true,
    tieneMembresia: true,
    fechaRegistro: DateTime(2021, 12, 5),
  );

  sistema.registrarMiembro(maria);

  // Caso 3: Miembro al que se le cancela la membresía.
  Miembro pedro = Miembro(
    titulo: 'Ing.',
    nombre: 'Pedro',
    primerApellido: 'Ramírez',
    segundoApellido: 'Sánchez',
    genero: 'Masculino',
    grupoSanguineo: 'B+',
    fechaNacimiento: DateTime(1995, 7, 10),
    curp: 'PERS950710HDFRNX05',
    fueTrabajador: false,
    tieneMembresia: true,
    fechaRegistro: DateTime(2023, 6, 20),
  );

  sistema.registrarMiembro(pedro);

  // Listar miembros

  sistema.listarMiembros().forEach((miembro) => print(miembro));

  // Cancelar membresía de un miembro (Pedro)
  pedro.cancelarMembresia();

  // Eliminar un miembro (Pedro)
  sistema.eliminarMiembro(pedro.nombre, pedro.primerApellido);
  print('Lista de miembros después de la eliminación:');
  sistema.listarMiembros().forEach((miembro) => print(miembro));
}


// Clase abstracta que representa a una persona con atributos básicos.
abstract class Persona {
  String titulo;
  String nombre;
  String primerApellido;
  String segundoApellido;
  String genero;
  String grupoSanguineo;
  DateTime fechaNacimiento;
  String curp;

  Persona({
    required this.titulo,
    required this.nombre,
    required this.primerApellido,
    required this.segundoApellido,
    required this.genero,
    required this.grupoSanguineo,
    required this.fechaNacimiento,
    this.curp = 'No aplica',
  });

  @override
  String toString() {
    return '''
    --------------------------------------------------------------
    DATOS DE LA PERSONA
    --------------------------------------------------------------
    Título: $titulo
    Nombre completo: $nombre $primerApellido $segundoApellido
    CURP: $curp
    Género: $genero, Grupo Sanguíneo: $grupoSanguineo
    Fecha de nacimiento: $fechaNacimiento
    --------------------------------------------------------------
    ''';
  }
}

// Clase que extiende la clase abstracta Persona para representar a un Miembro.
class Miembro extends Persona {
  bool fueTrabajador;
  bool tieneMembresia;
  DateTime fechaRegistro;

  Miembro({
    required String titulo,
    required String nombre,
    required String primerApellido,
    required String segundoApellido,
    required String genero,
    required String grupoSanguineo,
    required DateTime fechaNacimiento,
    String curp = 'No aplica',
    required this.fueTrabajador,
    required this.tieneMembresia,
    required this.fechaRegistro,
  }) : super(
            titulo: titulo,
            nombre: nombre,
            primerApellido: primerApellido,
            segundoApellido: segundoApellido,
            genero: genero,
            grupoSanguineo: grupoSanguineo,
            fechaNacimiento: fechaNacimiento,
            curp: curp);

  void cancelarMembresia() {
    tieneMembresia = false;
    print('Se ha cancelado la membresía del miembro.');
  }

  @override
  String toString() {
    return '''
    ${super.toString()}
    --------------------------------------------------------------
    DATOS DEL MIEMBRO
    --------------------------------------------------------------
    Fue trabajador: $fueTrabajador
    Tiene membresía: $tieneMembresia
    Fecha de registro: $fechaRegistro
    --------------------------------------------------------------
    ''';
  }
}

// Interfaz para la gestión de miembros
abstract class RegistroMiembro {
  void registrarMiembro(Miembro miembro);
  void eliminarMiembro(String nombre, String primerApellido);
  List<Miembro> listarMiembros();
}

// Clase que implementa la interfaz RegistroMiembro
class SistemaRegistro implements RegistroMiembro {
  List<Miembro> miembros = [];

  @override
  void registrarMiembro(Miembro miembro) {
    miembros.add(miembro);
    print('Miembro registrado: ${miembro.nombre} ${miembro.primerApellido}');
  }

  @override
  void eliminarMiembro(String nombre, String primerApellido) {
    miembros.removeWhere((m) =>
        m.nombre == nombre && m.primerApellido == primerApellido);
    print('Miembro llamado $nombre $primerApellido ha sido eliminado.');
  }

  @override
  List<Miembro> listarMiembros() {
    return miembros;
  }
}



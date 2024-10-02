void main(){

    //Contructores nombrado
    //Caso de prueba 2 ---Enviadno todos

    final juanPerez = Person(
        ID: 250,
        cortesyTitle: "Sr",
        name: "Juan Manuel",
        firstLastName: "Pérez",
        secondLastName: "Rodriguez",
        gender: "Hombre",
        bloodGroup: "O+",
        photoURL: "images/clients/250.png",
        curp: "PERJ920805HPLRN07",
        birthdate: DateTime(1992, 08, 05),
        isActive: true,
        createdAt: DateTime(2024, 09, 2024, 11, 05, 16)
    );

    print(juanPerez);

    // CASO DE PRUEBA 2 -- Enviando solo los datos requeridos 
     
     final marthaFlores = Person(
        ID: 125,
        name: 'Martha',
        firstLastName: "Flores",
        gender: "Mujer",
        bloodGroup: "0-",
        birthdate: DateTime(2008, 01, 08)
     );

     print(marthaFlores);


}


class Person{
    int ID;
    String? cortesyTitle;
    String name;
    String firstLastName;
    String? secondLastName;
    String gender;
    String bloodGroup;
    String? photoURL;
    String? curp;
    DateTime birthdate;
    bool isActive;
    DateTime createdAt;
    DateTime? updateAt;

    Person(
        { 
            required this.ID,
            this.cortesyTitle,
            required this.name,
            required this.firstLastName,
            this.secondLastName,
            required this.gender,
            required this.bloodGroup,
            this.photoURL,
            this.curp,
            required this.birthdate,
            this.isActive = true,
            DateTime? createdAt,
            this.updateAt
            
    })

    : createdAt = createdAt ?? DateTime.now();


    @override
    String toString(){
        final String formatedBirthDate =
            "${birthdate.day.toString().padLeft(2, '0')}/" +
                "${birthdate.month.toString().padLeft(2, '0')}/${birthdate.year}";

        final String formatedCreateDate = 
            "${createdAt.day.toString().padLeft(2, '0')}/" +
                "${createdAt.month.toString().padLeft(2, '0')}/${createdAt.year} ${createdAt.hour.toString().padLeft(2,'0')}:${createdAt.minute.toString().padLeft(2,'0')}:${createdAt.minute.toString().padLeft(2,'0')}";

                curp ??= "No registrado";
                if (curp == "") curp = "No registrado";

                String status = "Sin definir";
                if (isActive)
                status = "Activo";

                return """
                ----------------------------------------------------------
                DATOS DE LA PERSONA
                ----------------------------------------------------------
                ID: $ID,
                Nombre: $name $firstLastName $secondLastName
                Género: $gender
                Grupo Sanguineo: $bloodGroup
                Fecha de Nacimiento: $formatedBirthDate
                Foto: $photoURL
                CURP: $curp
                Estatus: $status
                Fecha de Registro: $formatedCreateDate

                -----------------------------------------------------------
                """;

    }

}
void main(){
    //Clases con paramtros posicionales
    final  wolverine = Hero('Logan', 'Regeneracion');
    //Clases con parametros no posicionales
    final  xmen = Team(type: "Heroes",name: "X-Men");
    final brotherhood = Team(name: "The BrOtherhood of Evil Mutants");


    print(wolverine);
    print(wolverine.name);
    print(wolverine.power);
    print("---------------------------------------");
    print(xmen);
    print(xmen.name);
    print(xmen.type);
    //Invocando al metodo reescrito con #override
    print(xmen.toString());
    print("---------------------------------------");
    print(brotherhood.name);
    print(brotherhood.type);
    //Invocando al metodo reescrito con #override
    print(brotherhood.toString());
}

class Hero {
    String name;
    String power;




    Hero(String pName,  String pPower)
    :name =pName,
    power =pPower;

}

class Team{
    String name;
    String type;

    Team({required this.name, this.type= "No definido"});
    
    String toString(){
        return 'Grupo: $name , Tipo: $type';
    }


}



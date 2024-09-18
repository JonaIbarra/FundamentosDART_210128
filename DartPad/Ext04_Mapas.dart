void main() {
  
  final Map <String, dynamic > pokemon = {
    'name' : 'Ditto',
    'hp' : 100,
    'isAlive': true,
    'abilities': ['Impact Trueno', 'Cola de Hierro', 'Rapido'],
    'sprites' : 
    {
      1: "pikachu/front.png",
      2: "pikachu/back.png"
    }     
  };
  
  final Map<String, dynamic> trainer ={
    'Name' : 'Ash Ketchup',
    'Glender': 'Male',
    'Age' : 12,
    'isGymnasiumLeader' : false
  };


  final pokemons = {
    1: "Pikachu",
    2: "Charmander",
    3: "Squirtle",
    4: "Pidgeot"
  };


  print("""
  Los datos del Pokemon son usando el Mapa: 
  -----------------------------------
  Pokemon = $pokemon
  Trainer = $trainer
  Pokemons = $pokemons
  -----------""");
  print("****************************************************");





// print ("""

//   // Reto 01: Obtener el valor independiente de las imagenes de Front y Back del Pokemon

//   // Front: ${(pokemon[sprites])[1]}
//   // Back: ${(pokemon[sprites])[2]}


// // Dado que la solucion ya esta obsoleta lo que queda es crear una nueva variable



// """)

  print("""
  Accediendo a las propiedades del pokemon usando los braquets/ 
  corchetes []: 
  -----------------------------------
  Nombre = ${pokemon['name']}
  HP = ${pokemon['hp']}
  Vivo = "${pokemon['isAlive']}
  Sprites = "${pokemon['sprites']}

  Front = "${pokemon['tmp_sprites'][1]}
  Back = "${pokemon['tmp_sprites'][2]}
  """);
}

void main(){
  final mySquqre = Square ( side:10);
  mySquqre.side = -5;

  print ('area: ${mySquqre.area }');
}

class Square{
  double _side ;// side * side 

  Square({required double side })
    :_side = side;
  double get area {
    return _side * _side ;
    
  }

  set side( double value ) {
    print ( 'El valor asignado al lado $value' ) ;
    if ( value < 0 ) throw 'El valor debe de ser mayor a 0.';
    _side = value;
  }

  double calculateArea(){
    return _side * _side;
  }
}
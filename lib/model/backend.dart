import 'fruta.dart';

class Backend {

  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _frutas=[
     Fruta(id: 1, name: ' Pitahaya', vitaminas: 'Son ricas en vitaminas A, C y acido fólico', beneficios:'Su mayor aporte al consumirlo, es que aportan gran cantidad de azucares, agua y minerales.' , semanas: '2 a 4 semanas ' , tipo: 'Tropicales'),
      Fruta(id: 2, name: 'Grosellas', vitaminas: 'Contienen mucha fibra, vitamina C, hierro, vitamina A, potasio, magnesio', beneficios: 'Bajos en azúcares y con un alto contenido en antioxidantes y flavanoides. ' , semanas: '3 a 5 semanas', tipo: 'De Bosque'),
      Fruta(id: 3, name: 'Mandarina', vitaminas: 'Aporta dosis considerables de vitamina C aunque en menor cantidad que otras frutas.', beneficios: 'El alto nivel de nutrientes de la mandarina nos protege contra problemas cardíacos, infecciones, anemias, alergias ' , semanas: '1 a 3 semanas', tipo: 'Cítricas'),
      Fruta(id: 4, name: 'Pistachos', vitaminas: 'la vitamina E , zinc, proteínas', beneficios: 'Los crujientes nos aportan una textura agradable que se complementa perfectamente con el resto de texturas de un plato.' , semanas: '1 a 2 semanas', tipo: 'Secas'),
       Fruta(id: 5, name: 'La Lima', vitaminas: 'Posee vitamina C, potasio, ácido cítrico, fibra y una alta cantidad de agua', beneficios: ' Normalizar el exceso de ácido clorhídrico en el estómago y evita la formación de úlceras.', semanas: '2 a 3 semanas', tipo: 'Cítricas'),
  ];


 List<Fruta> getFrutas(){
   return _frutas;
 }
 


}

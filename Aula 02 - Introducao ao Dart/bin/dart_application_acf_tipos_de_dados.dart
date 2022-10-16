import 'dart:io';

import 'package:dart_application_acf_tipos_de_dados/dart_application_acf_tipos_de_dados.dart'
    as dart_application_acf_tipos_de_dados;

/// Função de inicialização da aplicação, é o gatilho do projeto.
/**
 * Também é um comentário de Função, tuliziado para documentação
 */
void main(List<String> arguments) {
  // Comentário de uma linha
  /* Comentário
  De várias
  Linhas */

  //Saída
  print("Hello World!");

  //Vars tipadas
  int year = 2019;
  String bestMarvelMovie = 'Avengers: Endgame';
  double tomatometer = 0.94;
  print("\nMeu filme favorito é: "
      '"$bestMarvelMovie"'
      ", ele teve $tomatometer de aprovação e foi lançado em $year.");
  print('\u{1F3AF} é ótimo para criar 📱');

  //Vars inferenciadas
  var lang = 'Dart';
  var version = Platform.version;
  num androidSdk = 30.1;
  num flutterSdk = 3;

  /*var a = '10';
  convertendo string para int
  int aInt = int.parse(a);*/
  /*var a = 10.0;
  convertendo double para int
  int aInt = a.toInt();*/

  print('\nlang is ${lang.runtimeType}');
  print('version is ${version.runtimeType}');
  print('androidSdk is ${androidSdk.runtimeType}');
  print('flutterSdk is ${flutterSdk.runtimeType}');

  //Vars dinamicas
  print('\nDynamics');
  dynamic value = 10;
  print('\nvalue: "$value" is: ${value.runtimeType}');

  value = "Texto";
  print('\nvalue: "$value", now is: ${value.runtimeType}');

  value = 20.49;
  print('\nvalue: "$value", now is: ${value.runtimeType}');

  value = true;
  print('\nvalue: "$value", now is: ${value.runtimeType}');

  //Constantes
  /* O modificador const é para declarar valores imutáveis 
  que podem ser definidos antecipadamente pelo compilador.
  */
  const framework = 'Flutter';

  //const horaAtual = DateTime.now();
  //Vai dar erro, pois em tempo de compilação, não tem como o programa saber a hora atual.
  final horaAtual = DateTime
      .now(); //Esse funciona, pois a final é em tempo de execução, não compilação

  //Testar metodos dos tipos em Dart.
  var a = 11;
  print('\n$a é ímpar?: ${a.isOdd ? 'Sim' : 'Não'}');

  var treinamento = 'Aceleração Flutter';
  print(
      '\nTreinamento: ${treinamento.toUpperCase().replaceFirst('FLUTTER', 'F.L.U.T.T.E.R')}');

  //Collections
  var lista = [6, 7, 8, 9, 10];
  print("\nLista inferencia:");
  print(lista);
  print(lista[1]);

  List<int> listatipada = [1, 2, 3, 4, 5];
  print("\nLista tipada:");
  print(listatipada);
  print(listatipada[1]);

  print('\n');

  lista.forEach((item) => print(item));

  print('\nMaps:');

  var mapa = {'SP': 'São Paulo', 'CE': 'Ceará', 'AM': 'Amazonas'};

  mapa.forEach((key, value) => print('$key: $value'));
  //ou
  //mapa.forEach((sigla, estado) => print('$sigla: $estado'));

  print(mapa['CE']);

  print('\n');

  var filmes = <String>{
    'Avengers: Age of Ultron',
    'Avengers: Infinity War',
    'Avengers: Endgame'
  };

  filmes.add('Avengers: Age of Ultron');

  print(filmes);

  listatipada.add(100);

  print(listatipada);
}

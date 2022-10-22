import 'dart:math';

import 'package:f290_acf_functions_classes_and_poo/medico.dart';
import 'package:f290_acf_functions_classes_and_poo/funcionario.dart';
import 'package:f290_acf_functions_classes_and_poo/pessoa.dart';

void main(List<String> arguments) {
  // exibirNumeroDaSorte(limite: 1000, nome: 'Fernando', metodo: gerarNumeroAleatorio);

  var pessoa =
      Pessoa('Fernando', email: 'teste@gmail.com', telefone: '(19)99999-9999');
  print(pessoa);

  var pessoaPro = Pessoa.perfilProfissional('Roberto',
      linkedin: 'Linkedin.com/in/roberto-hernandez',
      email: 'robertohernandez@gmail.com');
  print(pessoaPro);

  var pessoaSocial = Pessoa.perfilSocial('Felipe',
      facebook: 'Felipe Robson', twitter: 'Felipinho199');
  print(pessoaSocial);

  pessoa.enviaremail();

  var m = Medico(
      pNome: 'Cleber',
      pEmail: 'Clebinho@gmail.com',
      pTelefone: '(19) 98765-4321');
  print(m);
  m.fazerCirurgia(pessoa);

  m.autorizarFerias(pessoa);


}

//void exibirNumeroDaSorte(int limite, [String nome = 'Anônimo']) {
void exibirNumeroDaSorte({
  int limite = 10,
  String nome = 'Anônimo',
  required Function metodo,
}) {
  //int numerodasorte = Random().nextInt(limite);
  int numerodasorte = metodo(limite);
  //print('${nome ??= 'Anônimo'}, seu número da sorte é: $numerodasorte');
  print('$nome, seu número da sorte é: $numerodasorte');
}

int gerarNumeroAleatorio(int limite) {
  return Random().nextInt(limite);
}

import 'package:f290_acf_functions_classes_and_poo/funcionario.dart';
import 'package:f290_acf_functions_classes_and_poo/pessoa.dart';

class Medico extends Funcionario with Gerente implements IPagamento {
  int crm;

  Medico({String? pNome, String? pEmail, String? pTelefone, this.crm = 0})
      : super(nome: pNome, email: pEmail, telefone: pTelefone);

  fazerCirurgia(Pessoa pessoa) {
    print('Cirurgia realizada com sucesso no paciente ${pessoa.nome}');
  }

  @override
  pagarFuncionarios(List<Funcionario> funcionarios) {
    funcionarios.forEach((f) {
      print('Pagamento mensal efetuado para o ${f.nome}');
    });
  }

  @override
  String toString() =>
      'Medico(nome= $nome, email= $email, telefone= $telefone, crm= $crm)';
}

mixin Gerente {
  autorizarFerias(Pessoa p) {
    print('Ferias autorizadas para ${p.nome}');
  }
}

abstract class IPagamento {
  pagarFuncionarios(List<Funcionario> funcionarios);
}

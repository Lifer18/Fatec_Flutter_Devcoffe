class Funcionario {
  String? nome;
  String? email;
  String? telefone;

  Funcionario({
    this.nome,
    this.email,
    this.telefone,
  });

  @override
  String toString() =>
      'Funcionario(nome= $nome, email= $email, telefone= $telefone';
}

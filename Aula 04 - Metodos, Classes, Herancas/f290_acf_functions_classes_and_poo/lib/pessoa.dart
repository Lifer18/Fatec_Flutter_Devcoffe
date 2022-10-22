class Pessoa {
  // Atributos
  String? _nome;
  String? email;
  String? telefone;
  String? linkedin;
  String? github;
  String? facebook;
  String? twitter;

  //Comportamentos
  String get nome => _nome!;
  // set nome(String value) => _nome = value;
  set nome(String value) {
    if (value.isEmpty) {
      throw Exception('Valor invalido para atribuição de nome.');
    }
    _nome = value;
  }

  // Construtor de classe é um metodo especial para criação de objetos
  Pessoa(this._nome,
      {this.email,
      this.telefone = '(19)98888-8888',
      this.linkedin,
      this.github});

  Pessoa.perfilProfissional(this._nome,
      {required this.linkedin, required this.email});

  Pessoa.perfilSocial(this._nome,
      {required this.facebook, required this.twitter});

  //toString() é um metodo que representa os dados da classe
  @override
  String toString() {
    return 'Pessoa(nome= $nome, email= $email, telefone= $telefone, linkedin= $linkedin, github= $github, facebook= $facebook, twitter= $twitter)';
  }

  enviaremail({String? para, String? mensagem, String? conteudo}) {
    print('E-mail enviado com sucesso!');
  }
}

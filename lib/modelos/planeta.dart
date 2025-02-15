class Planeta {
  int? id;
  String nome;
  double tamanho;
  double distancia;
  String? apelido;
  String? formato;
  double populacao;

  Planeta({
    this.id,
    required this.nome,
    required this.tamanho,
    required this.distancia,
    this.apelido,
    this.formato,
    required this.populacao,
  });

  Planeta.vazio()
    : nome = '',
      tamanho = 0,
      distancia = 0,
      apelido = '',
      formato = '',
      populacao = 0;

  factory Planeta.fromMap(Map<String, dynamic> map) {
    return Planeta(
      id: map['id'],
      nome: map['nome'],
      tamanho: map['tamanho'],
      distancia: map['distancia'],
      apelido: map['apelido'],
      formato: map['formato'],
      populacao: map['populacao'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'tamanho': tamanho,
      'distancia': distancia,
      'apelido': apelido,
      'formato': formato,
      'populacao': populacao,
    };
  }
}
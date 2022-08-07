class Personagem {
  final String nomePersonagem;
  final String imagem;

  Personagem(this.nomePersonagem, this.imagem);

  @override
  String toString() {
    return 'Personagem{nomePersonagem: $nomePersonagem, imagem: $imagem}';
  }
}

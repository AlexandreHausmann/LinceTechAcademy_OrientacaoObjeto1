import 'dart:math';

// Definindo a classe Pessoa
class Pessoa {
  String _nome;
  int _idade;
  double _altura;

  // Construtor
  Pessoa(this._nome, this._idade, this._altura);

  // Setter para a idade com validação
  set idade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print("Idade não pode ser negativa.");
    }
  }

  // Getter para a idade
  int get idade => _idade;

  // Getter para o nome
  String get nome => _nome;

  // Getter para a altura
  double get altura => _altura;
}

void main() {
  // Gerando valores aleatórios para idade e altura
  var random = Random();
  var nome = "Zeca"; // Você pode definir qualquer nome aqui

  var idadeAleatoria = random.nextInt(100) + 1; // Entre 1 e 100
  var alturaAleatoria = (random.nextDouble() * (2.3 - 1.0)) + 1.0; // Entre 1.0 e 2.3

  // Criando objeto da classe Pessoa
  var pessoa = Pessoa(nome, idadeAleatoria, alturaAleatoria);

  // Exibindo os valores no console
  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("Altura: ${pessoa.altura.toStringAsFixed(2)}");
}

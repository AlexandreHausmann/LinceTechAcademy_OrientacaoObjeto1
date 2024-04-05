// Definindo a classe Produto
class Produto {
  String nome;
  double preco;

  // Construtor
  Produto(this.nome, this.preco);

  // Método para aplicar desconto
  double desconto(double percentualDesconto) {
    // Calcula o valor do desconto
    double desconto = preco * (percentualDesconto / 100);
    // Retorna o novo preço com desconto
    return preco - desconto;
  }
}

void main() {
  // Criando uma lista de produtos
  List<Produto> produtos = [
    Produto("Produto A", 100.00),
    Produto("Produto B", 200.00),
    Produto("Produto C", 300.00),
    Produto("Produto D", 400.00),
    Produto("Produto E", 500.00)
  ];

  // Aplicando desconto e imprimindo os resultados
  for (var produto in produtos) {
    double novoPreco = produto.desconto(10); // Aplicando desconto de 10%
    print("Novo preço do produto ${produto.nome} (com desconto): $novoPreco");
  }
}

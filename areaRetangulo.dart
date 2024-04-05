class Retangulo {
  // Atributos
  double largura;
  double altura;

  // Construtor
  Retangulo(this.largura, this.altura);

  // Método para calcular a área do retângulo
  double calcularArea() {
    return largura * altura;
  }
}

void main() {
  // Criando uma instância do Retangulo
  Retangulo meuRetangulo = Retangulo(10.0, 10);

  // Calculando a área do retângulo
  double area = meuRetangulo.calcularArea();

  // Imprimindo a área do retângulo no console
  print('Área do retângulo: $area');
}
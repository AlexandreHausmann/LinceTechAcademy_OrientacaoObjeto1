class ContaBancaria {
  // Atributos
  double saldo;
  String titular;

  // Construtor
  ContaBancaria(this.titular, this.saldo);

  // Método para depositar dinheiro na conta
  void depositar(double valor) {
    saldo += valor;
    print('Depósito de $valor realizado com sucesso.');
  }

  // Método para sacar dinheiro da conta
  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de $valor realizado com sucesso.');
    } else {
      print('Saldo insuficiente para realizar o saque.');
    }
  }

  // Método para imprimir o saldo atual
  void imprimirSaldo() {
    print('Saldo atual: $saldo');
  }
}

void main() {
  // Criando uma instância da ContaBancaria
  ContaBancaria minhaConta = ContaBancaria('João', 1000.0);

  // Realizando operações na conta
  minhaConta.depositar(500.0);
  minhaConta.sacar(210.0);
  minhaConta.imprimirSaldo();
}
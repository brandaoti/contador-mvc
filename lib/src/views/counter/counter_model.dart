class CounterModel {
  int _counter = 0;

  // ? Metodo especial para retornar variaveis privada
  int get counter {
    return _counter;
  }

  // ! Função para retornar outra função, closure
  void operationCounter(Function(int) func) {
    _counter = func(_counter);
  }
}

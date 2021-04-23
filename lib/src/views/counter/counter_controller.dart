import 'counter_model.dart';

class CounterController {
  final model = CounterModel();

  // ? Metodo para acessar o valor do model
  String get counter {
    return model.counter.toString();
  }

  // ? Metodo para incrementar, passando closure
  void incrementCounter() {
    model.operationCounter(_add);
  }

  void get decrementCounter {
    model.operationCounter(_sub);
  }

  void get cleanCounter {
    model.operationCounter(_clean);
  }

  // Aumentar counter sem limite
  int _add(int value) {
    return ++value;
  }

  // Diminuir counter com verificação ternario
  int _sub(int value) {
    return value <= 0 ? value = 0 : --value;
  }

  int _clean(int value) {
    return value = 0;
  }
}

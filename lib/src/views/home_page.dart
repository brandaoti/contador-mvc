import 'package:desafio003/src/shared/components/counter_floating_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  // ? Closure
  void operation(Function func) {
    setState(() {
      func();
    });
  }

  // ? Método para add
  void _add() {
    _count++;
  }

  // ? Método para diminuir
  void _sub() {
    _count <= 0 ? _count = 0 : _count--;
  }

  // ? Limpar contador
  void _clean() {
    _count = 0;
  }

  // ? AlertDialog
  void _alertDialog() {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.warning_rounded, color: Colors.red, size: 50),
              Text('Limpar contador...')
            ],
          ),
          content: FittedBox(
              child: Text('Tem certeza que deseja executar essa ação?')),
          actions: [
            TextButton(
                child: Text('Sim',
                    style: TextStyle(color: Theme.of(context).accentColor)),
                onPressed: () {
                  operation(_clean);
                  Navigator.pop(context);
                }),
            TextButton(
              child: Text('Não',
                  style: TextStyle(color: Theme.of(context).accentColor)),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubos Academy - Desafio 003'),
        brightness: Brightness.dark,
        centerTitle: true,
      ),
      // !

      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // * Contador
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Contador',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '$_count',
                  style: TextStyle(
                    fontSize: 96,
                    shadows: [
                      Shadow(
                        color: Colors.grey.withOpacity(.5),
                        blurRadius: 2,
                        offset: Offset(2, 3),
                      ),
                    ],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // * Botões
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 75, // ! Verificar caso precise remover
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Theme.of(context).primaryColor.withOpacity(.9),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        blurRadius: 2,
                        offset: Offset(4, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FloatActionButton(
                        icon: Icons.add,
                        onPressed: () => operation(_add),
                      ),
                      FloatActionButton(
                        icon: Icons.remove,
                        onPressed: () => operation(_sub),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // ? Action Button
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.warning_amber_rounded, color: Colors.white, size: 30),
        backgroundColor: Colors.red,
        tooltip: 'Limpar contador',
        onPressed: _alertDialog,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // ? Navigator bar
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.8),
              blurRadius: 4,
              offset: Offset(0, -2),
            ),
          ],
        ),
      ),
    );
  }
}

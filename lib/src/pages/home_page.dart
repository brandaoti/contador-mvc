import 'package:desafio003/src/shared/components/FAB_comp.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubos Academy - Desafio 003'),
        centerTitle: true,
      ),
      // !

      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Testando'),
                Text('Testando'),
              ],
            ),
          ),
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
                    color: Colors.blue,
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
                        onPressed: () {},
                      ),
                      FloatActionButton(
                        icon: Icons.remove,
                        onPressed: () {},
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
        child: Icon(Icons.refresh),
        splashColor: Colors.red,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // ? Navigator bar
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.blue,
      ),
    );
  }
}

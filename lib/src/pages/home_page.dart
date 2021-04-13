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
        brightness: Brightness.dark,
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
                Text(
                  'Contador',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '29',
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

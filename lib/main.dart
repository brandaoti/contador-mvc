import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.amberAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cubos Academy - Desafio 003'),
          centerTitle: true,
        ),
        // !

        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ? INfo
              Text('Contador'),
              Text('10'),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 100,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {},
              ),
              FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

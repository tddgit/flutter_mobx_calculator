import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_calculator/calc_state.dart';
import 'package:flutter_mobx_calculator/grid_generator.dart';

final calculator = CalcState();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Observer(
              builder: (_) {
                return Container(
                  color: Colors.white,
                  child: Container(
                    color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            calculator.userInput,
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(25),
                          alignment: Alignment.centerRight,
                          child: Text(
                            calculator.result,
                            style: TextStyle(
                              fontSize: 70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: GridGenerator.buttons.length,
              itemBuilder: (context, index) {
                return Observer(
                  builder: (_) {
                    return GridGenerator.buttons[index];
                  },
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

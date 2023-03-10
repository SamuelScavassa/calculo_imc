import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Cálculo IMC"),
          ),
        ),
        //body: ListView(), permite a rolagem da tela
        body: Column(
          //

          children: [
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Peso"),
                    TextField(
                      keyboardType: TextInputType.number,
                    ),
                    Text("Altura"),
                    TextField(),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Calcular"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.yellow,
                child: Image.asset('images/abaixo.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* 
body: Stack(
          //
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                color: Colors.yellow,
                height: 20,
                width: 20,
              ),
            ),
          ],
        ), */
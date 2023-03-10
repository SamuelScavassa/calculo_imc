import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var txtPeso = TextEditingController();
  final txtAltura = TextEditingController();
  var imagem = 'images/obesidade2.jpg';
  var imcTexto = '';

  //final = static
  void calculaImc() {
    var peso = double.parse(txtPeso.text);
    var altura = double.parse(txtAltura.text);
    var imc = peso / (altura * altura);
    var imcS = imc.toStringAsFixed(2);
    if (imc < 18.5)
      setState(() {
        imagem = 'images/abaixo.jpg';
        imcTexto = 'Seu imc está abaixo: $imcS';
      });
    else if (imc < 24.9)
      setState(() {
        imagem = 'images/ideal.jpg';
        imcTexto = 'Seu imc está normal: $imcS';
      });
    else if (imc < 29.9)
      setState(() {
        imagem = 'images/excesso.jpg';
        imcTexto = 'Seu imc está em excesso: $imcS';
      });
    else if (imc < 39.9)
      setState(() {
        imagem = 'images/obesidade1.jpg';
        imcTexto = 'Seu imc está muito acima: $imcS';
      });
    else
      setState(() {
        imagem = 'images/obesidade2.jpg';
        imcTexto = 'Seu imc está muito acima: $imcS';
      });
  }

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
                      controller: txtPeso,
                    ),
                    Text("Altura"),
                    TextField(
                      controller: txtAltura,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: calculaImc, // () => calculaImc()
                        child: Text("Calcular"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: FittedBox(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image.asset(imagem),
                      Center(
                        child: Text(imcTexto),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
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
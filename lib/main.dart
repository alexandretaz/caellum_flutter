import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          home: Scaffold(
            body:ListarTransferencia(),
            appBar: AppBar(
              title: Text('Minhas Trasnferências')
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
          )
        )
    );

/*class byteBankApp extends StatelessWidget
{

}*/

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);

}

class ListarTransferencia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
    children:<Widget>[
      ItemTransferencia(Transferencia(100.00, 1000)),
      ItemTransferencia(Transferencia(200.00, 1001)),
      ItemTransferencia(Transferencia(300.00, 2000)),
    ],
    );

  }
}

class ItemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text (_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      )

    );
  }
}
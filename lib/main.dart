import 'package:flutter/material.dart';

void main() =>
    runApp(
        byteBankApp()
    );

class byteBankApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:FormulariodeTransferencia(),
    );
  }
}

/******************************************/
/********Formulário de Transferência*******/
/******************************************/

class FormulariodeTransferencia extends StatelessWidget
{
  final TextEditingController _controladorCampoNumeroConta = TextEditingController();
  final TextEditingController _controladorCampoValorTransferencia = TextEditingController();

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Transfira seu dinheiro"),
    ),
    body: Column(
        children:<Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8.0),
            child: TextField(
              controller: _controladorCampoNumeroConta,
              style: TextStyle(
                  fontSize: 24.0
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Número da conta',
                  hintText: '0000'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 2.0),
            child: TextField(
              controller: _controladorCampoValorTransferencia,
              style: TextStyle(
                  fontSize: 24.0
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Valor da Transferência',
                  hintText: '0.00',
                  icon: Icon(Icons.monetization_on),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: ElevatedButton(
            child: Text('Confirmar'),
            onPressed: () {
              debugPrint('Clicou no Confirmar!');
              final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
              final double valor = double.tryParse(_controladorCampoValorTransferencia.text);
              if(numeroConta ==null || valor==null) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                    content: const Text("Revise os campos",
                ),
              action: SnackBarAction(
              label:'Fechar',
              onPressed: ()
              {

              })
              )
                );

              }
              else {
                Transferencia(valor, numeroConta);
                debugPrint("Gravou");
              }
            },
          ),
        )

    ]),
  );
}
}

/*****************************************/

/*****************************************/
/********Controle de Transferência*******/
/*****************************************/


/*****************************************/

/*****************************************/
/********Listagem de Transferência*******/
/*****************************************/
class Transferencia {
  final double _valor;
  final int _numeroConta;

  Transferencia(this._valor, this._numeroConta);

}

class ListarTransferencia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:<Widget>[
          ItemTransferencia(Transferencia(100.00, 1000)),
          ItemTransferencia(Transferencia(200.00, 1001)),
          ItemTransferencia(Transferencia(300.00, 2000)),
        ],
      ),
      appBar: AppBar(
          title: Text('Minhas Trasnferências')
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
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
        title: Text (_transferencia._valor.toString()),
        subtitle: Text(_transferencia._numeroConta.toString()),
      )

    );
  }
}
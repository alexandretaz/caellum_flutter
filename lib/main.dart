import 'package:flutter/material.dart';

void main() =>
    runApp(
        MaterialApp(
          home: Scaffold(
            body: Column(
              children: <Widget>[
                Card(
                  child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('100,00'),
                  subtitle: Text('1000'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.monetization_on),
                    title: Text('500,00'),
                    subtitle: Text('1500'),
                  ),
                ),
              ],
            ),
            appBar: AppBar(
        title: Text('Transferência'),
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
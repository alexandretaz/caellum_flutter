import 'package:flutter/material.dart';

void main() =>
    runApp( Column(children:<Widget>[
        Text(
          'Olá Mundo Flutter',
          textDirection: TextDirection.ltr,
        ),
        Text("Outra mensagem para o usuário", textDirection: TextDirection.ltr)
      ],
    )
    );

/*class byteBankApp extends StatelessWidget
{

}*/
import 'package:flutter/material.dart';

class BotaoAjustes extends StatelessWidget {
  final String titulo;
  final IconData icone;
  final Function funcao;

  BotaoAjustes({
    @required this.icone,
    @required this.funcao,
    @required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: largura * 0.9,
      height: altura * 0.085,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Theme.of(context).primaryColor,
        onPressed: funcao,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icone,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '$titulo',
              style: TextStyle(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

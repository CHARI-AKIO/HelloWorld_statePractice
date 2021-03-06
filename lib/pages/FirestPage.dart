import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  FirstPage(this.subtitle);
  String subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title : Text(subtitle)
        ),
        body :Center(
          child: TextButton(
            child: Text("最初のページに戻る"),
            // （1） 前の画面に戻る
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        )
    );
  }
}

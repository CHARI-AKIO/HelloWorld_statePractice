import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  SecondPage(this.subtitle,this.name);
  String subtitle,name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title : Text(subtitle)
        ),
        body :Center(
          child: TextButton(
            child: Text("前のページに戻る"),
            // （1） 前の画面に戻る
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        )
    );
  }
}

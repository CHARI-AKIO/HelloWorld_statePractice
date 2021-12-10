import 'dart:io';

import 'package:flutter/material.dart';

import 'package:helloworld/pages/FirestPage.dart';

void main() {
  runApp(HOMEPAGE());
}

class HOMEPAGE extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Flutter画面遷移',
      theme:ThemeData(
        primarySwatch: Colors.green,
      ),
      home:MYHome_Page(title: "画面遷移HOMEPAGE"),
    );
  }
}

class MYHome_Page extends StatefulWidget{
  MYHome_Page({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  HOME_PAGEState createState() => HOME_PAGEState();
}

class HOME_PAGEState extends State<MYHome_Page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TextButton(
          child: Text("1ページ目に遷移する"),
          onPressed: (){
            // （1） 指定した画面に遷移する
            Navigator.push(context, MaterialPageRoute(
              // （2） 実際に表示するページ(ウィジェット)を指定する
                builder: (context) => FirstPage(),
            ));
          },
        ),
      ),
    );
  }
}



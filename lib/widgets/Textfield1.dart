import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextField1 extends StatelessWidget{
  TextField1(this.contents);
  final String contents;
  @override
  Widget build(BuildContext context) {
    return Text(contents);
    // return
    // TextFormField(
    //       decoration: const InputDecoration(
    //         icon:Icon(Icons.person),
    //         hintText: "ヒントテキスト",
    //         labelText:"ラベルテキスト",
    //       ),
    //       onSaved: (String? value){
    //         print("hello. onSaved! TextField1 => TextFormField");
    //       },
    //       validator: (String? value){
    //         return (value != null&& value.contains('@')) ? '@を使わないでください～' : null;
    //       },
    //     );
  }
}
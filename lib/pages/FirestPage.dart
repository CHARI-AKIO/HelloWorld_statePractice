import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/SecondPage.dart';

class FirstPage extends StatelessWidget{
  FirstPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title : Text("１ぺーじめ")
        ),
        body :Center(
            child:Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Center(
                    child: TextButton(
                      child: Text("次のページへ"),
                      // （1） 前の画面に戻る
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(
                            builder: (context) => SecondPage("2ページ目","２ぺーじめ")
                        ));
                      },
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: TextButton(
                      child: Text("最初のページに戻る"),
                      // （1） 前の画面に戻る
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
            ) ,
        )
    );
  }
}

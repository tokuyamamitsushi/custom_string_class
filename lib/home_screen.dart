import 'package:custom_string_class/my_string.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stringクラスの作成"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          Text("１）文字列の結合"),
          Text("例：[a,b,c]+[d,e,f]"),
          _textCombine(),
          SizedBox(height: 20.0,),
          Text("２）文字列の長さ"),
          Text("例：text[a,b,c,d,e,f] text.length"),
          _textLength(),
          SizedBox(height: 20.0,),
          Text("３）文字列の一部取得"),
          Text("例：text[a,b,c,d,e,f] text.substring(2)"),
          _textsubstring(),
          SizedBox(height: 20.0,),
          Text("４）文字列の分割"),
          Text("例：text[a,b,c,d,e,f] text.split(c)"),
          _textsplit(),

        ],
      ),
    );
  }

  //１）文字列の連結
  Widget _textCombine() {
    var testText1="abc";
    var testText2="def";
    //testText1 + testText2
    //testTextは、"abc"+"def"のこととする。文字列の連結時に変換
    List<String> testList =[]; //["abc","def"]
    testList.add(testText1);
    testList.add(testText2);

    final List<String> combineText = MyString.textCombine(testList);
    //結果(result)のlistは、1要素しか返ってこないのでindex0とする
    var result = combineText[0];
    return Text(result,style: TextStyle(color: Colors.red),);
  }

  //２）文字列の長さ
  Widget _textLength(){
    var testText3="abcdef";
    List<String> testList =[];
    testList = testText3.split("");

    final int result = MyString.textLength(testList);

    return Text(result.toString(),style: TextStyle(color: Colors.red),);



  }

  //３）文字列の一部取得 　※今回は、引数を1つのみとする
  Widget _textsubstring() {
    var testList=["a","b","c","d","e","f"]; //今回は固定値でabcdefとする
    var testIndex=2;


    final List<String> textSubString = MyString.substring(testIndex);
    //結果(result)のlistは、1要素しか返ってこないのでindex0とする
    var result = textSubString[0];
    return Text(result,style: TextStyle(color: Colors.red),);
  }

  //４）文字列の分割
  Widget _textsplit() {
    var testList=["a","b","c","d","e","f"]; //今回は固定値でabcdefとする
    var testSplit="c";

    final List<String> textSplit = MyString.split(testSplit);
    //結果(result)のlistは、1要素しか返ってこないのでindex0とする
    var result = textSplit.toString();  //ここでのresultは、[ab,cdef]となっている。
    return Text(result,style: TextStyle(color: Colors.red),);
  }


}

/*
github_URL
https://github.com/tokuyamamitsushi/custom_string_class

＜参考サイト＞
Let us implement a complete String class step by step: construction, copy, assignment, move and destruction
https://programmersought.com/article/64444852024/

Classic interview questions-detailed analysis and implementation of string
https://programmersought.com/article/19445445683/

Implementation of custom String class
https://programmersought.com/article/47105540257/

C++ interview questions-implement the String class
https://www.programmersought.com/article/18055823490/

How to create a custom String class in C++ with basic functionalities
https://www.geeksforgeeks.org/how-to-create-a-custom-string-class-in-c-with-basic-functionalities/



【Stringクラスを作る時の2つのポイント】
１．String型は、immutableで作る。
・文字列結合やsubstringなどで取り出した時には新しいインスタンスを作らないといけない。


２．文字を列として取り扱うこと。
・文字列型（文字が連続して連なっているデータ型）　※例）配列の1要素を文字列として表現されている
例）["a", "b", "c"]→index1つの要素"b"が1文字として考える。＜定義とする＞
※【注意点】charは、文字を表現する型です。→C言語等ではStringクラスないので、charの配列を処理している



【注意点】
・組み込みのString型のメソッドを使用しないこと。（演算子について確認）
・その言語を使ってクラスを作るのはあまりないみたい。
・コンパイラーに近い言語で作成されているケースが多い。


＜作成したメソッド＞
参考：https://zenn.dev/tris/articles/bf623e5e65fac3
※メソッドは、もっとあるが取り急ぎ4つ実装

１）結合（+）
２）テキストの長さ（length）
３）文字列の一部取得（substring）
４）文字列の分割


*/

class MyString {
  List<String> textList;
  MyString({required this.textList});

  //１）テキストの結合　テキストをListとして1文字（char）を1要素として考える
  static List<String> textCombine(List<String> testList) {

    //List<String> textListの1要素を1文字（char）として考える
    List<String> textResults=[];
    String joinText="";

    for(int i=0; i<testList.length; i++){
      joinText = joinText + testList[i];
    }
    textResults.add(joinText);

    return textResults;

  }


  //２）文字列の長さ
  static int textLength(List<String> testList) {
    var lengthResult=0;
    for(int i=0; i<testList.length; i++){
      print(i);
      lengthResult +=1;
    }

  return lengthResult;
  }

  //３）文字列の一部取得 　※今回は、引数を1つのみとする
  static List<String> substring(int testIndex) {
    var testList=["a","b","c","d","e","f"];

    //List<String> textListの1要素を1文字（char）として考える
    List<String> textResults=[];
    String substringText="";

    for(int i=0; i<testList.length; i++){
      if(i>testIndex-1){
        substringText = substringText + testList[i];
      }
    }
    textResults.add(substringText);

    return textResults;
  }


  //４）文字列の分割
  static List<String> split(String testSplit) {
    var testList=["a","b","c","d","e","f"]; //今回は文字列としてabcdefとする
    List<String> textResults=[];
    String splitText="";


    for(int i=0; i<testList.length; i++){

      print(testList[i]);
      if(testList[i]==testSplit){
        textResults.add(splitText);
        splitText="";
        splitText = testList[i];
      }else{
        splitText = splitText + testList[i];
      }

    }
    textResults.add(splitText);
    return textResults;
  }




}



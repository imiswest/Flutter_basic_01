import 'package:flutter/material.dart'; //무조건 page 새로 만들 때 import 해주기

///children 위젯이 너무 많아 overflow 발생할 때 Listview 사용

class ListviewScreen extends StatelessWidget {
  //StatelessWidget을 상속받음
  final String title; //MyHomePage의 프로퍼티
  //final : 변경하지 않도록 함

  List<Widget> myChildren = []; //myChildren 리스트를 만들음

  ListviewScreen({required this.title}); //생성자
  //아직 title의 기본값을 선언해주지 않아서 MyHomePage 객체를 생성할 때 꼭 받아와야 하므로 required를 붙임
  //this는 해당 객체 내의 값에 접근하기 위한 키워드

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 50; i++) {
      //반복문 사용 > Text 위젯을 50번 넣음
      myChildren.add(
        Text(
          'Hello, World!!!!!',
          style: TextStyle(fontSize: 25),
        ),
      );
    }
    return Scaffold(
      //Scaffold: 앱의 화면이 기본적으로 갖출 기능들을 선언해둔 위젯
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),

      body: Center(
        child: ListView(
          //list 방향 설정 가능
          children: myChildren,
        ),
      ),
    );
  }
}

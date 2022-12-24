import 'package:flutter/material.dart'; //material.dart라는 라이브러리 파일을 불러오는 과정
import 'package:flutter_basic_01/screens/column_screen.dart'; //home 프로퍼티에 ColumnScreen 넣을 거기 때문에 import함
import 'package:flutter_basic_01/screens/listview_screen.dart'; //home 프로퍼티에 ListviewScreen 넣을 거기 때문에 import함
import 'package:flutter_basic_01/screens/button_screen.dart'; //home 프로퍼티에 ButtonScreen 넣을 거기 때문에 import함
import 'package:flutter_basic_01/screens/first_screen.dart'; //home 프로퍼티에 FirstScreen 넣을 거기 때문에 import함

void main() {
  runApp(const MyApp()); //MyApp이라는 위젯을 실행시킨다
}

class MyApp extends StatelessWidget {
  //extends를 통해서 상속
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //모든 위젯들이 공통적으로 가지는 메서드(함수)
    //BuildContext : 모든 위젯이 가지고 있는 고유의 아이디값.
    // 모든 위젯들이 트리 형태로 구성돼 있을 때 각 위젯의 위치가 BuildContext가 되어 각 위젯마다 갖고 있게 됨

    return MaterialApp(
        //MaterialApp이라는 메서드(함수)의 프로퍼티(하위내용) - title, theme, home
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green, //전체 테마 색깔
        ),
        //home: MyHomePage(title:'Flutter Demo Home Page'),//첫 화면을 나타내는 위젯
        //home: ColumnScreen(title:'Flutter Demo Column Screen'),
        //home: ListviewScreen(title:'Flutter Demo Listview Screen'),
        //home: ButtonScreen(title:'Flutter Demo Button Screen'),
        home: FirstScreen()
        );
  }
}




/// 2.3 기본 위젯 사용법

class MyHomePage extends StatelessWidget {
  //StatelessWidget을 상속받음
  final String title; //MyHomePage의 프로퍼티
  //final : 변경하지 않도록 함

  MyHomePage({required this.title}); //생성자
  //아직 title의 기본값을 선언해주지 않아서 MyHomePage 객체를 생성할 때 꼭 받아와야 하므로 required를 붙임
  //this는 해당 객체 내의 값에 접근하기 위한 키워드

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold: 앱의 화면이 기본적으로 갖출 기능들을 선언해둔 위젯
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),

      body: Container(

          /// Container 위젯으로 감싸는 이유 : padding, color(배경색), width&height 프로퍼티가 가능
          /// Container은 child가 필수인 위젯
          /// (Text 위젯에는 padding 프로퍼티처럼 여백을 주는 기능이 없음)
          /// (Padding 위젯도 있음. 하지만 Padding 위젯은 프로퍼티로 padding과 child만이 가능)

          child: Text(
            //Text 위젯 안에는 style이라는 프로퍼티를 지정해 TextStyle이라는 위젯을 넣을 수 있음
            'Hello, Flutter~',
            style: TextStyle(
              fontSize: 25,
              color: Colors.purple,
            ),
          ),
          padding: EdgeInsets.all(30), //Container의 child 위젯에 적용될 여백을 설정할 수 있음
          //Padding의 종류 : .fromLTRB(좌,상,우,하 방향)  .only(한 방향에 대해서만 여백)  .symmetric(세로방향, 가로방향에 대한 여백 설정)
          color: Colors.orange,
          width: 300,
          height: 100),
    );
  }
}

//프로퍼티는 소문자, 위젯은 대문자
//한번에 주석화 하는 방법 : ctrl+/ (한번 더 누르면 한번에 주석취소 할 수 있음)
//Scaffold는 (); 필수

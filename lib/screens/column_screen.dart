import 'package:flutter/material.dart'; //무조건 page 새로 만들 때 import 해주기

class ColumnScreen extends StatelessWidget {
  //StatelessWidget을 상속받음
  final String title; //MyHomePage의 프로퍼티
  //final : 변경하지 않도록 함

  ColumnScreen({required this.title}); //생성자
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

      body: Column(
        /// Column과 Row는 children이 필수인 위젯

        /// Column 안의 위젯들 정렬 : mainAxisAlignment or crossAxisAlignment 프로퍼티 사용
        /// 주의 : 화면 전체에서 정렬되는 것이 아님. Column의 너비는 화면 전체가 아닌 자식들을 감쌀 수 있을 만큼의 너비임.
        // (그렇다면 Row의 높이는 화면 전체가 아닌 자식들을 감쌀 수 있을 만큼의 높이일 것임)
        /// > 부모 위젯 기준으로(화면 전체) 정렬을 하고 싶다면 Center 안에 Column을 넣어야 함

        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceAround, //열 시작과 끝에 작은 여백 + 위젯 사이사이에 보통 여백
        //mainAxisAlignment: MainAxisAlignment.spaceBetween, //위젯 사이사이에만 큰 여백
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //열 시작과 끝 보통 여백 + 위젯 사이사이에 보통 여백
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('1. 첫번째 문자열', style: TextStyle(fontSize: 25)),
          Text('2. 두번째 문자열', style: TextStyle(fontSize: 20)),
          Text('3. 세번쨰 문자열', style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}

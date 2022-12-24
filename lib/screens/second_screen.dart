import 'package:flutter/material.dart';

// 화면 상단에 자동으로 생성되는 뒤로가기 화살표는 appBar의 기본 기능

class SecondScreen extends StatelessWidget {
  final String screenData; //SecondScreen 내에 screenData라는 String 변수 선언
  SecondScreen({required this.screenData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('screenData: ' + screenData), //데이터 출력
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
                ///모든 화면 전환 관련 이벤트는 Navigator 위젯을 통해 처리
                //firstscreen에서 했던 것과 동일하지만, 뒤에는 그냥 pop(); 으로만 끝남
              },
              child: Text('go to first screen'),
            ),
          ],
        ),
      ),
    );
  }
}

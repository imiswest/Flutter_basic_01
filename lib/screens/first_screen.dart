import 'package:flutter/material.dart';
import 'package:flutter_basic_01/screens/second_screen.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('this is first screen'),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  ///모든 화면 전환 관련 이벤트는 Navigator 위젯을 통해 처리
                  //.push 앞까지는 현재 위젯인 Scaffold에서 이동을 시작하겠다는 뜻
                  // push는 말 그대로 다음 화면을 쌓겠다는 의미
                  MaterialPageRoute(builder: (BuildContext context) => SecondScreen(
                    //새로운 화면인 SecondScreen을 빌드하는 방식으로 새 화면으로 이동하겠다는 내용
                    screenData: 'Data from FirstScreen', //SecondScreen의 변수 값 전달
                  ),

                  ),
                );
              },
              child: Text('go to second screen')
            ),
          ],
        ),
      ),
    );
  }
}

//Navigator의 끝에는 );을 달자
//항상 코드 뒤에 쉼표 다는 습관을 들이기 > 그래야 reformat 버튼 눌렀을 때 이상한 배열이 안 됨
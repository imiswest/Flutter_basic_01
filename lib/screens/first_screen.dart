import 'package:flutter/material.dart';
import 'package:flutter_basic_01/screens/second_screen.dart';

class FirstScreen extends StatefulWidget { //상태를 사용하기 위해서는 Stateful 위젯을 상속받아야 함
  _FirstScreenState createState() => _FirstScreenState(); //StatefulWidget 클래스 내에서는 createState()라는 메서드 사용. 내부에서 사용할 State를 생성.
  // createState를 통해 상태를 생성
}

class _FirstScreenState extends State<FirstScreen> { //State(플러터 자체 내부 클래스)를 상속하는 클래스
  //<FirstScreen>을 쓴 이유 : FirstScreen에 대한 상태임을 표현
  //_ 붙이는 건 관례적인 것
  int count = 0;

  void increase() { //increase 라는 메서드 정의. increase()를 호출해 증가라는 이벤트를 실행시킬 수 있고, 이 이벤트는 상태값을 변화시킴
    setState(() { //상태의 변화를 setState() 라는 기능을 통해 구현할 수 있음
      ///setState()는 상태로 관리중인 값을 변경할 때 호출
      count += 1;
    });
  }
  void decrease() {
    setState(() {
      count -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카운터 앱'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('카운트 : $count',
              style: TextStyle(fontSize: 25),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: decrease , child: Text('- 감소')),
                ElevatedButton(onPressed: increase , child: Text('+ 증가')),
                //onPressed에 메서드를 넣을 때 decrease()와 같이 괄호를 붙이지 않는다.
              ],
            )
          ],
        ),
      ),
    );
  }
}
//Navigator의 끝에는 );을 달자
//항상 코드 뒤에 쉼표 다는 습관을 들이기 > 그래야 reformat 버튼 눌렀을 때 이상한 배열이 안 됨

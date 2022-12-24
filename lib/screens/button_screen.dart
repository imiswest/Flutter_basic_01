import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget{
  final String title;
  ButtonScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ //버튼들은 공통적으로 onPressed라는 프로퍼티를 가짐
            TextButton(onPressed: (){}, child: Text('TextButton')),
            ElevatedButton(onPressed: (){}, child: Text('ElevatedButton')),
            OutlinedButton(onPressed: (){}, child: Text('OutlinedButto')),
            IconButton(onPressed: (){}, icon: Icon(Icons.star)),
          ],
        ),
      ),
    );
  }
}
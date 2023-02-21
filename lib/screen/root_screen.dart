import 'package:flutter/material.dart';

class RootSreen extends StatelessWidget {
  const RootSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:TabBarView( // 탭 화면을 보여줄 위젯
        children:renderChildren(),
      ),
    );
  }
}


List<Widget> renderChildren() {
  return [];
}
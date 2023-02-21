import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:TabBarView( // 탭 화면을 보여줄 위젯
        children:renderChildren(),
      ),

      bottomNavigationBar: renderBottomNavigation(),
    );
  }
}


List<Widget> renderChildren() {
  return [];
}

BottomNavigationBar renderBottomNavigation() {
  // 탭 내비게이션을 구현하는 위젯
  return BottomNavigationBar(items:[]);
}
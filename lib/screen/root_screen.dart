import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> with TickerProviderStateMixin {
  // TickerProviderStateMaxin 사용하기

  TabController? controller; // 사용할 TabController 선언

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 2, vsync: this); // 컨트롤러 초기화하기
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        // 탭 화면을 보여줄 위젯
        controller: controller, // 컨트롤러 등록하기
        children: renderChildren(),
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
  return BottomNavigationBar(items: [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.edgesensor_high_outlined,
      ),
      label: '주사위',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: '설정',
    ),
  ]);
}

import 'package:flutter/material.dart';
import 'package:random_dice/screen/home_screen.dart';
import 'package:random_dice/screen/setting_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> with TickerProviderStateMixin {
  // TickerProviderStateMaxin 사용하기
  double threshold = 2.7; // 민감도의 기본값 설정
  int number = 1; // 주사위 숫자

  void onThresholdChange(double val) { // 슬라이더값 변경 시 실행 함수
    setState(() {
      threshold = val; // 변경된 값을 민감도로 설정
    });
  }

  TabController? controller; // 사용할 TabController 선언

  tabListener() {
    // 리스너로 사용할 함수
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 2, vsync: this); // 컨트롤러 초기화하기

    // 컨트롤러 속성이 변경될 때마다 실행할 함수 등록
    controller!.addListener(tabListener);
  }

  @override
  void dispose() {
    controller!.removeListener(tabListener); // 리스너에 등록한 함수 등록 취소
    super.dispose();
  }

  List<Widget> renderChildren() {
    return [
      HomeScreen(number: number),
      SettingScreen(
        threshold: threshold,
        onThresholdChange:onThresholdChange,
      ),
    ];
  }

  BottomNavigationBar renderBottomNavigation() {
    // 탭 내비게이션을 구현하는 위젯
    return BottomNavigationBar(
        // 현재 화면에 렌더링되는 탭의 인덱스
        currentIndex: controller!.index,
        onTap: (int index) { // 탭이 선택될 때마다 실행되는 함수
          setState(() {
            controller!.animateTo(index);
          });
        },
        items: [
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

# Random_Dice

```
개발 툴 : Flutter
개발 언어 : Dart
개발 일시 : 2023-02-21
개발자 : Won Chi Hyeon
```

## 앱 개요
```
기능 : 2개의 BottomNavigation을 가지는 탭 형태의 UI
       가속도계를 사용해서 흔들기 기능을 구현
       Slider를 이용해서 흔들기 민감도를 설정하는 기능 구현

조작법 : 첫 번째 탭에서 핸드폰을 흔들면 주사위의 숫자가 랜덤하게 바뀝니다.
         두 번째 탭에서 슬라이더를 움직이면 흔들기의 민감도를 정할 수 있습니다.

사용한 플러그인 : shake, sensors_plus
```

## Theme 설정하기
```
만난 지 며칠 프로젝트 앱에서 폰트와 폰트색상 등 테마를 설정해주었던 것처럼 상수를 이용해서
슬라이더, BottomNavigation 위젯 등에 테마를 미리 설정하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220250888-223ae87e-e109-4548-bc09-d711bdfb09b2.png)

## TabBarView 작업하기
```
TabBarView 위젯은 TabController가 필수입니다. TabController는 한 번만 초기화되어야 하므로
initState안에서 초기화해주고 초기화할 때는 vsync 기능이 필수인데 이는 State위젯에 TickerProviderMixin을 mixin으로 제공해주어야만
사용가능합니다.

TickerProviderMixin와 SingleTrickerProviderMixin은 애니메이션의 효율을 올려주는 역할을 합니다.
length 매개변수의 2는 탭의 개수를 의미합니다.
```
![image](https://user-images.githubusercontent.com/58906858/220253253-06e2f0b7-fdcf-4665-ac40-9133f8c6826b.png)

## BottomNavigationBar 작업하기
```
하단 탭바의 2개의 버튼을 각각 구현하였습니다. label과 icon을 주어서 UI를 구성하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220254350-001c88da-3ec9-4db0-8431-762690e92d39.png)   
![image](https://user-images.githubusercontent.com/58906858/220254392-452c63cd-659b-4f2e-9b5e-2e122fcde18f.png)


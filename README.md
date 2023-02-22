# Random_Dice

```
개발 툴 : Flutter
개발 언어 : Dart
개발 일시 : 2023-02-21 ~ 2023-02-22
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

### 최종 화면
![image](https://user-images.githubusercontent.com/58906858/220520031-3745bb6d-f42b-4ad9-a251-80cce259e5bc.png)
![image](https://user-images.githubusercontent.com/58906858/220520000-f83a16ed-da73-4178-9ed2-88e0a3bc5799.png)
![image](https://user-images.githubusercontent.com/58906858/220520057-226b6452-cbe2-4217-a06e-be93af1c170e.png)


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


## TabBarView UI 설정
```
TabBarView가 잘 작동하는 지 알아보기 위해 Widget List에 텍스트 2개를 각각 넣고 좌우로 슬라이드하여
잘 작동하는 것을 확인하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220254856-36b435c2-f137-445d-9b8d-b83d89ae74d6.png)   
![image](https://user-images.githubusercontent.com/58906858/220254880-29dd274c-4146-4448-83da-da21f22c8eb4.png)
### [왼쪽으로 슬라이드했을 때]
![image](https://user-images.githubusercontent.com/58906858/220254913-df569920-9028-4bf3-878b-152fe0c496f5.png)

## BottomNavigationBar와 controller 연동
```
TabBarView를 스와이프할 때는 화면 전환이 이루어지지만 BottomNavigationBar의 탭을 누르면 이동되지 않습니다.
그 이유는 BottomNavigationBar를 누를 때마다 TabBaraView와 연동을 해야 하기 때문입니다.

TabController을 연동하여 BottomNavigationBar를 눌러도 화면전환이 잘 이루어지도록 하였습니다.
```
### [컨트롤러 속성이 변경될 때마다 실행할 함수]
![image](https://user-images.githubusercontent.com/58906858/220511478-f7fd4435-3d62-4735-bb59-9f5a23ea668e.png)

### [위젯이 삭제될 때 등록된 listener도 삭제]
![image](https://user-images.githubusercontent.com/58906858/220511442-c396d152-1f07-4021-a610-f56a771d7b5d.png)

### [현재 선택된 상태로 표시해야 되는 BottomNavigationBarItem의 인덱스]
![image](https://user-images.githubusercontent.com/58906858/220511411-d0998b81-6cc2-499a-bcdd-4e32db556aaf.png)

## 첫 번째 인덱스화면에 주사위 이미지 추가
```
첫 번째 인덱스 화면(HomeScreen)에 주사위 이미지를 추가하였습니다.
향후에 생성자로 number를 넘겨줘서 이미지를 변경할 수 있도록 설계하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220512873-096e3da0-0875-4d2e-bdf4-edf1b16e3c0e.png)   
![image](https://user-images.githubusercontent.com/58906858/220512929-efcb8df4-82e9-4176-8ace-f0ecba4fc2da.png)   
![image](https://user-images.githubusercontent.com/58906858/220512856-2f462200-d888-440e-a698-4093e74a93c6.png)

## 주사위 값에 해당되는 숫자 텍스트 추가
```
주사위 값에 해당되는 숫자(number) 텍스트를 주사위 이미지 하단에 추가하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220513717-55a51d8d-84d6-4d1a-a538-cebce7790af0.png)   
![image](https://user-images.githubusercontent.com/58906858/220513730-d056e896-38a4-4baf-ac84-f576ef636219.png)

## 두 번째 인덱스 화면에 민감도 조절 슬라이더 추가
```
두 번째 인덱스 화면(SettingScreen)에 슬라이더를 추가하였습니다.
슬라이더의 주요 설정값은 threshold(민감도)로 기본 민감도 값과 슬라이더가 변경될 때마다 실행되는 함수를 생성자로 등록하였습니다.
슬라이더가 변경될 때마다 실행되는 함수는 변경된 값을 민감도 값으로 변경해주는 역할을 합니다.
```
![image](https://user-images.githubusercontent.com/58906858/220516679-d26272b4-89e3-4b7b-9e7c-d69238501bb6.png)   
![image](https://user-images.githubusercontent.com/58906858/220516765-74e784bb-97f6-4013-ad6b-6eefc64ed419.png)   
![image](https://user-images.githubusercontent.com/58906858/220516609-7c3a21d3-7529-465b-84b1-80413c29f8ea.png)   
![image](https://user-images.githubusercontent.com/58906858/220516836-b2ebc837-b24c-47a4-b247-fa63c29a6561.png)


## 흔들기를 감지하여 주사위 번호를 변경하기
```
주사위 번호(number)를 상태관리를 하기위해서 선언을 해준다음 setState를 사용하여
흔들기가 감지되었을 때 number를 rand().nextInt + 1 (0~6까지의 난수)로 변경하도록 하여
최종적으로 주사위 번호를 변경과 더불어 주사위에 해당하는 이미지로 수정하도록 하는 기능을 추가하였습니다.
```
![image](https://user-images.githubusercontent.com/58906858/220519032-dcc78fcd-de89-415e-a4d6-08d1bb920b41.png)
![image](https://user-images.githubusercontent.com/58906858/220518998-cc443cc2-cfc8-4461-acf6-7703207b6df0.png)

## 향후 앱 출시 계획
```
저작권 상 문제로 주사위 이미지 변경
주사위 개수를 늘리는 옵션 추가
흔들었을 때 주사위 이미지가 애니메이션 되도록 수정
특정 숫자가 더 높은 확률로 나오도록 확률 조작 기능 추가
```

## 향후 프로젝트 계획
```
이번 프로젝트에 사용된 Shake 플러그인은 x, y, 축으로의 직선 움직임만을 측정할 수 있습니다.
자이로스코프(Gyroscope)는 이 단점을 보완해서 x, y, z 축으로의 회전을 측정할 수 있습니다.

센서의 데이터를 정규화하는 작업을 진행하고(움직임 수치를 계산해서 핸드폰을 흔든 정도를 수치화하는 작업)
헬스케어의 대표 앱 중에 하나인 만보기 앱을 개발하기로 하였습니다.
```

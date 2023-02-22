import 'package:flutter/material.dart';
import 'package:random_dice/const/colors.dart';

class SettingScreen extends StatelessWidget {
  final double threshold; // Slider 민감도의 현재값

  final ValueChanged<double> onThresholdChange;

  const SettingScreen({
    required this.threshold,
    required this.onThresholdChange,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding:const EdgeInsets.only(left:20.0),
          child:Row(
            children:[
              Text(
                '민감도',
                style:TextStyle(
                  color:primaryColor,
                  fontSize:20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Slider(
          min:0.1, // 최솟값
          max:10.0, // 최댓값
          divisions:101, // 최솟값과 최댓값 사이 구간 개수
          value:threshold, // 슬라이더 선택값
          onChanged:onThresholdChange, // 값 변경 시 실행되는 함수
          label: threshold.toStringAsFixed(1), // 표싯값
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:random_dice/const/colors.dart';

class HomeScreen extends StatelessWidget {
  final int number;

  const HomeScreen({
    required this.number,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        // 주사위 이미지
        Center(
          child:Image.asset('asset/img/$number.png',
            width: MediaQuery.of(context).size.height/2,
            height: MediaQuery.of(context).size.width/2,
          ),
        ),
        SizedBox(
          height:32.0,
        ),
        Text(
          '행운의 숫자',
          style: TextStyle(
            color:primaryColor,
            fontSize:20.0,
            fontWeight:FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Text(
          number.toString(), // 주사위 값에 해당되는 숫자
          style:TextStyle(
            color:primaryColor,
            fontSize:60.0,
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}

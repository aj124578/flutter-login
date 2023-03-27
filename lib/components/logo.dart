import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Logo extends StatelessWidget {

  final title; // 컴파일 시점에 결정되지는 않지만 런타임 시점에 값이 결정되고 바뀌지 않기 때문에 const가 아닌 final로 설정

  Logo(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("assets/logo.svg", height: 70, width: 70,), // 웬만하면 1줄에 가능한거는 1줄로 보게하는게 가독성이 좋음
        Text(
          "Login",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

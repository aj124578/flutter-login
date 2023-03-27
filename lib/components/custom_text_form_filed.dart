import 'package:flutter/material.dart';
import 'package:flutter_login/components/my_input_decoration.dart';

class CustomTextFormFiled extends StatelessWidget {

  final title;
  final isObscure; // 시그니쳐 빼고는 타입을 다 작성하기

  const CustomTextFormFiled(this.title, {this.isObscure = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        TextFormField(
          validator: (value) => value!.isEmpty ? "Please enter some text" : null, // value가 null 이면 "Please enter some text" 그게 아니면 null 리턴
          onChanged: (text){
            print("테스트+ "+text); // form에 입력하면 콘솔에 입력한 text가 나옴
        },
          obscureText: isObscure,
          decoration: MyInputDecoration("Enter $title"), // title 1자만 넣을거면 {} 안해도 되고 ${title+2} 2자이상이면 중괄호 써야함
        ),
      ],
    );
  }
}

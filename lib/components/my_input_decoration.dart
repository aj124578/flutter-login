

import 'package:flutter/material.dart';

class MyInputDecoration extends InputDecoration{

  MyInputDecoration(String hint) : super(
    hintText: hint,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),

  ); // 이니셜라이저키워드 스택이 없기 때문에 이렇게하면 부모를 바로 호출함


}

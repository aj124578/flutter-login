import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_text_form_filed.dart';
import 'package:flutter_login/size.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            minimumSize: Size(double.infinity,
                60), // 늘어나는 성질은 block으로 주고 감싸는 박스의 크기에 따라 달라지게 설정
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login", // 최초 페이지는 /login으로 잡음
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  // 1. GlobalKey를 만든다.
  final _formKey = GlobalKey<FormState>();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Logo("Login"),
          Form(
            key: _formKey, // 2. GlobalKey를 연결한다.
            child: Column(
              children: [
                SizedBox(height: m_gap),
                CustomTextFormFiled("email"),
                SizedBox(height: m_gap),
                // 1개는 email
                CustomTextFormFiled("password", isObscure: true),
                // 1개는 password 받을거임 그러므로 동적으로 받아야함
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // if에 넣어야 됨 valdate()가 null을 리턴하면 true인데 true일때만 화면을 넘어가야 함
                      // 표현식은 행위 -> 리턴해줄때 쓰는것이기 때문에 함수를 넣어라
                      Navigator.pushNamed(context, "/home");
                    }
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Logo("Care Soft"),
            TextButton(onPressed: (){}, child: Text("Get Started")),
          ],
        )
    );
  }
}
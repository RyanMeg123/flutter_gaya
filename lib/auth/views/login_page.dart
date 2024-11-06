import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gaya_2/compontents/form_common.dart';
import 'package:flutter_gaya_2/routes.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _submitForm() {
    print('emial login ${emailController.text}');
    print('email password${passwordController.value}');
    Navigator.pushNamed(context, AppRoutes.homePage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 44,
        leading: IconButton(
          icon: Icon(MdiIcons.arrowLeft), // 左上角的返回图标
          onPressed: () {
            // 返回上一页
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 29, right: 29),
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/login/logomini.png',
                    width: 72,
                    height: 72,
                  ),
                  const SizedBox(height: 36),
                  const Text(
                    'Welcome back!',
                    style: TextStyle(
                        color: Color.fromRGBO(34, 34, 34, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(height: 9),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(106, 106, 106, 1),
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 23),
              Expanded(
                child: Column(
                  children: [
                    FormCommon(
                        formKey: _formKey,
                        emailController: emailController,
                        passwordController: passwordController),
                    const SizedBox(height: 24),
                    ElevatedButton(
                        onPressed: _submitForm,
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(double.infinity, 60),
                            foregroundColor: Colors.white,
                            backgroundColor:
                                const Color.fromRGBO(43, 57, 185, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0), // 圆角边框
                            ) // 设置按钮文本颜色
                            ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    const SizedBox(height: 16),
                    Container(
                      // width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(
                                text: 'Forgot password?',
                                style: const TextStyle(
                                  color: Color.fromRGBO(101, 101, 101, 1),
                                  fontSize: 16,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // 在这里处理condition的点击事件
                                    print('press the forget password');
                                  },
                              )),
                          RichText(
                            text: TextSpan(
                              text: 'Reset here?',
                              style: const TextStyle(
                                  color: Color.fromRGBO(43, 57, 185, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // 在这里处理condition的点击事件
                                  print('press the forget password');
                                },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 59),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Don’t have an account?',
                            style: const TextStyle(
                                color: Color.fromRGBO(19, 19, 19, 1),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // 在这里处理condition的点击事件
                                print('press the forget password');
                              },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: _submitForm,
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(double.infinity, 60),
                            foregroundColor: Colors.white,
                            backgroundColor:
                                const Color.fromRGBO(233, 235, 249, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0), // 圆角边框
                            ) // 设置按钮文本颜色
                            ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Register for Free now',
                              style: TextStyle(
                                  color: Color.fromRGBO(43, 57, 185, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

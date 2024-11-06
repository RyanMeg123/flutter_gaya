import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gaya_2/routes.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../compontents/form_common.dart';

class RegisterEmailPage extends StatefulWidget {
  const RegisterEmailPage({super.key});

  @override
  _RegisterEmailPageState createState() => _RegisterEmailPageState();
}

class _RegisterEmailPageState extends State<RegisterEmailPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController =
      TextEditingController();

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      // 处理表单数据
      print("Email: ${emailController.text}");
      print("Password: ${passwordController.text}");
      print("PasswordConfirm: ${passwordConfirmController.text}");
    }
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
        child: ListView(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/login/logomini.png',
                    width: 72,
                    height: 72,
                  ),
                  const SizedBox(height: 36),
                  const Text(
                    'Create account Free',
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
                  ),
                ],
              ),
            ),
            const SizedBox(height: 23),
            Container(
              child: Column(
                children: [
                  FormCommon(
                    formKey: _formKey,
                    emailController: emailController,
                    passwordController: passwordController,
                    passwordConfirmController: passwordConfirmController,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                      onPressed: _submitForm,
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(double.infinity, 60),
                          foregroundColor: Colors.white,
                          backgroundColor: const Color.fromRGBO(43, 57, 185, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0), // 圆角边框
                          ) // 设置按钮文本颜色
                          ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: RichText(
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      text: TextSpan(
                          style: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              letterSpacing: 2.0,
                              fontSize: 14),
                          children: [
                            const TextSpan(
                              text:
                                  'By tapping “Sign Up” you accept our ', // 普通文本
                            ),
                            TextSpan(
                              text: 'terms', // 需要链接的文本
                              style: const TextStyle(
                                color: Color.fromRGBO(43, 57, 185, 1),
                                fontWeight: FontWeight.bold, // 设置链接的颜色
                                decoration:
                                    TextDecoration.underline, // 可选：设置下划线
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // 在这里处理terms的点击事件
                                  print('Terms clicked');
                                },
                            ),
                            const TextSpan(
                              text: ' and ', // 普通文本
                            ),
                            TextSpan(
                              text: 'condition', // 需要链接的文本
                              style: const TextStyle(
                                color: Color.fromRGBO(43, 57, 185, 1),
                                fontWeight: FontWeight.bold, // 设置链接的颜色
                                decoration:
                                    TextDecoration.underline, // 可选：设置下划线
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // 在这里处理condition的点击事件
                                  print('Condition clicked');
                                },
                            ),
                            const TextSpan(
                              text: '.', // 普通文本
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 46),
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Already have an account?',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(19, 19, 19, 1),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print('email tap');
                        Navigator.pushNamed(context, AppRoutes.login);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                            const Color.fromRGBO(233, 235, 249, 1), // 设置按钮文本颜色
                        fixedSize: const Size(318, 60), // 设置按钮宽高
                        // elevation: 5, // 设置阴影高度

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0), // 圆角边框
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                      ),
                      child: Container(
                        child: const Text(
                          "Continue with email",
                          style: TextStyle(
                              color: Color.fromRGBO(43, 57, 185, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('email tap');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.white, // 按钮文本颜色
                        side: const BorderSide(
                          color: Color.fromRGBO(55, 106, 237, 1), // 边框颜色
                          width: 1, // 边框宽度
                        ),
                        fixedSize: const Size(318, 60), // 设置按钮宽高
                        elevation: 5, // 设置阴影高度
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0), // 圆角边框
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: SizedBox(
                              width: 40,
                              child: Image.asset(
                                  'assets/images/splash/iconfb.png'),
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Text(
                              "Login With Facebook",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        print('email tap');
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white, //设置按钮文本颜色
                        fixedSize: const Size(318, 60), // 设置按钮宽高
                        elevation: 5, // 设置阴影高度
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18), // 圆角边框
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: SizedBox(
                              width: 40,
                              child: Image.asset(
                                  'assets/images/splash/iconGoogle.png'),
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Text(
                              "Login With Google",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

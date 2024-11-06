import 'package:flutter/material.dart';

class FormCommon extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController? passwordConfirmController;

  const FormCommon({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    this.passwordConfirmController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Email',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 14, color: Color.fromRGBO(138, 138, 138, 1))),
            ],
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
                labelText: 'Email',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(43, 57, 185, 1), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(18)))),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              // } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
              //   return 'Please enter a vaild email';
              // }
              return null;
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Password',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 14, color: Color.fromRGBO(138, 138, 138, 1))),
            ],
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
                labelText: 'Password',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(43, 57, 185, 1), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(18)))),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              } else if (value.length < 6) {
                return 'Password must be at least 6 characters long';
              }
              return null;
            },
          ),
          if (passwordConfirmController != null) ...[
            const SizedBox(
              height: 20.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Password',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14, color: Color.fromRGBO(138, 138, 138, 1))),
              ],
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: passwordConfirmController,
              decoration: const InputDecoration(
                  hintText: 'Type password here',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(43, 57, 185, 1), width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(18)))),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                } else if (value.length < 6) {
                  return 'Password must be at least 6 characters long';
                }
                return null;
              },
            )
          ],
        ]));
  }
}

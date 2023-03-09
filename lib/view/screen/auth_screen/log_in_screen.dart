import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview/view/layout/auth/top_login_image_widget.dart';
import 'package:interview/view/layout/buttom_widget.dart';
import 'package:interview/view/layout/text_utiles.dart';
import 'package:interview/view/layout/textformfield_widget.dart';
import 'package:interview/view/screen/home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final ctrlPhone = TextEditingController();
  final ctrlPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Image Login Kit
          topLoginWidet(mq),
          Container(
            padding: EdgeInsets.symmetric(horizontal: mq.width * 0.03),
            child: Column(
              children: [
                SizedBox(
                  height: mq.height * 0.05,
                ),
                TextFormFieldWidget(
                  hintText: "Enter Your Phone",
                  controller: ctrlPhone,
                  secure: false,
                  validator: (val) {},
                  suffixIcon: SizedBox(),
                ),
                SizedBox(
                  height: mq.height * 0.01,
                ),
                TextFormFieldWidget(
                  hintText: "Password",
                  controller: ctrlPassword,
                  secure: true,
                  validator: (val) {},
                  suffixIcon: const Icon(Icons.remove_red_eye),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 24),
                  child: const TextUtils(text: 'Forget Password ?',color: Colors.grey,fontSize: 14),
                ),
                SizedBox(
                  height: mq.height * 0.07,
                ),
                ButtonWidget(text: 'Login', onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const HomeScreen()));
                })
              ],
            ),
          )
        ]),
      ),
    );
  }
}

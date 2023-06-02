
import 'package:flutter/material.dart';
import 'package:interview/view/screen/auth_screen/log_in_screen.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      locale: Locale('en'),
      title: 'task App',
      home: LoginScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_local_notification/home.dart';
import 'package:flutter_local_notification/simple_notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SimpleNotification.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter simple notificaton',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}

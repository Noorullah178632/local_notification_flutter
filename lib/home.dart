import 'package:flutter/material.dart';
import 'package:flutter_local_notification/simple_notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: Icon(Icons.notifications_rounded),
              onPressed: () {
                SimpleNotification.showSimpleNotification(
                  title: "Simple Notification",
                  body: "you clicked on the simple notification button",
                  payload: "simple_notification_clicked",
                );
              },
              label: Text('Simple Notifications'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_local_notification/anotherpage.dart';
import 'package:flutter_local_notification/simple_notification.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    listenToNotification();
    super.initState();
  }

  //to handle the ontap notification function
  listenToNotification() {
    print("listening notification");
    SimpleNotification.onClickNotification.listen((data) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Anotherpage(payload: data)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(height: 10),
              ElevatedButton.icon(
                icon: Icon(Icons.timer_outlined),
                onPressed: () {
                  SimpleNotification.showPeriodicNotification(
                    id: 1,
                    title: "Periodic Notification",
                    body:
                        "This Notification is Periodic Notification and it will ring after 1 Minute",
                  );
                },
                label: Text("Periodic Notification"),
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.timer_outlined),
                onPressed: () {
                  SimpleNotification.showScheduleNotification(
                    id: 2,
                    title: "Schedule Notification",
                    body: "Shedule Notification for you ",
                    payload: "This is Schedule Notification",
                  );
                },
                label: Text("Schedule Notification"),
              ),
              SizedBox(height: 10),
              ElevatedButton.icon(
                icon: Icon(Icons.cancel_outlined),
                onPressed: () {
                  SimpleNotification.cancelAllNotification();
                },
                label: Text("Cancel All Notification"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

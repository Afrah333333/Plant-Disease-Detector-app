import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  AlertsAndNotifications extends StatefulWidget {
  const  AlertsAndNotifications({Key? key}) : super(key: key);

  @override
  State<AlertsAndNotifications> createState() => _AlertsAndNotificationsState();
}

class _AlertsAndNotificationsState extends State< AlertsAndNotifications> {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Alerts and Notifications'),
      // Add alerts and notifications elements here
    );
  }
}



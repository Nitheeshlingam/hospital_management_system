import 'package:flutter/material.dart';
import 'package:hms_app/widgets/navbar.dart';

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        drawer: drawer(context),
        body: Center(child: Text('Appointment Page')));
  }
}

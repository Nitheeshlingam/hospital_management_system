import 'package:flutter/material.dart';
import 'package:hms_app/widgets/navbar.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        drawer: drawer(context),
        body: Center(child: Text('Contact Page')));
  }
}

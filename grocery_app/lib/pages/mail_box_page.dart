import 'package:flutter/material.dart';

class MailBoxPage extends StatefulWidget {
  const MailBoxPage({super.key});

  @override
  State<MailBoxPage> createState() => _MailBoxPageState();
}

class _MailBoxPageState extends State<MailBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Mail Box',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

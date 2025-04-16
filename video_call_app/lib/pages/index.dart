import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:developer';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
import 'call.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final _controller = TextEditingController();
  bool _validateError = false;
  ClientRoleType _role =
      ClientRoleType.clientRoleBroadcaster;
  @override
  void dispose() {
    _controller.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: const Text(
          'Video Call App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            letterSpacing: 2,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.asset('assets/person.jpg'),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  errorText:
                      _validateError
                          ? 'Enter channel'
                          : null,
                  hintText: 'Enter Channel Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                ),
              ),
              RadioListTile(
                title: Text('Broadcaster'),
                onChanged: (ClientRoleType? value) {
                  setState(() {
                    _role = value!;
                  });
                },
                value: ClientRoleType.clientRoleBroadcaster,
                groupValue: _role,
              ),
              RadioListTile(
                title: Text('Audience'),
                onChanged: (ClientRoleType? value) {
                  setState(() {
                    _role = value!;
                  });
                },
                value: ClientRoleType.clientRoleAudience,
                groupValue: _role,
              ),
              ElevatedButton(
                onPressed: onJoin,
                child: Text('Join'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onJoin() async {
    setState(() {
      _controller.text.isEmpty
          ? _validateError = true
          : _validateError = false;
    });
    if (_controller.text.isEmpty) {
      await _handleCameraAndMic(Permission.camera);
      await _handleCameraAndMic(Permission.microphone);
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder:
              (context) => CallPage(
                channelName: _controller.text,
                role: _role,
              ),
        ),
      );
    }
  }

  Future<void> _handleCameraAndMic(
    Permission permission,
  ) async {
    final status = await permission.status;
    if (status != PermissionStatus.granted) {
      await permission.request();
      await Future.delayed(const Duration(seconds: 1));
      await _handleCameraAndMic(permission);
    }
  }
}

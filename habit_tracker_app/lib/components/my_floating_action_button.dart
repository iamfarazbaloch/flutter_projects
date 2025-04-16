import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  final void Function()? onPressed;
  const MyFloatingActionButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue,
      onPressed: onPressed,
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}

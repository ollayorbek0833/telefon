import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);


  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    String text = "";
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(text, style: const TextStyle(fontWeight: FontWeight.w600),),
            const Text("Add number",style: TextStyle(color: Colors.blue),)
          ],
        ),
      ),
    );
  }
}

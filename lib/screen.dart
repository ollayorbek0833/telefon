import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key,}) : super(key: key);


  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    String text = "dsa";
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text, textScaleFactor: 2,),
            const Text("Add number",style: TextStyle(color: Colors.blue),),
            Row(
              children: [
                TextButton(
                  onPressed: (){
                      text = text + "1";
                      print(text);
                  },
                  child: const Text("1"),
                )
              ],

            ),
          ],
        ),
      ),
    );
  }
}

class NumberButton extends StatefulWidget {
  NumberButton({Key? key, required this.number, required this.numbers}) : super(key: key);
  int number;
  String numbers;

  @override
  _NumberButtonState createState() => _NumberButtonState();
}

class _NumberButtonState extends State<NumberButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.numbers + widget.number.toString();
      },
      child: Text(widget.number.toString(), textScaleFactor: 2.5,),
    );;
  }
}

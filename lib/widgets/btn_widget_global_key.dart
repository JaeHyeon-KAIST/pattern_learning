import 'package:flutter/material.dart';

class BtnWidgetGlobalKey extends StatefulWidget {
  const BtnWidgetGlobalKey({Key? key}) : super(key: key);

  @override
  State<BtnWidgetGlobalKey> createState() => BtnWidgetGlobalKeyState();
}

class BtnWidgetGlobalKeyState extends State<BtnWidgetGlobalKey> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
      child: Center(
        child: Text(
          '${count}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  void changeState() {
    setState(() {
      count++;
    });
  }
}

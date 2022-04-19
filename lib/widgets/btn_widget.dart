import 'package:flutter/material.dart';

class BtnWidget extends StatefulWidget {
  const BtnWidget({Key? key, required this.count}) : super(key: key);
  final int count;

  @override
  State<BtnWidget> createState() => _BtnWidgetState();
}

class _BtnWidgetState extends State<BtnWidget> {
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
          '${widget.count}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

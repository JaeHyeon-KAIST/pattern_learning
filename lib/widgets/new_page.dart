import 'package:flutter/material.dart';
import 'package:pattern_learning/utils/PatternPageProvider.dart';
import 'package:provider/provider.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<PatternPageProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(p.count.toString()),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              p.setCount = p.count + 1;
            },
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  '새로운 페이지에서 Provider로 증가',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

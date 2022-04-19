import 'package:flutter/material.dart';
import 'package:pattern_learning/utils/PatternPageProvider.dart';
import 'package:provider/provider.dart';

class BtnWidgetProvider extends StatefulWidget {
  const BtnWidgetProvider({Key? key}) : super(key: key);

  @override
  State<BtnWidgetProvider> createState() => _BtnWidgetProviderState();
}

class _BtnWidgetProviderState extends State<BtnWidgetProvider> {
  @override
  Widget build(BuildContext context) {
    var p = Provider.of<PatternPageProvider>(context);
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
          '${p.count}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

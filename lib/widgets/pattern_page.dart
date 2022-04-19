import 'package:flutter/material.dart';
import 'package:pattern_learning/utils/PatternPageProvider.dart';
import 'package:pattern_learning/widgets/btn_widget.dart';
import 'package:pattern_learning/widgets/btn_widget_provider.dart';
import 'package:pattern_learning/widgets/new_page.dart';
import 'package:provider/provider.dart';

import 'btn_widget_global_key.dart';

class PatternPage extends StatefulWidget {
  const PatternPage({Key? key}) : super(key: key);

  @override
  State<PatternPage> createState() => _PatternPageState();
}

class _PatternPageState extends State<PatternPage> {
  int count = 0;

  GlobalKey<BtnWidgetGlobalKeyState> btnKey =
      GlobalKey<BtnWidgetGlobalKeyState>();
  // globalKey 사용을 위한

  // flutter : 화면을 새로 그리는 방식

  // 특정 파트만 렌더링 한는 법 : setState, provider, bloc, globalKey

  void set_setState() {
    setState(() {});
    // setState : 화면 전체를 모두 새로 그림 => 메모리 문제 등
  }

  void set_gloabalKey() {
    count++;
    btnKey.currentState!.changeState();
  }

  void set_provider() {
    count++;
    var p = Provider.of<PatternPageProvider>(context, listen: false);
    p.setCount = p.count + 1;
  }

  // globalKey & Provider 모두 count 1씩 증가, 그러나 국소적으로 화면을 렌더링 하기 때문에 count 값은 변화 X => setState를 하면 count 변화가 화면에 그려짐

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                child: Center(
                  child: Text(
                    'Pattern Learning\nsetState, GlobalKey, Provider',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Row(
                  children: [
                    Text('count'),
                    BtnWidget(count: count),
                  ],
                ),
              ),
              Positioned(
                bottom: 80,
                right: 0,
                child: Row(
                  children: [
                    Text('Global Key'),
                    BtnWidgetGlobalKey(key: btnKey),
                  ],
                ),
              ),
              // globalKey 사용을 위한
              Positioned(
                bottom: 160,
                right: 0,
                child: Row(
                  children: [
                    Text('Provider'),
                    BtnWidgetProvider(),
                  ],
                ),
              ),
              // globalKey 사용을 위한
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  set_setState();
                },
                child: Container(
                  height: 60,
                  width: 40,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'setState',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  set_gloabalKey();
                },
                child: Container(
                  height: 60,
                  width: 40,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'global key',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  set_provider();
                },
                child: Container(
                  height: 60,
                  width: 40,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'provider',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NewPage()));
          },
          child: Container(
            height: 60,
            width: double.infinity,
            color: Colors.amber,
            child: Center(
              child: Text(
                '페이지 이동시 Provider 사용',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Group Button Sample'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            GroupButton(
              buttons: const [
                '総合',
                '年間',
                '月間',
                '当日',
              ],
              controller: GroupButtonController(selectedIndex: 0),
              options: GroupButtonOptions(
                selectedShadow: const [],
                unselectedShadow: const [],
                unselectedColor: Colors.white,
                unselectedTextStyle: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
                borderRadius: BorderRadius.circular(30),
                buttonWidth: 55,
                buttonHeight: 35,
              ),
              onSelected: (i, selected) {},
              onDisablePressed: (i) {},
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nav_router/nav_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navGK,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: APage(),
    );
  }
}

class APage extends StatefulWidget {
  @override
  _APageState createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('A'),
          ),
        ),
        onTap: () => routePush(BPage(key: Key('1'))),
      ),
    );
  }
}

class BPage extends StatefulWidget {
  BPage({Key key}) : super(key: key);

  @override
  _BPageState createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('B'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('B'),
          ),
        ),
        onTap: () => routePush(CPage()),
      ),
    );
  }
}

class CPage extends StatefulWidget {
  @override
  _CPageState createState() => _CPageState();
}

class _CPageState extends State<CPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('C'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('C'),
          ),
        ),
        onTap: () => routePush(DPage()),
      ),
    );
  }
}

class DPage extends StatefulWidget {
  @override
  _DPageState createState() => _DPageState();
}

class _DPageState extends State<DPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('D'),
          ),
        ),
        onTap: () {
          popUntil(ModalRoute.withName(BPage(key: Key('1')).toStringShort()));
        },
      ),
    );
  }
}

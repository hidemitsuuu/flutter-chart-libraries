import 'package:flutter/material.dart';
import 'package:flutter_chart_libraries/sub/chart_name.dart';
import 'package:flutter_chart_libraries/sub/chart_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'flutter-chart-libraries'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Row(
          children: const [
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: ChartName(),
              ),
            ),
            VerticalDivider(),
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: ChartView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:quran/quran.dart' as quran;
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'ListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Suralar'),
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

  @override
  Widget build(BuildContext context) {
    const Duration initialDelay = Duration(milliseconds: 35);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/d.jpg'), fit: BoxFit.cover)),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/ff.jpg'), fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: 114,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 60.0, top: 15, right: 60.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListPage(
                        index: index,
                      ),
                    ),
                  );
                },
                child: DelayedDisplay(
                  delay: initialDelay,
                  child: Card(
                    color: Colors.transparent,
                    child: Center(
                      child: Text(
                        "${index + 1} ${quran.getSurahName(index + 1)}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            color: Colors.white70),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

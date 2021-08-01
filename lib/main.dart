import 'package:chaquopy/chaquopy.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final restaurants = [
    "McDonald\'s",
    "Jollibee",
    "Pizza Hut",
    "KFC",
    "Greenwich"
  ];

  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("What do you want to eat?"),
        Text(
          restaurants[currentIndex],
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
        ),
        TextButton(
            onPressed: () async {
              final _result = await Chaquopy.executeCode("import AO3\n" +
                  "url = \"https://archiveofourown.org/works/14392692/chapters/33236241\"\n" +
                  "workid = AO3.utils.workid_from_url(url)\n" +
                  // "print(f\"Work ID: {workid}\")\n" +
                  "work = AO3.Work(workid)\n" +
                  "print(f\"Chapters: {work.chapters[1].text}\")");
              final x = 0;
            },
            child: Text("Pick Restaurant"))
      ],
    ))));
  }
}

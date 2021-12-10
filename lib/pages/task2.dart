import 'package:flutter/material.dart';

class Task2Page extends StatefulWidget {
  const Task2Page({Key? key}) : super(key: key);

  @override
  _Task2PageState createState() => _Task2PageState();
}

class _Task2PageState extends State<Task2Page> {
  final news = [
    '今日のニュース',
    '昨日のニュース',
    '先週のニュース',
    '1か月前のニュース',
    '1年前のニュース',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task2:ListViewBuilder"),
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(news[index]),
                      flex: 4,
                    ),
                    const Expanded(
                      child: Text("詳細へ"),
                      flex: 1,
                    ),
                  ],
                ),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}

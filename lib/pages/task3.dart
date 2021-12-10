import 'package:flutter/material.dart';

class Task3Page extends StatefulWidget {
  const Task3Page({Key? key}) : super(key: key);

  @override
  _Task3PageState createState() => _Task3PageState();
}

class _Task3PageState extends State<Task3Page> {
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
        title: const Text("Task3:自作Widgetの切り出し"),
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (BuildContext context, int index) {
          return newsTile(news[index]);
        },
      ),
    );
  }

  Widget newsTile(String info) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: Text(info),
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
  }
}

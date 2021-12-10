import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map app_name = {
    0: {"title": "Task1:RowとColumn", "route": '/task1'},
    1: {"title": "Task2:ListViewBuilder", "route": '/task2'},
    2: {"title": "Task3:自作Widgetの切り出し", "route": '/task3'},
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ドリルシリーズ"),
      ),
      body: ListView.builder(
        itemCount: app_name.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(app_name[index]['title']),
            onTap: () {
              Navigator.pushNamed(context, app_name[index]['route']);
            },
          );
        },
      ),
    );
  }
}

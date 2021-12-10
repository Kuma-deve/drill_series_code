import 'package:flutter/material.dart';

class Task1Page extends StatefulWidget {
  const Task1Page({Key? key}) : super(key: key);

  @override
  _Task1PageState createState() => _Task1PageState();
}

class _Task1PageState extends State<Task1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task1:RowとColumn"),
      ),
      body: SizedBox(
        height: 200,
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                child: const Center(
                  child: Text("Main"),
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.redAccent,
                      child: const Center(
                        child: Text("A"),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.lightBlue,
                      child: const Center(
                        child: Text("B"),
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.green,
                      child: const Center(
                        child: Text("C"),
                      ),
                    ),
                    flex: 1,
                  ),
                ],
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

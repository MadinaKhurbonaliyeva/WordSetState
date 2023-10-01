import 'package:flutter/material.dart';

class SecondWay extends StatefulWidget {
  const SecondWay({super.key});

  @override
  State<SecondWay> createState() => _SecondWayState();
}

class _SecondWayState extends State<SecondWay> {
  String text = 'Hello school';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
              height: 100,
              width: 200,
              child: const Center(
                child: Text(
                  'Hello school',
                  style: TextStyle(fontSize: 30, color: Colors.amberAccent),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    text == 'bye school';
                  });
                },
                child: const Text('Tap me!'))
          ],
        ),
      ),
    );
  }
}

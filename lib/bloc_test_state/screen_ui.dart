import 'package:flutter/material.dart';

class BlocTaskState extends StatefulWidget {
  const BlocTaskState({super.key});

  @override
  State<BlocTaskState> createState() => _BlocTaskStateState();
}

class _BlocTaskStateState extends State<BlocTaskState> {
  bool text = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("qurildi");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 100,
                width: 200,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    text ? 'Salom' : 'Xayr',
                    style: TextStyle(fontSize: 30),
                  ),
                )),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = !text;
                });
              },
              child: const Text(
                "tap me",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    backgroundColor: Colors.cyanAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

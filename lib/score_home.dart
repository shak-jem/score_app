import 'package:flutter/material.dart';

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Changer"),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: resetNumber,
        child: const Icon(Icons.restore_outlined),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Center(
              child: Text(
                "Score is",
                style: TextStyle(
                    color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
              )),
          Center(
              child: Text(
                number.toString(),
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 125,
                    fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:increaseNumber,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text(
                  'Increase',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              ElevatedButton(
                onPressed:decreaseNumber,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text(
                  'Decrease',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
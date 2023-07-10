import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController firstValueController = TextEditingController();

  final TextEditingController secondValueController = TextEditingController();

  int answer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("1st Value"),
              TextField(
                controller: firstValueController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 8),
              const Text("2nd Value"),
              TextField(
                controller: secondValueController,
                decoration: const InputDecoration(border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                  onPressed: () {
                    int firstValue =
                        int.parse(firstValueController.text.toString());
                    int secondValue =
                        int.parse(secondValueController.text.toString());
                    setState(() {
                      answer = firstValue + secondValue;
                    });
                  },
                  child: const Text("Calculate")),
              const SizedBox(height: 8),
              Text("$answer",
                  style: const TextStyle(
                      fontSize: 19, fontWeight: FontWeight.bold)),
            ],
          )),
        ));
  }
}

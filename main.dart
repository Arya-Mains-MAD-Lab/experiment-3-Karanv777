import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final num1Controller = TextEditingController();
  final num2Controller = TextEditingController();
  final operatorController = TextEditingController();

  int result = 0;

  void calculate() {
    int n1 = int.tryParse(num1Controller.text) ?? 0;
    int n2 = int.tryParse(num2Controller.text) ?? 0;
    String op = operatorController.text;

    setState(() {
      switch (op) {
        case '+':
          result = n1 + n2;
          break;

        case '-':
          result = n1 - n2;
          break;

        case '*':
          result = n1 * n2;
          break;

        case '/':
          if (n2 != 0) {
            result = n1 ~/ n2;
          } else {
            result = 0;
          }
          break;

        default:
          result = 0;
      }
    });
  }

  @override
  void dispose() {
    num1Controller.dispose();
    num2Controller.dispose();
    operatorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 40),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Calculator", style: TextStyle(fontSize: 24)),
            ),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Enter First Number"),
            ),
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 15),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Enter Second Number"),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 15),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Enter Operator (+ - * /)"),
            ),
            TextField(controller: operatorController),

            const SizedBox(height: 40),

            Center(
              child: ElevatedButton(
                onPressed: calculate,
                child: const Text("Calculate"),
              ),
            ),

            const SizedBox(height: 20),

            Center(
              child: Text(
                "Result: $result",
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/test_model.dart';

class TestCounterWidget extends StatefulWidget {
  const TestCounterWidget({Key? key}) : super(key: key);

  @override
  State<TestCounterWidget> createState() => _TestCounterWidgetState();
}

class _TestCounterWidgetState extends State<TestCounterWidget> {
  final TestModel _model = TestModel(counter: 0);

  void _incrementCounter() {
    setState(() {
      _model.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Test Execution Count',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12),
            Text(
              '${_model.counter}',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _incrementCounter,
              icon: const Icon(Icons.check_circle),
              label: const Text('Run Test Success'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dog_age_calculator/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    this.dogName,
    this.dogAge,
  });
  final String? dogName;
  final String? dogAge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const WelcomeScreen()));
        },
        child: const Icon(
          Icons.home,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 18.0,
                ),
                children: <TextSpan>[
                  const TextSpan(text: 'In human years, '),
                  TextSpan(
                    text: '$dogName',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const TextSpan(text: ' is...'),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            Text(
              '$dogAge',
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'years old',
              style: TextStyle(fontSize: 18.0),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Image.asset(
                'images/calmdog.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: file_names
import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Onboarding Screen',
//       home: OnboardingPage(),
//     );
//   }
// }

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.orange.shade200, Colors.orange.shade100],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60.0), // Top spacing
              Center(
                child: Image.asset(
                  'assets/images/', // Update with your custom image path
                  height: 300.0, // Adjust to fit the screen
                  width: 250.0, // Adjust as needed
                ),
              ),
              const SizedBox(height: 0.0), // Spacing between image and text
              const Text(
                'Ageratum is a genus of 40 to 60 tropical and warm'
                'temperate flowering annuals and perennials from '
                'the family Asteraceae, tribe Eupatorieae.Most',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                  height: 20.0), // Spacing between title and subtitle
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.brown[700],
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              const SizedBox(height: 0.0), // Spacing before button
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(90.0),
        child: SizedBox(
          width: double.infinity, // Full width button
          height: 55.0, // Adjust the height to match the design
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NextPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, // Black background
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0), // Rounded corners
              ),
              padding: const EdgeInsets.symmetric(vertical: 15.0),
            ),
            child: const Text(
              '',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white, // White text
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: const Center(
        child: Text('This is the next page.'),
      ),
    );
  }
}

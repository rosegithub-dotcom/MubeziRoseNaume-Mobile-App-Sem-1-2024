import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset(
          //   'assets/images/logo.png', // Replace with your logo asset path
          //   height: 150,
          // ),
          // SizedBox(height: 20),
          Text(
            'MUBEZI ROSE NAUME'
            '2023/DCSE/0043/SS',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text('Get Started'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              backgroundColor: Colors.yellow[700],
              textStyle: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
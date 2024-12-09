// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 243, 7, 7)),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Image at the top
//               Image.asset(
//                 'assets/images/image.png', // Replace with your image asset path
//                 height: 200,
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(height: 20),
              
//               // Login title
//               Text(
//                 'Login',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20),
              
//               // Email input field
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'MUBEZI ROSE NAUME',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
              
//               // Password input field
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 10),
              
//               // Forgot password button
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: TextButton(
//                   onPressed: () {
//                     // Handle "Forgot Password" logic
//                   },
//                   child: Text('Forgot Password?'),
//                 ),
//               ),
//               SizedBox(height: 20),
              
//               // Login button
//               ElevatedButton(
//                 onPressed: () {
//                   // Handle login logic
//                 },
//                 child: Text('Login'),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.yellow[700],
//                   padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
//                   textStyle: TextStyle(fontSize: 18),
//                 ),
//               ),
//               SizedBox(height: 20),
              
//               // Create account text
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, '/home_screen');
//                 },
//                 child: Text.rich(
//                   TextSpan(
//                     text: "Don't have an account? ",
//                     style: TextStyle(color: Colors.black),
//                     children: [
//                       TextSpan(
//                         text: 'Create an account',
//                         style: TextStyle(
//                           color: Colors.yellow[700],
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'MUBEZI ROSE NAUME',
                hintText: 'Enter your full name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(
                      fullName: usernameController.text,
                    ),
                  ),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String fullName;

  HomeScreen({required this.fullName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MUBEZI ROSE NAUME',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('2023/DCSE/0043/SS'),
          ],
        ),
      ),
    );
  }
}

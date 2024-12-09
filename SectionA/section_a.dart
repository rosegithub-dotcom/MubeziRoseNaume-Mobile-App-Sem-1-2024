1(a) Flutter is an open UI source software developed by google

Application developed using Flutter
*Mobile Applications for andriod and ios
*Web Applications
*Desktop for windows

(b)Advantages of using Flutter
*
(c)Dart is the programming language used for flutter develpment

1. Hot Reload for Faster Development
Dart’s Just-In-Time (JIT) compilation enables hot reload, allowing developers to see changes in the code instantly without losing the current state of the app.
2. Performance
Dart compiles to native machine code (Ahead-of-Time, AOT) for mobile and desktop platforms. This ensures Flutter apps are fast, with smooth animations and responsive UI.
3. Single Language for UI and Logic
Dart is used for both the UI design and business logic in Flutter. There’s no need to use separate languages for layout (like XML in Android) and programming.
4. Reactive Framework
Dart’s support for asynchronous programming (e.g., async, await, and Streams) makes it ideal for Flutter's reactive framework. This ensures smooth handling of tasks like API calls or animations.

(d)Hot reload is a development feature in Flutter that allows developers to instantly see changes in their code reflected in the running app without restarting it or losing the current app state. 
When changes are made to the code, Flutter quickly injects the updated source code into the Dart Virtual Machine (VM). The Flutter framework then rebuilds the widget tree, incorporating the changes while preserving the app's current state (e.g., form inputs, scroll positions).

(e)features for Flutter
*Dart programming language
*Hot reload
*Rich UI Components

(f)A stateless widget does not hold or manage any state. It is immutable, meaning its properties do not change once it is
 built. These widgets are ideal for static elements like text, icons, or layouts that don't require dynamic updates.
 import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  final String greeting;

  GreetingWidget({required this.greeting});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        greeting,
        style: TextStyle(fontSize: 24, color: Colors.blue),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Stateless Widget Example')),
      body: GreetingWidget(greeting: 'Hello, Flutter!'),
    ),
  ));
}

A stateful widget manages mutable state. It can change dynamically during its lifetime,
 and the changes are reflected in the UI. These widgets are suitable for interactive or dynamic components like forms, 
 sliders, or counters.
(g)








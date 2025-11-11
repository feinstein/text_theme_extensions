import 'package:flutter/material.dart';
import 'package:text_theme_extensions/text_theme_extensions.dart';

void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example App',
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello World',
            style: context.textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'girisekrani.dart';

void main() {
  runApp(uygulamam());
}
class uygulamam extends StatelessWidget {
  const uygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.indigo,
      ),
      home: girisekrani(),
    );
  }
}



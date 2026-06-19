import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double opacity = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route"), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: opacity,
              child: Container(width: 150, height: 150, color: Colors.blue),
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              setState(() {
                opacity = 0.1;
              });
            },
            child: Text("Animate"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 150;

  double width = 150;
  Color color = Colors.blue;
  double radius = 0;
  double padding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route"), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              padding: EdgeInsets.all(padding),
              duration: Duration(seconds: 2),
              width: width,
              height: height,

              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(radius),
              ),
              child: Text("Route", style: TextStyle(fontSize: 25)),
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              setState(() {
                height = 250;
                width = 250;
                radius = 25;
                color = Colors.brown;
                padding = 50;
              });
            },
            child: Text("Animate"),
          ),
        ],
      ),
    );
  }
}

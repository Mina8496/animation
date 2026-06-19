import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isfirst = false;
double fontsize = 15;
Color color = Colors.green;

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
            child: AnimatedCrossFade(
              firstChild: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
              secondChild: Container(
                width: 250,
                height: 250,
                color: Colors.red,
              ),
              crossFadeState: isfirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
            ),
          ),
          SizedBox(height: 15),
          AnimatedDefaultTextStyle(
            child: Text("Route"),
            style: TextStyle(fontSize: fontsize, color: color),
            duration: Duration(seconds: 2),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isfirst = !isfirst;
                fontsize = 50;
                color = Colors.lightGreenAccent;
              });
            },
            child: Text("Animate"),
          ),
        ],
      ),
    );
  }
}

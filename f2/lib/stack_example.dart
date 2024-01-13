import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.red,
              ),
              Positioned(
                right: 0,
               child: Container(
                 width: 150,
                 height: 150,
                 color: Colors.blue,
               ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

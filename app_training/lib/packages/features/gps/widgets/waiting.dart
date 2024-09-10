import 'package:flutter/material.dart';

class Waiting extends StatelessWidget {
  const Waiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Espere por favor',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(mainAxisSize: MainAxisSize.min, children: [
        FloatingActionButton(
          backgroundColor: const Color(0xFF7E57C2),
          onPressed: () {},
          child: const Icon(
            Icons.more_horiz,
            size: 25,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FloatingActionButton(
          backgroundColor: const Color(0xFF7E57C2),
          onPressed: () {},
          child: const Icon(
            Icons.my_location,
            size: 35,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class ActiveGps extends StatelessWidget {
  const ActiveGps({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.gps_off,
              color: Color(0xFF7E57C2),
              size: 50,
            ),
            SizedBox(height: 30),
            Text(
              'Debes activar tu GPS',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

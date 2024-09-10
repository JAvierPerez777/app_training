import 'package:flutter/material.dart';

class ActiveGps extends StatelessWidget {
  const ActiveGps({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.gps_off,
              color: Colors.grey,
              size: 50,
            ),
            SizedBox(height: 30),
            Text(
              'Debes activar tu GPS',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:app_training/packages/core/ui/markers/start_uber_marker.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 150,
          color: Colors.red,
          child: CustomPaint(
            painter: StartUberMarker(time: '10'),
          ),
        ),
      ),
    );
  }
}

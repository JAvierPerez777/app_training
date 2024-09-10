import 'package:app_training/packages/features/gps/widgets/active_gps.dart';
import 'package:app_training/packages/features/gps/widgets/permisos.dart';
import 'package:flutter/material.dart';

class GpsPages extends StatelessWidget {
  const GpsPages({super.key});

  @override
  Widget build(BuildContext context) {
    const showPermitir = true;
    return const Scaffold(
      body: showPermitir ? Permisos() : ActiveGps(),
    );
  }
}

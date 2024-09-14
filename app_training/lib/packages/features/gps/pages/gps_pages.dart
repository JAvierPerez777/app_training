import 'package:app_training/packages/features/gps/bloc/gps_bloc.dart';
import 'package:app_training/packages/features/gps/widgets/message_.gps.dart';
import 'package:app_training/packages/features/gps/widgets/permissions_gps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GpsPage extends StatelessWidget {
  const GpsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GpsBloc, GpsState>(
        builder: (context, state) {
          final isGpsEnabled = state.isGpsEnable;
          return isGpsEnabled ? const PermissionsGps() : const MessageGps();
        },
      ),
    );
  }
}

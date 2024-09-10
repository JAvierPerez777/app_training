import 'package:flutter/material.dart';

class Permisos extends StatelessWidget {
  const Permisos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/enable_gps.png', height: 100),
              const SizedBox(height: 30),
              const Text(
                'Ubicacion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Necesitamos acceder a tu ubicacion para mostrarte tus rutas e informacion de tu rendimiento',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7E57C2),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Text('Solicitar Permisos')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

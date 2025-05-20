import 'package:flutter/material.dart';

class Carga extends StatelessWidget {
  const Carga({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('cargando', style: TextStyle(fontSize: 18))
          ],
        ),
      ),
    );
  }
}
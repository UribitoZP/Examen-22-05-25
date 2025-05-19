import 'package:flutter/material.dart';

class carga extends StatelessWidget {
  const carga({
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
import 'package:flutter/material.dart';

class errror extends StatelessWidget {
  const errror({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child:
              Image.network('https://cdn0.iconfinder.com/data/icons/shift-free/32/Error-512.png',fit: BoxFit.cover,)),
            SizedBox(height: 20),
            Text('ERROR AL ACCEDER' )
          ],
        ),
      ),
    );
  }
}
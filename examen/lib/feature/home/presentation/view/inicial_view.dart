import 'package:flutter/material.dart';

class inicial extends StatelessWidget {
  const inicial({
    super.key,
  });

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [ 
          Image.network(
            'https://cdn.pixabay.com/photo/2013/03/11/17/18/hotel-92613_640.jpg',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bienvenido al Hotel Uribito',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [Shadow(blurRadius: 5, color: Colors.black)],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  
                  onPressed: () {
                    
                  },
                  child: Text('Entrar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

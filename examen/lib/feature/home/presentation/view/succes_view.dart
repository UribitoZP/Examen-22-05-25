import 'package:flutter/material.dart';

class Succes extends StatelessWidget {
  const Succes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Habitaciones disponibles',
          
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          roomCard(
            imageUrl:
                'https://cdn.easy-rez.com/production/hotels/800f425697d9ebda782da237d313be1b/uploads/.rooms/th_0190306001566756973.jpg',
            title: 'Habitación Doble',
            description: '2 camas, baño privado, aire acondicionado.',
          ),
          const SizedBox(height: 16),
          roomCard(
            imageUrl:
                'https://api.fishhotels.com/api/sites/953ecb0a-a123-4d33-a519-ece06d7d7121/media-images/hvr-family-01.jpg?cw=1769&ch=1327&cx=148&cy=0&s=xl&w=1200&h=900',
            title: 'Suite Deluxe',
            description: 'Cama King, jacuzzi, vista al mar.',
          ),
          const SizedBox(height: 16),
          roomCard(
            imageUrl:
                'https://res.cloudinary.com/traveltripperweb/image/upload/c_limit,f_auto,h_2500,q_auto,w_2500/v1643732012/lsedhhc48clt6jqatp7x.jpg',
            title: 'Habitación Sencilla',
            description: '1 cama individual, TV, WiFi.',
          ),
        ],
      ),
    );
  }

  Widget roomCard({
    required String imageUrl,
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen con fade-in
          SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif', // o cualquier GIF local que tengas
              image: imageUrl,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 400),
            ),
          ),

          // Nombre y descripción
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

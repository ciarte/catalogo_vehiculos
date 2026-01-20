import 'package:flutter/material.dart';

class VehicleImage extends StatelessWidget {
  final String imageUrl;

  const VehicleImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        imageUrl,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) =>
            const Icon(Icons.car_rental, size: 120),
      ),
    );
  }
}
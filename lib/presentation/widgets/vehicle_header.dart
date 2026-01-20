import 'package:catalogo_vehiculos/domain/entities/vehicle.dart';
import 'package:flutter/material.dart';

class VehicleHeader extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleHeader({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${vehicle.brand} ${vehicle.model}',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 4),
        Text(
          '\$${vehicle.price}',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

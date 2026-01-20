
import 'package:catalogo_vehiculos/domain/entities/vehicle.dart';
import 'package:catalogo_vehiculos/presentation/widgets/vehicle_image.dart';
import 'package:catalogo_vehiculos/presentation/widgets/vehicle_header.dart';
import 'package:catalogo_vehiculos/presentation/widgets/vehicle_inflo.dart';
import 'package:flutter/material.dart';

class VehicleDetailPage extends StatelessWidget {
  final Vehicle vehicle;

  const VehicleDetailPage({
    super.key,
    required this.vehicle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${vehicle.brand} ${vehicle.model}'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VehicleImage(imageUrl: vehicle.imageUrl),
            const SizedBox(height: 16),
            VehicleHeader(vehicle: vehicle),
            const Divider(height: 32),
            VehicleInfo(label: 'Año', value: vehicle.year.toString()),
            VehicleInfo(label: 'Precio', value: '\$${vehicle.price}'),
            VehicleInfo(label: 'Color', value: vehicle.color),
            VehicleInfo(label: 'Transmisión', value: vehicle.transmission),
            VehicleInfo(
              label: 'Kilometraje',
              value: '${vehicle.mileage} km',
            ),
          ],
        ),
      ),
    );
  }
}
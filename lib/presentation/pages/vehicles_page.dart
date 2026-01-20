import 'package:catalogo_vehiculos/core/state/view_status.dart';
import 'package:catalogo_vehiculos/presentation/pages/vehicle_detail.dart';
import 'package:catalogo_vehiculos/presentation/vehicle_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VehiclesPage extends StatelessWidget {
  const VehiclesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<VehicleViewModel>();

    switch (vm.status) {
      case ViewStatus.loading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));

      case ViewStatus.error:
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(vm.errorMessage ?? 'Error inesperado'),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: vm.loadVehicles,
                  child: const Text('Reintentar'),
                ),
              ],
            ),
          ),
        );

      case ViewStatus.success:
        return Scaffold(
          appBar: AppBar(title: const Text('Vehículos')),
          body: ListView.builder(
            itemCount: vm.vehicles.length,
            itemBuilder: (_, index) {
              final vehicle = vm.vehicles[index];
              return ListTile(
                title: Text('${vehicle.brand} ${vehicle.model}'),
                subtitle: Text('\$${vehicle.price}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => VehicleDetailPage(vehicle: vehicle),
                    ),
                  );
                },
              );
            },
          ),
        );
      case ViewStatus.initial:
        return const SizedBox.shrink();
    }
  }
}

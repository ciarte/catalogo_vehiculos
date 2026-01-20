import 'package:catalogo_vehiculos/domain/entities/vehicle.dart';
import 'package:catalogo_vehiculos/domain/repositories/vehicle_repository.dart';

class GetVehiclesUsecases {
  final VehicleRepository repository;

  GetVehiclesUsecases(this.repository);
  Future<List<Vehicle>> getVehicles() async {
    return await repository.getVehicles();
  }
}

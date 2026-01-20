import 'package:catalogo_vehiculos/domain/entities/vehicle.dart';
import 'package:catalogo_vehiculos/domain/repositories/vehicle_repository.dart';

class GetVehicleByIdUsecases {
  final VehicleRepository repository;

  GetVehicleByIdUsecases(this.repository);
  Future<Vehicle> getVehicleById(int id) async {
    return await repository.getVehicleById(id);
  }
}

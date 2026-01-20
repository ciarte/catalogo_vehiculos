import 'package:catalogo_vehiculos/domain/entities/vehicle.dart';

abstract class VehicleRepository {
  Future<List<Vehicle>> getVehicles();
  Future<Vehicle> getVehicleById(int id);
}

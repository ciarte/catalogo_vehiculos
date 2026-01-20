import 'package:catalogo_vehiculos/data/model/vehicle_model.dart';

abstract class VehicleRemoteDatasource {
  Future<List<VehicleModel>> getVehicles();
  Future<VehicleModel> getVehicleById(int id);
}

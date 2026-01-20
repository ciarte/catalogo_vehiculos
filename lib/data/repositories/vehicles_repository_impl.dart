import 'package:catalogo_vehiculos/data/datasource/vehicle_remote_datasource.dart';
import 'package:catalogo_vehiculos/data/mapper/vehicle_mapper.dart';
import 'package:catalogo_vehiculos/domain/entities/vehicle.dart';
import 'package:catalogo_vehiculos/domain/repositories/vehicle_repository.dart';

class VehiclesRepositoryImpl  implements VehicleRepository {
final VehicleRemoteDatasource  datasource;

  VehiclesRepositoryImpl(this.datasource);
  @override
  Future<Vehicle> getVehicleById(int id) async {
    final model = await datasource.getVehicleById(id);
    return VehicleMapper.toEntity(model);
  }

  @override
  Future<List<Vehicle>> getVehicles() async{
        final models = await datasource.getVehicles();
    return models.map(VehicleMapper.toEntity).toList();
  }

}
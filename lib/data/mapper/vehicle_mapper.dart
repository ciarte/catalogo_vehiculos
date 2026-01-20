import 'package:catalogo_vehiculos/data/model/vehicle_model.dart';
import 'package:catalogo_vehiculos/domain/entities/vehicle.dart';

class VehicleMapper {
  static Vehicle toEntity(VehicleModel vehicle) {
    return Vehicle(
      id: vehicle.id,
      brand: vehicle.brand,
      model: vehicle.model,
      year: vehicle.year,
      price: vehicle.price,
      color: vehicle.color,
      transmission: vehicle.transmission,
      mileage: vehicle.mileage,
      imageUrl: vehicle.imageUrl,
    );
  }
}

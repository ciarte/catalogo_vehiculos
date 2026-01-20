import 'package:catalogo_vehiculos/domain/entities/vehicle.dart';
import 'package:catalogo_vehiculos/domain/repositories/vehicle_repository.dart';

class FakeVehicleRepository implements VehicleRepository {
  @override
  Future<List<Vehicle>> getVehicles() async {
    return [
      Vehicle(
        id: 1,
        brand: 'Toyota',
        model: 'Corolla',
        year: 2022,
        price: 20000,
        color: 'Blanco',
        transmission: 'Automática',
        mileage: 10000,
        imageUrl: '',
      ),
    ];
  }

  @override
  Future<Vehicle> getVehicleById(int id) async {
    throw UnimplementedError();
  }
}

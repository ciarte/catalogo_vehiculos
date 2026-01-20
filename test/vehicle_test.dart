import 'package:catalogo_vehiculos/core/state/view_status.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:catalogo_vehiculos/presentation/vehicle_view_model.dart';
import 'fake/fake_vehicle_repository.dart';

void main() {
  late VehicleViewModel viewModel;

  setUp(() {
    viewModel = VehicleViewModel(FakeVehicleRepository());
  });

  test('Estado inicial debe ser initial', () {
    expect(viewModel.status, ViewStatus.initial);
    expect(viewModel.vehicles.isEmpty, true);
  });

  test('loadVehicles carga datos', () async {
    await viewModel.loadVehicles();

    expect(viewModel.status, ViewStatus.success);
    expect(viewModel.vehicles.length, 1);
    expect(viewModel.vehicles.first.brand, 'Toyota');
    expect(viewModel.vehicles.first.model, 'Corolla');
  });
}
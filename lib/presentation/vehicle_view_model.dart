import 'package:catalogo_vehiculos/core/state/view_status.dart';
import 'package:catalogo_vehiculos/domain/entities/vehicle.dart';
import 'package:catalogo_vehiculos/domain/repositories/vehicle_repository.dart';
import 'package:flutter/material.dart';

class VehicleViewModel extends ChangeNotifier{

final VehicleRepository repository;

VehicleViewModel(this.repository);
 ViewStatus _status = ViewStatus.initial;
  ViewStatus get status => _status;
 
  List<Vehicle> _vehicles = [];
  List<Vehicle> get vehicles => _vehicles;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> loadVehicles() async {
    _setLoading();

    try {
      _vehicles = await repository.getVehicles();
      _setSuccess();
    } catch (_) {
      _setError('Error al cargar vehículos');
    }
  }

  void _setLoading() {
    _status = ViewStatus.loading;
    notifyListeners();
  }

  void _setSuccess() {
    _status = ViewStatus.success;
    notifyListeners();
  }

  void _setError(String message) {
    _errorMessage = message;
    _status = ViewStatus.error;
    notifyListeners();
  }
}
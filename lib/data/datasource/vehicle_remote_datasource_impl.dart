import 'dart:convert';

import 'package:catalogo_vehiculos/data/datasource/vehicle_remote_datasource.dart';
import 'package:catalogo_vehiculos/data/model/vehicle_model.dart';
import 'package:flutter/services.dart';

class VehiclesRemoteDatasourceImpl implements VehicleRemoteDatasource {
  @override
  Future<List<VehicleModel>> getVehicles() async {
    await Future.delayed(const Duration(seconds: 1));

    final jsonString = await rootBundle.loadString('assets/json_data.json');
    final List decoded = json.decode(jsonString);
    return decoded.map((e) => VehicleModel.fromJson(e)).toList();
  }

  @override
  Future<VehicleModel> getVehicleById(int id) async {
    final vehicles = await getVehicles();

    return vehicles.firstWhere(
      (v) => v.id == id,
      orElse: () => throw Exception('Vehicle not found'),
    );
  }
}

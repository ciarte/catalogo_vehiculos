import 'package:catalogo_vehiculos/data/datasource/vehicle_remote_datasource_impl.dart';
import 'package:catalogo_vehiculos/data/repositories/vehicles_repository_impl.dart';
import 'package:catalogo_vehiculos/presentation/pages/vehicles_page.dart';
import 'package:catalogo_vehiculos/presentation/vehicle_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
    final datasource = VehiclesRemoteDatasourceImpl();
  final repository = VehiclesRepositoryImpl(datasource);
  runApp(MyApp(repository: repository));
}

class MyApp extends StatelessWidget {
    final VehiclesRepositoryImpl repository;
   const MyApp({super.key, required this.repository});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<VehicleViewModel>(
          create: (_) => VehicleViewModel(repository)..loadVehicles(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
        initialRoute: '/',
        routes: {'/': (_) => VehiclesPage(), 
        },
      ),
    );
  }
}
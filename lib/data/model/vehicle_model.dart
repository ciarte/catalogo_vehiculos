class VehicleModel {
  final int id;
  final String brand;
  final String model;
  final int year;
  final int price;
  final String color;
  final String transmission;
  final int mileage;
  final String imageUrl;

  VehicleModel({
    required this.id,
    required this.brand,
    required this.model,
    required this.year,
    required this.price,
    required this.color,
    required this.transmission,
    required this.mileage,
    required this.imageUrl,
  });

  factory VehicleModel.fromJson(Map<String, dynamic> json) {
    return VehicleModel(
      id: json['id'],
      brand: json['brand'],
      model: json['model'],
      year: json['year'],
      price: json['price'],
      color: json['color'],
      transmission: json['transmission'],
      mileage: json['mileage'],
      imageUrl: json['imageUrl'],
    );
  }
}

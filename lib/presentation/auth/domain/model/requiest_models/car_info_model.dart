class CarInfoModel {
  final int? model;
  final int? type;
  final int? color;
  final String? plateCode;
  final String? plateNumber;
  final String? year;

  CarInfoModel({this.plateNumber, this.year, this.model, this.type, this.color, this.plateCode});

  CarInfoModel.fromJson(Map<String, dynamic> json)
    : model = json['model'] as int?,
      plateNumber = json['plate_number'] as String?,
      type = json['type'] as int?,
      color = json['color'] as int?,
      year = json['year'] as String?,
      plateCode = json['plate_code'] as String?;

  Map<String, dynamic> toJson() => {
    'vehicle_models_id': model,
    'vehicle_type_id': type,
    'vehicle_colors_id': color,
    'year': year,
    'plate_code': plateCode,
    'plate_number': plateNumber,
  };
}

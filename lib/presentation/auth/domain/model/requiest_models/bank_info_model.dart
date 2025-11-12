class BankInfoModel {
  final String? bankName;
  final String? code;
  final String? swiftCode;
  final String? mobile;
  final String? iban;
  final String? type;
  final String? number;

  BankInfoModel({this.bankName, this.mobile, this.code, this.swiftCode, this.iban, this.type, this.number});

  BankInfoModel.fromJson(Map<String, dynamic> json)
    : bankName = json['bank_name'] as String?,
      code = json['code'] as String?,
      swiftCode = json['swift_code'] as String?,
      mobile = json['stc_phone'] as String?,
      type = json['type'] as String?,
      iban = json['iban'] as String?,
      number = json['number'] as String?;

  Map<String, dynamic> toJson() => {
    'bank_name': bankName,
    'code': code,
    'stc_phone': mobile,
    'type': type,
    'swift_code': swiftCode,
    'iban': iban,
    'number': number,
  };
}

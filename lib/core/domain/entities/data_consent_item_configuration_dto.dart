import 'dart:convert';

class DataConsentItemConfigurationDto {
  final String oid;
  final String name;
  final String description;
  final bool defaultAllowValue;
  final bool mandatory;

  const DataConsentItemConfigurationDto({
    required this.oid,
    required this.name,
    required this.description,
    required this.defaultAllowValue,
    required this.mandatory,
  });

  factory DataConsentItemConfigurationDto.fromMap(Map<String, dynamic> data) {
    return DataConsentItemConfigurationDto(
      oid: data['Oid'] as String,
      name: data['Name'] as String,
      description: data['Description'] as String,
      defaultAllowValue: data['DefaultAllowValue'] as bool,
      mandatory: data['Mandatory'] as bool,
    );
  }

  Map<String, dynamic> toMap() => {
        'Oid': oid,
        'Name': name,
        'Description': description,
        'DefaultAllowValue': defaultAllowValue,
        'Mandatory': mandatory,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DataConsentItemConfigurationDto].
  factory DataConsentItemConfigurationDto.fromJson(String data) {
    return DataConsentItemConfigurationDto.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DataConsentItemConfigurationDto] to a JSON string.
  String toJson() => json.encode(toMap());
}

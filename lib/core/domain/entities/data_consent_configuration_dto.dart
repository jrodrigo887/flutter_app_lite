import 'dart:convert';
import 'package:desafio_pessoal/core/domain/entities/data_consent_item_configuration_dto.dart';

class DataConsentConfigurationDto {
  final String oid;
  final String title;
  final String dataConsentText;
  final List<DataConsentItemConfigurationDto> dataConsentItemConfigurations;

  const DataConsentConfigurationDto({
    required this.oid,
    required this.title,
    required this.dataConsentText,
    required this.dataConsentItemConfigurations,
  });

  factory DataConsentConfigurationDto.fromMap(Map<String, dynamic> data) {
    return DataConsentConfigurationDto(
      oid: data['Oid'] as String,
      title: data['Title'] as String,
      dataConsentText: data['DataConsentText'] as String,
      dataConsentItemConfigurations: (data['DataConsentItemConfigurations']
              as List<DataConsentItemConfigurationDto>)
          .map((e) => DataConsentItemConfigurationDto.fromMap(
              e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'Oid': oid,
        'Title': title,
        'DataConsentText': dataConsentText,
        'DataConsentItemConfigurations':
            dataConsentItemConfigurations.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DataConsentConfigurationDto].
  factory DataConsentConfigurationDto.fromJson(String data) {
    return DataConsentConfigurationDto.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }
}

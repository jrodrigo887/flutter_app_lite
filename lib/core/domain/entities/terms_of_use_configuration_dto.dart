import 'dart:convert';

import 'package:desafio_pessoal/core/domain/entities/data_consent_configuration_dto.dart';

class TermsOfUseConfigurationDto {
  final String oid;
  final String title;
  final String termsOfUseText;
  final List<DataConsentConfigurationDto> dataConsentConfigurations;

  const TermsOfUseConfigurationDto({
    required this.oid,
    required this.title,
    required this.termsOfUseText,
    required this.dataConsentConfigurations,
  });

  factory TermsOfUseConfigurationDto.fromMap(Map<String, dynamic> data) {
    return TermsOfUseConfigurationDto(
      oid: data['Oid'] as String,
      title: data['Title'] as String,
      termsOfUseText: data['TermsOfUseText'] as String,
      dataConsentConfigurations: (data['DataConsentConfigurations']
              as List<DataConsentConfigurationDto>)
          .map((e) =>
              DataConsentConfigurationDto.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'Oid': oid,
        'Title': title,
        'TermsOfUseText': termsOfUseText,
        'DataConsentConfigurations':
            dataConsentConfigurations.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TermsOfUseConfigurationDto].
  factory TermsOfUseConfigurationDto.fromJson(String data) {
    return TermsOfUseConfigurationDto.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TermsOfUseConfigurationDto] to a JSON string.
  String toJson() => json.encode(toMap());
}

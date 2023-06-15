part of models;

class TermsOfUseConfigurationModel extends Equatable {
  final String? oid;
  final String? title;
  final String? termsOfUseText;
  final List<DataConsentConfigurationModel>? dataConsentConfigurations;

  const TermsOfUseConfigurationModel({
    this.oid,
    this.title,
    this.termsOfUseText,
    this.dataConsentConfigurations,
  });

  factory TermsOfUseConfigurationModel.fromMap(Map<String, dynamic> data) {
    return TermsOfUseConfigurationModel(
      oid: data['Oid'] as String?,
      title: data['Title'] as String?,
      termsOfUseText: data['TermsOfUseText'] as String?,
      dataConsentConfigurations: (data['DataConsentConfigurations']
              as List<dynamic>?)
          ?.map((e) =>
              DataConsentConfigurationModel.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'Oid': oid,
        'Title': title,
        'TermsOfUseText': termsOfUseText,
        'DataConsentConfigurations':
            dataConsentConfigurations?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TermsOfUseConfigurationModel].
  factory TermsOfUseConfigurationModel.fromJson(String data) {
    return TermsOfUseConfigurationModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TermsOfUseConfigurationModel] to a JSON string.
  String toJson() => json.encode(toMap());

  TermsOfUseConfigurationModel copyWith({
    String? oid,
    String? title,
    String? termsOfUseText,
    List<DataConsentConfigurationModel>? dataConsentConfigurations,
  }) {
    return TermsOfUseConfigurationModel(
      oid: oid ?? this.oid,
      title: title ?? this.title,
      termsOfUseText: termsOfUseText ?? this.termsOfUseText,
      dataConsentConfigurations:
          dataConsentConfigurations ?? this.dataConsentConfigurations,
    );
  }

  @override
  List<Object?> get props {
    return [oid];
  }
}

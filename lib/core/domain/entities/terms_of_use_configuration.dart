part of entities;

class TermsOfUseConfiguration extends Equatable {
  final String? oid;
  final String? title;
  final String? termsOfUseText;
  final List<DataConsentConfiguration>? dataConsentConfigurations;

  const TermsOfUseConfiguration({
    this.oid,
    this.title,
    this.termsOfUseText,
    this.dataConsentConfigurations,
  });

  factory TermsOfUseConfiguration.fromMap(Map<String, dynamic> data) {
    return TermsOfUseConfiguration(
      oid: data['Oid'] as String?,
      title: data['Title'] as String?,
      termsOfUseText: data['TermsOfUseText'] as String?,
      dataConsentConfigurations:
          (data['DataConsentConfigurations'] as List<dynamic>?)
              ?.map((e) =>
                  DataConsentConfiguration.fromMap(e as Map<String, dynamic>))
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
  /// Parses the string and returns the resulting Json object as [TermsOfUseConfiguration].
  factory TermsOfUseConfiguration.fromJson(String data) {
    return TermsOfUseConfiguration.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TermsOfUseConfiguration] to a JSON string.
  String toJson() => json.encode(toMap());

  TermsOfUseConfiguration copyWith({
    String? oid,
    String? title,
    String? termsOfUseText,
    List<DataConsentConfiguration>? dataConsentConfigurations,
  }) {
    return TermsOfUseConfiguration(
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

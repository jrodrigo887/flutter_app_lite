part of entities;

class DataConsentConfiguration extends Equatable {
  final String oid;
  final String title;
  final String dataConsentText;
  final List<DataConsentItemConfiguration> dataConsentItemConfigurations;

  const DataConsentConfiguration({
    required this.oid,
    required this.title,
    required this.dataConsentText,
    required this.dataConsentItemConfigurations,
  });

  factory DataConsentConfiguration.fromMap(Map<String, dynamic> data) {
    return DataConsentConfiguration(
      oid: data['Oid'] as String,
      title: data['Title'] as String,
      dataConsentText: data['DataConsentText'] as String,
      dataConsentItemConfigurations: (data['DataConsentItemConfigurations']
              as List<dynamic>)
          .map((e) =>
              DataConsentItemConfiguration.fromMap(e as Map<String, dynamic>))
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
  /// Parses the string and returns the resulting Json object as [DataConsentConfiguration].
  factory DataConsentConfiguration.fromJson(String data) {
    return DataConsentConfiguration.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  @override
  List<Object?> get props {
    return [
      oid,
      title,
      dataConsentText,
      dataConsentItemConfigurations,
    ];
  }
}

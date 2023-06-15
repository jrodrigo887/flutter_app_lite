part of models;

class DataConsentConfigurationModel extends Equatable {
  final String? oid;
  final String? title;
  final String? dataConsentText;
  final List<DataConsentItemConfigurationModel>? dataConsentItemConfigurations;

  const DataConsentConfigurationModel({
    this.oid,
    this.title,
    this.dataConsentText,
    this.dataConsentItemConfigurations,
  });

  factory DataConsentConfigurationModel.fromMap(Map<String, dynamic> data) {
    return DataConsentConfigurationModel(
      oid: data['Oid'] as String?,
      title: data['Title'] as String?,
      dataConsentText: data['DataConsentText'] as String?,
      dataConsentItemConfigurations:
          (data['DataConsentItemConfigurations'] as List<dynamic>?)
              ?.map((e) => DataConsentItemConfigurationModel.fromMap(
                  e as Map<String, dynamic>))
              .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'Oid': oid,
        'Title': title,
        'DataConsentText': dataConsentText,
        'DataConsentItemConfigurations':
            dataConsentItemConfigurations?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DataConsentConfigurationModel].
  factory DataConsentConfigurationModel.fromJson(String data) {
    return DataConsentConfigurationModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DataConsentConfigurationModel] to a JSON string.
  String toJson() => json.encode(toMap());

  DataConsentConfigurationModel copyWith({
    String? oid,
    String? title,
    String? dataConsentText,
    List<DataConsentItemConfigurationModel>? dataConsentItemConfigurations,
  }) {
    return DataConsentConfigurationModel(
      oid: oid ?? this.oid,
      title: title ?? this.title,
      dataConsentText: dataConsentText ?? this.dataConsentText,
      dataConsentItemConfigurations:
          dataConsentItemConfigurations ?? this.dataConsentItemConfigurations,
    );
  }

  @override
  List<Object?> get props {
    return [oid, title];
  }
}

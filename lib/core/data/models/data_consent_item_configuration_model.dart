part of models;

class DataConsentItemConfigurationModel extends Equatable {
  final String? oid;
  final String? name;
  final String? description;
  final bool? defaultAllowValue;
  final bool? mandatory;

  const DataConsentItemConfigurationModel({
    this.oid,
    this.name,
    this.description,
    this.defaultAllowValue,
    this.mandatory,
  });

  factory DataConsentItemConfigurationModel.fromMap(Map<String, dynamic> data) {
    return DataConsentItemConfigurationModel(
      oid: data['Oid'] as String?,
      name: data['Name'] as String?,
      description: data['Description'] as String?,
      defaultAllowValue: data['DefaultAllowValue'] as bool?,
      mandatory: data['Mandatory'] as bool?,
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
  /// Parses the string and returns the resulting Json object as [DataConsentItemConfigurationModel].
  factory DataConsentItemConfigurationModel.fromJson(String data) {
    return DataConsentItemConfigurationModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DataConsentItemConfigurationModel] to a JSON string.
  String toJson() => json.encode(toMap());

  DataConsentItemConfigurationModel copyWith({
    String? oid,
    String? name,
    String? description,
    bool? defaultAllowValue,
    bool? mandatory,
  }) {
    return DataConsentItemConfigurationModel(
      oid: oid ?? this.oid,
      name: name ?? this.name,
      description: description ?? this.description,
      defaultAllowValue: defaultAllowValue ?? this.defaultAllowValue,
      mandatory: mandatory ?? this.mandatory,
    );
  }

  @override
  List<Object?> get props {
    return [
      oid,
      name,
    ];
  }
}

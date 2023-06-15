import 'dart:convert';

import 'package:equatable/equatable.dart';

class DataConsentItemConfiguration extends Equatable {
  final String? oid;
  final String? name;
  final String? description;
  final bool? defaultAllowValue;
  final bool? mandatory;

  const DataConsentItemConfiguration({
    this.oid,
    this.name,
    this.description,
    this.defaultAllowValue,
    this.mandatory,
  });

  factory DataConsentItemConfiguration.fromMap(Map<String, dynamic> data) {
    return DataConsentItemConfiguration(
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
  /// Parses the string and returns the resulting Json object as [DataConsentItemConfiguration].
  factory DataConsentItemConfiguration.fromJson(String data) {
    return DataConsentItemConfiguration.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DataConsentItemConfiguration] to a JSON string.
  String toJson() => json.encode(toMap());

  DataConsentItemConfiguration copyWith({
    String? oid,
    String? name,
    String? description,
    bool? defaultAllowValue,
    bool? mandatory,
  }) {
    return DataConsentItemConfiguration(
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
      description,
      defaultAllowValue,
      mandatory,
    ];
  }
}

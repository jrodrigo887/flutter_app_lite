import 'dart:convert';

import 'package:equatable/equatable.dart';

class CaptureEntryConfiguration extends Equatable {
  final String? captureEntryType;
  final bool? validateBiopassIdFeatures;
  final bool? validateIcaoFeatures;
  final String? oid;
  final bool? mandatory;
  final bool? connect;
  final String? caption;
  final String? identifier;
  final String? name;
  final String? companyId;
  final int? order;

  const CaptureEntryConfiguration({
    this.captureEntryType,
    this.validateBiopassIdFeatures,
    this.validateIcaoFeatures,
    this.oid,
    this.mandatory,
    this.connect,
    this.caption,
    this.identifier,
    this.name,
    this.companyId,
    this.order,
  });

  factory CaptureEntryConfiguration.fromMap(Map<String, dynamic> data) {
    return CaptureEntryConfiguration(
      captureEntryType: data['CaptureEntryType'] as String?,
      validateBiopassIdFeatures: data['ValidateBiopassIDFeatures'] as bool?,
      validateIcaoFeatures: data['ValidateIcaoFeatures'] as bool?,
      oid: data['Oid'] as String?,
      mandatory: data['Mandatory'] as bool?,
      connect: data['Connect'] as bool?,
      caption: data['Caption'] as String?,
      identifier: data['Identifier'] as String?,
      name: data['Name'] as String?,
      companyId: data['CompanyId'] as String?,
      order: data['Order'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'CaptureEntryType': captureEntryType,
        'ValidateBiopassIDFeatures': validateBiopassIdFeatures,
        'ValidateIcaoFeatures': validateIcaoFeatures,
        'Oid': oid,
        'Mandatory': mandatory,
        'Connect': connect,
        'Caption': caption,
        'Identifier': identifier,
        'Name': name,
        'CompanyId': companyId,
        'Order': order,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CaptureEntryConfiguration].
  factory CaptureEntryConfiguration.fromJson(String data) {
    return CaptureEntryConfiguration.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CaptureEntryConfiguration] to a JSON string.
  String toJson() => json.encode(toMap());

  CaptureEntryConfiguration copyWith({
    String? captureEntryType,
    bool? validateBiopassIdFeatures,
    bool? validateIcaoFeatures,
    String? oid,
    bool? mandatory,
    bool? connect,
    String? caption,
    String? identifier,
    String? name,
    String? companyId,
    int? order,
  }) {
    return CaptureEntryConfiguration(
      captureEntryType: captureEntryType ?? this.captureEntryType,
      validateBiopassIdFeatures:
          validateBiopassIdFeatures ?? this.validateBiopassIdFeatures,
      validateIcaoFeatures: validateIcaoFeatures ?? this.validateIcaoFeatures,
      oid: oid ?? this.oid,
      mandatory: mandatory ?? this.mandatory,
      connect: connect ?? this.connect,
      caption: caption ?? this.caption,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      companyId: companyId ?? this.companyId,
      order: order ?? this.order,
    );
  }

  @override
  List<Object?> get props {
    return [
      captureEntryType,
      validateBiopassIdFeatures,
      validateIcaoFeatures,
      oid,
      mandatory,
      connect,
      caption,
      identifier,
      name,
      companyId,
      order,
    ];
  }
}

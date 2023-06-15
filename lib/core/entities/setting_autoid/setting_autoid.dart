import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'capture_entry_configuration.dart';
import 'terms_of_use_configuration.dart';

class SettingAutoid extends Equatable {
  final String? oid;
  final String? name;
  final String? companyId;
  final int? order;
  final bool? userIdentification;
  final String? scheduleConfigurationType;
  final TermsOfUseConfiguration? termsOfUseConfiguration;
  final bool? applyScheduleCertificationIntegration;
  final String? scheduleCertificationItengrationType;
  final String? capturePlatform;
  final List<CaptureEntryConfiguration>? captureEntryConfigurations;

  const SettingAutoid({
    this.oid,
    this.name,
    this.companyId,
    this.order,
    this.userIdentification,
    this.termsOfUseConfiguration,
    this.applyScheduleCertificationIntegration,
    this.scheduleConfigurationType,
    this.scheduleCertificationItengrationType,
    this.capturePlatform,
    this.captureEntryConfigurations,
  });

  factory SettingAutoid.fromMap(Map<String, dynamic> data) => SettingAutoid(
        oid: data['Oid'] as String?,
        name: data['Name'] as String?,
        companyId: data['CompanyId'] as String?,
        order: data['Order'] as int?,
        userIdentification: data['UserIdentification'] as bool?,
        termsOfUseConfiguration: data['TermsOfUseConfiguration'] == null
            ? null
            : TermsOfUseConfiguration.fromMap(
                data['TermsOfUseConfiguration'] as Map<String, dynamic>),
        applyScheduleCertificationIntegration:
            data['ApplyScheduleCertificationIntegration'] as bool?,
        scheduleConfigurationType: data['ScheduleConfigurationType'] as String?,
        scheduleCertificationItengrationType:
            data['ScheduleCertificationItengrationType'] as String?,
        capturePlatform: data['CapturePlatform'] as String?,
        captureEntryConfigurations: (data['CaptureEntryConfigurations']
                as List<dynamic>?)
            ?.map((e) =>
                CaptureEntryConfiguration.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'Oid': oid,
        'Name': name,
        'CompanyId': companyId,
        'Order': order,
        'UserIdentification': userIdentification,
        'TermsOfUseConfiguration': termsOfUseConfiguration?.toMap(),
        'ApplyScheduleCertificationIntegration':
            applyScheduleCertificationIntegration,
        'ScheduleConfigurationType': scheduleConfigurationType,
        'ScheduleCertificationItengrationType':
            scheduleCertificationItengrationType,
        'CapturePlatform': capturePlatform,
        'CaptureEntryConfigurations':
            captureEntryConfigurations?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SettingAutoid].
  factory SettingAutoid.fromJson(String data) {
    return SettingAutoid.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SettingAutoid] to a JSON string.
  String toJson() => json.encode(toMap());

  SettingAutoid copyWith({
    String? oid,
    String? name,
    String? companyId,
    int? order,
    bool? userIdentification,
    TermsOfUseConfiguration? termsOfUseConfiguration,
    bool? applyScheduleCertificationIntegration,
    String? scheduleConfigurationType,
    String? scheduleCertificationItengrationType,
    String? capturePlatform,
    List<CaptureEntryConfiguration>? captureEntryConfigurations,
  }) {
    return SettingAutoid(
      oid: oid ?? this.oid,
      name: name ?? this.name,
      companyId: companyId ?? this.companyId,
      order: order ?? this.order,
      userIdentification: userIdentification ?? this.userIdentification,
      termsOfUseConfiguration:
          termsOfUseConfiguration ?? this.termsOfUseConfiguration,
      applyScheduleCertificationIntegration:
          applyScheduleCertificationIntegration ??
              this.applyScheduleCertificationIntegration,
      scheduleConfigurationType:
          scheduleConfigurationType ?? this.scheduleConfigurationType,
      scheduleCertificationItengrationType:
          scheduleCertificationItengrationType ??
              this.scheduleCertificationItengrationType,
      capturePlatform: capturePlatform ?? this.capturePlatform,
      captureEntryConfigurations:
          captureEntryConfigurations ?? this.captureEntryConfigurations,
    );
  }

  @override
  List<Object?> get props {
    return [
      oid,
      name,
      companyId,
      order,
      userIdentification,
      termsOfUseConfiguration,
      applyScheduleCertificationIntegration,
      scheduleConfigurationType,
      scheduleCertificationItengrationType,
      capturePlatform,
      captureEntryConfigurations,
    ];
  }
}

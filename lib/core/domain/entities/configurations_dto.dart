import 'dart:convert';

class ConfigurationDto {
  final String oid;
  final String name;
  final String companyId;
  final String scheduleConfigurationType;
  final bool userIdentification;
  final int order;
  final bool applyScheduleCertificationIntegration;
  final String scheduleCertificationItengrationType;
  final dynamic toleranceConfiguration;
  final List<String> messages;
  final String capturePlatform;
  // final AssistanceQueue assistanceQueue;
  // final TermsOfUseConfiguration termsOfUseConfiguration;
  // final List<CaptureEntryConfiguration> captureEntryConfigurations;

  const ConfigurationDto({
    required this.scheduleConfigurationType,
    required this.toleranceConfiguration,
    required this.messages,
    required this.oid,
    required this.name,
    required this.companyId,
    required this.order,
    required this.userIdentification,
    required this.applyScheduleCertificationIntegration,
    required this.scheduleCertificationItengrationType,
    required this.capturePlatform,
    // required this.termsOfUseConfiguration,
    // required this.assistanceQueue,
    // required this.captureEntryConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Oid': oid,
      'Name': name,
      'CompanyId': companyId,
      'ScheduleConfigurationType': scheduleConfigurationType,
      'UserIdentification': userIdentification,
      'Order': order,
      'ApplyScheduleCertificationIntegration':
          applyScheduleCertificationIntegration,
      'ScheduleCertificationItengrationType':
          scheduleCertificationItengrationType,
      'ToleranceConfiguration': toleranceConfiguration,
      'Messages': messages,
      'CapturePlatform': capturePlatform,
    };
  }

  factory ConfigurationDto.fromMap(Map<String, dynamic> map) {
    return ConfigurationDto(
      oid: map['Oid'] as String,
      name: map['Name'] as String,
      companyId: map['CompanyId'] as String,
      scheduleConfigurationType: map['ScheduleConfigurationType'] as String,
      userIdentification: map['UserIdentification'] as bool,
      order: map['Order'] as int,
      applyScheduleCertificationIntegration:
          map['ApplyScheduleCertificationIntegration'] as bool,
      scheduleCertificationItengrationType:
          map['ScheduleCertificationItengrationType'] as String,
      toleranceConfiguration: map['ToleranceConfiguration'] as dynamic,
      messages: List<String>.from((map['Messages'] as List<String>)),
      capturePlatform: map['CapturePlatform'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ConfigurationDto.fromJson(String source) =>
      ConfigurationDto.fromMap(json.decode(source) as Map<String, dynamic>);
}

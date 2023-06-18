// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:desafio_pessoal/core/domain/entities/capture_entry_configuration_dto.dart';
import 'package:desafio_pessoal/core/domain/entities/terms_of_use_configuration_dto.dart';

import 'assistance_queue_dto.dart';

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
  final AssistanceQueueDto assistanceQueue;
  final TermsOfUseConfigurationDto termsOfUseConfiguration;
  final List<CaptureEntryConfigurationDto> captureEntryConfigurations;

  const ConfigurationDto(
      {required this.oid,
      required this.name,
      required this.companyId,
      required this.scheduleConfigurationType,
      required this.userIdentification,
      required this.order,
      required this.applyScheduleCertificationIntegration,
      required this.scheduleCertificationItengrationType,
      required this.toleranceConfiguration,
      required this.messages,
      required this.capturePlatform,
      required this.assistanceQueue,
      required this.captureEntryConfigurations,
      required this.termsOfUseConfiguration});

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
      'CaptureEntryConfigurations':
          captureEntryConfigurations.map((e) => e.toJson()),
      'TermsOfUseConfiguration': termsOfUseConfiguration.toMap()
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
        captureEntryConfigurations: List<CaptureEntryConfigurationDto>.from(
            (map['CaptureEntryConfigurations']
                    as List<CaptureEntryConfigurationDto>)
                .map((e) => e.toMap())),
        assistanceQueue: AssistanceQueueDto.fromMap(map['AssistanceQueue']),
        termsOfUseConfiguration:
            TermsOfUseConfigurationDto.fromMap(map['TermsOfUseConfiguration']));
  }

  String toJson() => json.encode(toMap());

  factory ConfigurationDto.fromJson(String source) =>
      ConfigurationDto.fromMap(json.decode(source) as Map<String, dynamic>);
}

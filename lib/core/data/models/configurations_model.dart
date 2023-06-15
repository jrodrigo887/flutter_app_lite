part of models;

class ConfigurationModel extends Equatable {
  final String? oid;
  final String? name;
  final String? companyId;
  final String? scheduleConfigurationType;
  final dynamic toleranceConfiguration;
  final bool? userIdentification;
  final List<dynamic>? messages;
  final AssistanceQueueModel? assistanceQueue;
  final int? order;
  final TermsOfUseConfigurationModel? termsOfUseConfiguration;
  final bool? applyScheduleCertificationIntegration;
  final String? scheduleCertificationItengrationType;
  final String? capturePlatform;
  final List<CaptureEntryConfigurationModel>? captureEntryConfigurations;

  const ConfigurationModel({
    this.scheduleConfigurationType,
    this.toleranceConfiguration,
    this.messages,
    this.assistanceQueue,
    this.oid,
    this.name,
    this.companyId,
    this.order,
    this.userIdentification,
    this.termsOfUseConfiguration,
    this.applyScheduleCertificationIntegration,
    this.scheduleCertificationItengrationType,
    this.capturePlatform,
    this.captureEntryConfigurations,
  });

  factory ConfigurationModel.fromMap(Map<String, dynamic> data) {
    return ConfigurationModel(
      scheduleConfigurationType: data['ScheduleConfigurationType'] as String?,
      toleranceConfiguration: data['ToleranceConfiguration'] as dynamic,
      messages: data['Messages'] as List<dynamic>?,
      assistanceQueue: data['AssistanceQueue'] == null
          ? null
          : AssistanceQueueModel.fromMap(
              data['AssistanceQueue'] as Map<String, dynamic>),
      oid: data['Oid'] as String?,
      name: data['Name'] as String?,
      companyId: data['CompanyId'] as String?,
      order: data['Order'] as int?,
      userIdentification: data['UserIdentification'] as bool?,
      termsOfUseConfiguration: data['TermsOfUseConfiguration'] == null
          ? null
          : TermsOfUseConfigurationModel.fromMap(
              data['TermsOfUseConfiguration'] as Map<String, dynamic>),
      applyScheduleCertificationIntegration:
          data['ApplyScheduleCertificationIntegration'] as bool?,
      scheduleCertificationItengrationType:
          data['ScheduleCertificationItengrationType'] as String?,
      capturePlatform: data['CapturePlatform'] as String?,
      captureEntryConfigurations: (data['CaptureEntryConfigurations']
              as List<dynamic>?)
          ?.map((e) =>
              CaptureEntryConfigurationModel.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'ScheduleConfigurationType': scheduleConfigurationType,
        'ToleranceConfiguration': toleranceConfiguration,
        'Messages': messages,
        'AssistanceQueue': assistanceQueue?.toMap(),
        'Oid': oid,
        'Name': name,
        'CompanyId': companyId,
        'Order': order,
        'UserIdentification': userIdentification,
        'TermsOfUseConfiguration': termsOfUseConfiguration?.toMap(),
        'ApplyScheduleCertificationIntegration':
            applyScheduleCertificationIntegration,
        'ScheduleCertificationItengrationType':
            scheduleCertificationItengrationType,
        'CapturePlatform': capturePlatform,
        'CaptureEntryConfigurations':
            captureEntryConfigurations?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ConfigurationModel].
  factory ConfigurationModel.fromJson(String data) {
    return ConfigurationModel.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ConfigurationModel] to a JSON string.
  String toJson() => json.encode(toMap());

  ConfigurationModel copyWith({
    String? scheduleConfigurationType,
    dynamic toleranceConfiguration,
    List<dynamic>? messages,
    AssistanceQueueModel? assistanceQueue,
    String? oid,
    String? name,
    String? companyId,
    int? order,
    bool? userIdentification,
    TermsOfUseConfigurationModel? termsOfUseConfiguration,
    bool? applyScheduleCertificationIntegration,
    String? scheduleCertificationItengrationType,
    String? capturePlatform,
    List<CaptureEntryConfigurationModel>? captureEntryConfigurations,
  }) {
    return ConfigurationModel(
      scheduleConfigurationType:
          scheduleConfigurationType ?? this.scheduleConfigurationType,
      toleranceConfiguration:
          toleranceConfiguration ?? this.toleranceConfiguration,
      messages: messages ?? this.messages,
      assistanceQueue: assistanceQueue ?? this.assistanceQueue,
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
      userIdentification,
    ];
  }
}

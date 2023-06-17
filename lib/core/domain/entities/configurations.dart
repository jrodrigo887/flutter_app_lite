part of entities;

class Configuration extends Equatable {
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
  final List<CaptureEntryConfiguration> captureEntryConfigurations;

  const Configuration({
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
    required this.captureEntryConfigurations,
  });

  @override
  List<Object> get props {
    return [
      oid,
    ];
  }
}

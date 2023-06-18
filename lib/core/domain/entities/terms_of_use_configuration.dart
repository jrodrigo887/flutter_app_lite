part of entities;

class TermsOfUseConfiguration extends Equatable {
  final String oid;
  final String title;
  final String termsOfUseText;
  final List<DataConsentConfiguration> dataConsentConfigurations;

  const TermsOfUseConfiguration({
    required this.oid,
    required this.title,
    required this.termsOfUseText,
    required this.dataConsentConfigurations,
  });

  @override
  List<Object?> get props {
    return [oid];
  }
}

part of entities;

class DataConsentConfiguration extends Equatable {
  final String oid;
  final String title;
  final String dataConsentText;
  final List<DataConsentItemConfiguration> dataConsentItemConfigurations;

  const DataConsentConfiguration({
    required this.oid,
    required this.title,
    required this.dataConsentText,
    required this.dataConsentItemConfigurations,
  });

  @override
  List<Object?> get props {
    return [oid];
  }
}

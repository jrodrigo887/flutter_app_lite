part of entities;

class DataConsentItemConfiguration extends Equatable {
  final String oid;
  final String name;
  final String description;
  final bool defaultAllowValue;
  final bool mandatory;

  const DataConsentItemConfiguration({
    required this.oid,
    required this.name,
    required this.description,
    required this.defaultAllowValue,
    required this.mandatory,
  });

  @override
  List<Object?> get props {
    return [oid];
  }
}

import 'entry_type.dart';

class FingerprintEntryType extends EntryType {
  bool validateBiopassIDFeatures;
  String fingerPrintHand;
  FingerprintEntryType({
    required this.validateBiopassIDFeatures,
    required this.fingerPrintHand,
    required super.captureEntryType,
    required super.name,
    required super.oid,
    required super.caption,
    required super.mandatory,
  });
}

import 'entry_type.dart';

class MatchEntryType extends EntryType {
  String referenceCapture;
  String validateIcaoFeatures;
  MatchEntryType({
    required this.referenceCapture,
    required this.validateIcaoFeatures,
    required super.captureEntryType,
    required super.name,
    required super.oid,
    required super.caption,
    required super.mandatory,
  });
}

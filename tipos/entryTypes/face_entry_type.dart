// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'entry_type.dart';

class FaceEntryType extends EntryType {
  String validateIcaoFeatures;
  String validateBiopassIDFeatures;
  FaceEntryType({
    required this.validateIcaoFeatures,
    required this.validateBiopassIDFeatures,
    required super.captureEntryType,
    required super.name,
    required super.oid,
    required super.caption,
    required super.mandatory,
  });
}

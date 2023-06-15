// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'entry_type.dart';

class DocumentEntryType extends EntryType {
  String cameraDirection;
  String cameraSelection;
  DocumentEntryType({
    required this.cameraDirection,
    required this.cameraSelection,
    required super.captureEntryType,
    required super.name,
    required super.oid,
    required super.caption,
    required super.mandatory,
  });
}

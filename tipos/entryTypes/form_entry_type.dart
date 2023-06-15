// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'entry_type.dart';

class FormEntryType extends EntryType {
  List<dynamic> fields;
  dynamic identificationDocumentCaptureEntryConfiguration;
  bool ocrLink;
  FormEntryType({
    required this.fields,
    required this.identificationDocumentCaptureEntryConfiguration,
    required this.ocrLink,
    required super.captureEntryType,
    required super.name,
    required super.oid,
    required super.caption,
    required super.mandatory,
  });
}

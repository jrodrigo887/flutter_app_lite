// ignore_for_file: public_member_api_docs, sort_constructors_first

class EntryType {
  String captureEntryType;
  String name;
  String oid;
  String caption;
  bool mandatory;
  String? isExternalCapture;
  String? replied;
  EntryType({
    required this.captureEntryType,
    required this.name,
    required this.oid,
    required this.caption,
    required this.mandatory,
    this.isExternalCapture,
    this.replied,
  });
}

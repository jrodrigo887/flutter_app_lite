import 'entry_type.dart';

class EndScheduleEntryTypeDTO extends EntryType {
  String typeOfFinishing;
  String linkForRedirect;
  EndScheduleEntryTypeDTO({
    required this.typeOfFinishing,
    required this.linkForRedirect,
    required super.captureEntryType,
    required super.name,
    required super.oid,
    required super.caption,
    required super.mandatory,
  });
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'entry_type.dart';

abstract class Options {
  late String name;
  late bool selected;
  late List<Map<String, String>> linkCapture;
  late int order;
}

abstract class FormFieldDynamicControl {
  late String captureInput;
  late String variableInput;
}

abstract class FormFieldDynamic {
  late String fieldAttribute;
  late String url;
  late FormFieldDynamicControl formFieldDynamicControl;
}

class FormEntryTypeField extends EntryType {
  int order;
  String type;
  bool disabled;
  bool connect;
  int initialRange;
  int finalRange;
  List<Options> options;
  FormFieldDynamic formFieldDynamic;
  String ocrFieldName;
  bool srcCep;
  bool srcCepField;

  // Injetados
  String? inputType;
  String value;
  String? mask;
  List<Function> rules;
  List<String>? entriesToActive;
  bool isMultipleSelect;
  String correiosField;
  FormEntryTypeField({
    required this.order,
    required this.type,
    required this.disabled,
    required this.connect,
    required this.initialRange,
    required this.finalRange,
    required this.options,
    required this.formFieldDynamic,
    required this.ocrFieldName,
    required this.srcCep,
    required this.srcCepField,
    this.inputType,
    required this.value,
    this.mask,
    required this.rules,
    this.entriesToActive,
    required this.isMultipleSelect,
    required this.correiosField,
    required super.name,
    required super.oid,
    required super.caption,
    required super.mandatory,
    required super.captureEntryType,
  });
}

enum FieldType {
  text,
  number,
  email,
  rg,
  cpf,
  cnpj,
  datetime,
  time,
  select,
  dnv,
  dynamicSelect,
  multipleSelect,
  zipCode
}

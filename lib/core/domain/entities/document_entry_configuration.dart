import 'package:desafio_pessoal/core/domain/entities/entities.dart';

class DocumentEntryConfiguration extends CaptureEntryConfiguration {
  String cameraDirection;
  String cameraSelection;
  DocumentEntryConfiguration({
    required this.cameraDirection,
    required this.cameraSelection,
  }) : super(
            captureEntryType: '',
            name: '',
            oid: '',
            caption: '',
            mandatory: false);
}

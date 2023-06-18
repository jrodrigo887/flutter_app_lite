import 'dart:convert';

import 'package:desafio_pessoal/core/domain/entities/attendant_dto.dart';
import 'package:desafio_pessoal/core/domain/entities/day_of_week_dto.dart';

class AssistanceQueueDto {
  final String oid;
  final String name;
  final List<AttendantDto> attendants;
  final String attendantNames;
  final List<DayOfWeekDto> dayOfWeeks;

  const AssistanceQueueDto({
    required this.oid,
    required this.name,
    required this.attendants,
    required this.attendantNames,
    required this.dayOfWeeks,
  });

  factory AssistanceQueueDto.fromMap(Map<String, dynamic> data) {
    return AssistanceQueueDto(
      oid: data['Oid'] as String,
      name: data['Name'] as String,
      attendants: (data['Attendants'] as List<AttendantDto>)
          .map((e) => AttendantDto.fromMap(e as Map<String, dynamic>))
          .toList(),
      attendantNames: data['AttendantNames'] as String,
      dayOfWeeks: (data['DayOfWeeks'] as List<DayOfWeekDto>)
          .map((e) => DayOfWeekDto.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'Oid': oid,
        'Name': name,
        'Attendants': attendants.map((e) => e.toMap()).toList(),
        'AttendantNames': attendantNames,
        'DayOfWeeks': dayOfWeeks.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AssistanceQueue].
  factory AssistanceQueueDto.fromJson(String data) {
    return AssistanceQueueDto.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AssistanceQueue] to a JSON string.
  String toJson() => json.encode(toMap());
}

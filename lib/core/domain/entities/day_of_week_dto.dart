import 'dart:convert';

class DayOfWeekDto {
  final String dayOfWeek;
  final String workTimeStart;
  final String workTimeEnd;
  final int queueSize;

  const DayOfWeekDto({
    required this.dayOfWeek,
    required this.workTimeStart,
    required this.workTimeEnd,
    required this.queueSize,
  });

  factory DayOfWeekDto.fromMap(Map<String, dynamic> data) => DayOfWeekDto(
        dayOfWeek: data['DayOfWeek'] as String,
        workTimeStart: data['WorkTimeStart'] as String,
        workTimeEnd: data['WorkTimeEnd'] as String,
        queueSize: data['QueueSize'] as int,
      );

  Map<String, dynamic> toMap() => {
        'DayOfWeek': dayOfWeek,
        'WorkTimeStart': workTimeStart,
        'WorkTimeEnd': workTimeEnd,
        'QueueSize': queueSize,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DayOfWeekDto].
  factory DayOfWeekDto.fromJson(String data) {
    return DayOfWeekDto.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DayOfWeek] to a JSON string.
  String toJson() => json.encode(toMap());
}

part of entities;

class DayOfWeek {
  final String dayOfWeek;
  final String workTimeStart;
  final String workTimeEnd;
  final int queueSize;

  const DayOfWeek({
    required this.dayOfWeek,
    required this.workTimeStart,
    required this.workTimeEnd,
    required this.queueSize,
  });

  factory DayOfWeek.fromMap(Map<String, dynamic> data) => DayOfWeek(
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
  /// Parses the string and returns the resulting Json object as [DayOfWeek].
  factory DayOfWeek.fromJson(String data) {
    return DayOfWeek.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [DayOfWeek] to a JSON string.
  String toJson() => json.encode(toMap());
}

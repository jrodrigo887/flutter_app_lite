part of entities;

class AssistanceQueue extends Equatable {
  final String oid;
  final String name;
  final List<Attendant> attendants;
  final String attendantNames;
  final List<DayOfWeek> dayOfWeeks;

  const AssistanceQueue({
    required this.oid,
    required this.name,
    required this.attendants,
    required this.attendantNames,
    required this.dayOfWeeks,
  });

  @override
  List<Object?> get props {
    return [oid, name];
  }
}

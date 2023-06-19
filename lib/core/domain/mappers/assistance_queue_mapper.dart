part of mappers;

abstract class AssistanceQueueMapper {
  static AssistanceQueue fromDto(AssistanceQueueDto dto) {
    return AssistanceQueue(
        oid: dto.oid,
        name: dto.name,
        attendants:
            dto.attendants.map((e) => AttendantMapper.fromDto(e)).toList(),
        attendantNames: dto.attendantNames,
        dayOfWeeks:
            dto.dayOfWeeks.map((e) => DayOfWeekMapper.fromDto(e)).toList());
  }

  static AssistanceQueueDto toDto(AssistanceQueue assistance) {
    return AssistanceQueueDto(
        oid: assistance.oid,
        name: assistance.name,
        attendants:
            assistance.attendants.map((e) => AttendantMapper.toDto(e)).toList(),
        attendantNames: assistance.attendantNames,
        dayOfWeeks: assistance.dayOfWeeks
            .map((e) => DayOfWeekMapper.toDto(e))
            .toList());
  }
}

part of mappers;

class AttendantMapper {
  static Attendant fromDto(AttendantDto attDto) {
    return Attendant(
        oid: attDto.oid,
        name: attDto.name,
        userId: attDto.userId,
        cpf: attDto.cpf,
        profileImage: attDto.profileImage,
        company: attDto.company);
  }

  static AttendantDto toDto(Attendant attDto) {
    return AttendantDto(
        oid: attDto.oid,
        name: attDto.name,
        userId: attDto.userId,
        cpf: attDto.cpf,
        profileImage: attDto.profileImage,
        company: attDto.company);
  }
}

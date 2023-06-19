part of dtos;

class AttendantDto {
  final String oid;
  final String name;
  final String userId;
  final String cpf;
  final String profileImage;
  final String company;

  const AttendantDto({
    required this.oid,
    required this.name,
    required this.userId,
    required this.cpf,
    required this.profileImage,
    required this.company,
  });

  factory AttendantDto.fromMap(Map<String, dynamic> data) => AttendantDto(
        oid: data['Oid'] as String,
        name: data['Name'] as String,
        userId: data['UserId'] as String,
        cpf: data['Cpf'] as String,
        profileImage: data['ProfileImage'] as String,
        company: data['Company'] as String,
      );

  Map<String, dynamic> toMap() => {
        'Oid': oid,
        'Name': name,
        'UserId': userId,
        'Cpf': cpf,
        'ProfileImage': profileImage,
        'Company': company,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Attendant].
  factory AttendantDto.fromJson(String data) {
    return AttendantDto.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Attendant] to a JSON string.
  String toJson() => json.encode(toMap());
}

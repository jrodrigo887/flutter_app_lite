part of models;

class AttendantModel extends Equatable {
  final String? oid;
  final String? name;
  final String? userId;
  final String? cpf;
  final String? profileImage;
  final String? company;

  const AttendantModel({
    this.oid,
    this.name,
    this.userId,
    this.cpf,
    this.profileImage,
    this.company,
  });

  factory AttendantModel.fromMap(Map<String, dynamic> data) => AttendantModel(
        oid: data['Oid'] as String?,
        name: data['Name'] as String?,
        userId: data['UserId'] as String?,
        cpf: data['Cpf'] as String?,
        profileImage: data['ProfileImage'] as String?,
        company: data['Company'] as String?,
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
  /// Parses the string and returns the resulting Json object as [AttendantModel].
  factory AttendantModel.fromJson(String data) {
    return AttendantModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AttendantModel] to a JSON string.
  String toJson() => json.encode(toMap());

  AttendantModel copyWith({
    String? oid,
    String? name,
    String? userId,
    String? cpf,
    String? profileImage,
    String? company,
  }) {
    return AttendantModel(
      oid: oid ?? this.oid,
      name: name ?? this.name,
      userId: userId ?? this.userId,
      cpf: cpf ?? this.cpf,
      profileImage: profileImage ?? this.profileImage,
      company: company ?? this.company,
    );
  }

  @override
  List<Object?> get props {
    return [
      oid,
      userId,
      cpf,
    ];
  }
}

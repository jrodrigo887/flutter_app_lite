part of entities;

class Attendant extends Equatable {
  final String? oid;
  final String? name;
  final String? userId;
  final String? cpf;
  final String? profileImage;
  final String? company;

  const Attendant({
    this.oid,
    this.name,
    this.userId,
    this.cpf,
    this.profileImage,
    this.company,
  });

  factory Attendant.fromMap(Map<String, dynamic> data) => Attendant(
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
  /// Parses the string and returns the resulting Json object as [Attendant].
  factory Attendant.fromJson(String data) {
    return Attendant.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Attendant] to a JSON string.
  String toJson() => json.encode(toMap());

  Attendant copyWith({
    String? oid,
    String? name,
    String? userId,
    String? cpf,
    String? profileImage,
    String? company,
  }) {
    return Attendant(
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

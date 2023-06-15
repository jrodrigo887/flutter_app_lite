import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../../ambients.dart';

class DateExpiration extends ValueNotifier<DateTime> {
  DateExpiration(date) : super(date);

  getDate() => value;
  setDate(date) => value = date;
}

ValueNotifier timeExpiredy = ValueNotifier<DateTime?>(DateTime.now());
ValueNotifier tokeIsAboutToExpire = ValueNotifier<bool>(false);
ValueNotifier bearerToken = ValueNotifier<String>('');

class FirebaseGateway {
  AmbientProperties properties;
  static User? _user;
  static late DateExpiration date;

  FirebaseGateway(this.properties) {
    FirebaseGateway.date =
        DateExpiration(DateTime.now().add(const Duration(hours: 10)));
  }

  bool tokeIsAboutExpire() {
    final now = DateTime.now();
    var isExpirated = FirebaseGateway.date.value.isBefore(now);
    return isExpirated;
  }

  Future<String?> refreshToke() async {
    var data = await FirebaseAuth.instance.currentUser?.getIdTokenResult(true);
    timeExpiredy.value = data?.expirationTime;
    bearerToken.value = "Bearer ${data?.token}";
    return data?.token;
  }

  static String get bearer => bearerToken.value;

  Future<String> initialize() async {
    if (FirebaseGateway._user != null) {
      throw ArgumentError("O Firebase já foi inicializado");
    }

    var opt = FirebaseOptions(
      apiKey: properties.apiKey,
      appId: properties.appId,
      messagingSenderId: properties.messagingSenderId,
      projectId: properties.projectId,
    );

    await Firebase.initializeApp(options: opt);

    await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
    await FirebaseAuth.instance.signInAnonymously();
    FirebaseGateway._user = FirebaseAuth.instance.currentUser;

    var token = await refreshToke();
    return token ?? '';
  }
}

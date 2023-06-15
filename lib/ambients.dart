// refatorar para variavies de ambientes do flutter
class AmbientProperties {
  final String apiKey;
  final String authDomain;
  final String databaseURL;
  final String projectId;
  final String storageBucket;
  final String messagingSenderId;
  final String appId;
  final String insightsKey;
  final String apiUrl;
  final String clientApiUrl;
  AmbientProperties({
    required this.apiKey,
    required this.authDomain,
    required this.databaseURL,
    required this.projectId,
    required this.storageBucket,
    required this.messagingSenderId,
    required this.appId,
    required this.insightsKey,
    required this.apiUrl,
    required this.clientApiUrl,
  });
}

abstract class Ambients {
  AmbientProperties dev();
  AmbientProperties prod();
  AmbientProperties homol();
  AmbientProperties? getProperties();
}

class AmbientConfigurationsFactory implements Ambients {
  late AmbientProperties _amb;

  AmbientConfigurationsFactory(String ambientName) {
    if (ambientName == 'dev') {
      _amb = dev();
    }
    if (ambientName == 'homol') {
      _amb = homol();
    }
    if (ambientName == 'prod') {
      _amb = prod();
    }
  }

  @override
  AmbientProperties getProperties() => _amb;

  @override
  AmbientProperties dev() {
    return AmbientProperties(
        apiKey: '',
        appId: '',
        authDomain: '',
        databaseURL: '',
        messagingSenderId: '',
        projectId: '',
        storageBucket: '',
        insightsKey: '',
        apiUrl: '',
        clientApiUrl: '');
  }

  @override
  AmbientProperties homol() {
    return AmbientProperties(
        apiKey: '',
        appId: '',
        authDomain: '',
        databaseURL: '',
        messagingSenderId: '',
        projectId: '',
        storageBucket: '',
        insightsKey: '',
        apiUrl: '',
        clientApiUrl: '');
  }

  @override
  AmbientProperties prod() {
    return AmbientProperties(
        apiKey: '',
        appId: '',
        authDomain: '',
        databaseURL: '',
        messagingSenderId: '',
        projectId: '',
        storageBucket: '',
        insightsKey: '',
        apiUrl: '',
        clientApiUrl: '');
  }
}

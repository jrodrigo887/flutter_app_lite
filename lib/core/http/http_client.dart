part of core;

class HttpClient extends Http {
  late FirebaseGateway firebase;
  var client = http.BaseClient;
  late Map<String, String> _headers;
  final link = 'https://api-dev.certfy.tech/onboarding/internal/api';
  HttpClient() {
    _verifyToken();
    _headers = {'Authorization': FirebaseGateway.bearer};
  }

  Future<void> _verifyToken() async {
    if (firebase.tokeIsAboutExpire()) {
      await firebase.refreshToke();
    }
  }

  @override
  Future delete(String url) async {
    return await http.delete(
      _getUrl(url),
    );
  }

  @override
  Future<http.Response> get(String url, {Map<String, String>? headers}) async {
    return await http.get(Uri.parse(link + url), headers: _headers);
  }

  @override
  Future post(String url,
      {Map<String, String>? headers, Object? body, Encoding? encoding}) async {
    return await http.post(_getUrl(url),
        body: body, headers: headers, encoding: encoding);
  }

  @override
  Future put(String url, Object? body) async {
    return await http.post(_getUrl(url), body: body);
  }

  _getUrl(String path) {
    return Uri.https(
        'https://api-dev.certfy.tech/onboarding/internal/api', path);
  }
}

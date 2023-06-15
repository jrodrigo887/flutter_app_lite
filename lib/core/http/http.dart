import 'dart:convert';

abstract class Http {
  Future get(String url);
  Future put(String url, Object? body);
  Future post(
    String url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  });
  Future delete(String url);
}

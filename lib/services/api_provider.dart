import 'dart:convert';

import 'package:flutter_git_search/logic/models/user_model.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  static String baseUrl(String nickname) =>
      'https://api.github.com/search/users?q=$nickname';

  static Map<String, String> httpHeaders() {
    final Map<String, String> map = <String, String>{};
    map['accept'] = 'application/vnd.github+json';
    map['X-GitHub-Api-Version'] = '2022-11-28';
    return map;
  }

  Future<List<User>> getUser(String nickname) async {
    var response = await http.get(
      Uri.parse(baseUrl(nickname)),
      headers: httpHeaders(),
    );
    print(response.body);
    return parseUsers(response.body);
  }

  List<User> parseUsers(String responseBody) {
    final parsed = (jsonDecode(responseBody)['items']).cast<Map<String, dynamic>>();
    return parsed.map<User>((json) => User.fromJson(json)).toList();
  }
}

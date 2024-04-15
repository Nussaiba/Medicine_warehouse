import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:medicine/controller/token.dart';

class ApiController extends GetxController {
  String baseurl = 'http://192.168.207.152:8000/api';

  String token = TokenStorage.getToken();

  Future<dynamic> get({required String url}) async {
    print("res");
    Map<String, String> headers = {};
    if (token != '') {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }
    http.Response response =
        await http.get(Uri.parse('$baseurl/$url'), headers: headers);

    print("${response.body}");

    if (response.statusCode == 200) {
      print("${response.statusCode}");

      return jsonDecode(response.body);
    }
    if (response.statusCode == 422) {
      print("${response.statusCode}");

      return jsonDecode(response.body);
    } else {
      throw Exception('there are problems${response.body}');
    }
  }

  Future<dynamic> post({required String url, dynamic body}) async {
    Map<String, String> headers = {};
    if (token != '') {
      print(222222222222222);
      headers.addAll(
        {'Authorization': 'Bearer $token', 'Accept': 'application/json'},
      );
    }
    http.Response response = await http.post(
      Uri.parse('$baseurl/$url'),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(response.body);

      return data;
    } else {
      throw Exception('${response.statusCode} with Body ${response.body}');
    }
  }

  Future<dynamic> Send({required url, dynamic body}) async {
    Map<String, String> headers = {};

    if (token != '') {
      headers.addAll({
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      });
    }
    var request = http.Request('POST', Uri.parse('$baseurl/$url'));
    request.body = json.encode(body);
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}

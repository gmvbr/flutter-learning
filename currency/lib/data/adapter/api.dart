import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:currency/data/entity/price.dart';
import 'package:currency/data/repository/price.dart';

class AwesomeAPI implements PriceRepository {
  static const String _url = "https://economia.awesomeapi.com.br";

  @override
  Future<List<Price>> last(String symbols) async {
    var url = Uri.parse('$_url/json/last/$symbols');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      if (json is Map<String, dynamic>) {
        var result = <Price>[];
        for (dynamic item in json.values) {
          result.add(Price.fromJson(item));
        }
        return result;
      } else {
        throw Exception("Invalid response");
      }
    } else {
      throw Exception(response.body);
    }
  }
}

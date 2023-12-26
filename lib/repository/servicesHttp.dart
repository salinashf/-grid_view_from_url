import 'dart:convert';
import 'package:grid_view_from_url/util/constants.dart';
import 'package:http/http.dart' as http;
import '../model/cell_model.dart';

class ServicesHttp {
  static Future<List<CellModel>> fetchHomeData() async {
    final http.Response response = await http.get(Uri.parse(URLS.SAMPLE_URL));
    try {
      if (response.statusCode == 200) {
        List<CellModel> list = parsePostsForHome(response.body);
        return list;
      } else {
        throw Exception(MESSAGES.INTERNET_ERROR);
      }
    } catch (e) {
      throw Exception(MESSAGES.INTERNET_ERROR);
    }
  }

  static List<CellModel> parsePostsForHome(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<CellModel>((json) => CellModel.fromJson(json)).toList();
  }
}

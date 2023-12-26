import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:grid_view_from_url/model/buttons_modelc.dart';

class ServicesFile {
  static Future<List<ButtonsModelC>> fetchBtnModelCHomeData(
      BuildContext context) async {
    final String data = await DefaultAssetBundle.of(context)
        .loadString("assets/json/step4 GET_BUTTONS.json");
    List<ButtonsModelC> list = parseBtnModelCForHome(data);
    return list;
  }

  static List<ButtonsModelC> parseBtnModelCForHome(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<ButtonC>((json) => ButtonC.fromJson(json)).toList();
  }
}

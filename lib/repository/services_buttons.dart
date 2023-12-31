import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:grid_view_from_url/model/buttons_grid_model.dart';
import 'package:grid_view_from_url/util/constants.dart';
import 'package:grid_view_from_url/util/custom_logger.dart';
import 'package:http/http.dart' as http;

class ServicesButtons {
  static Future<List<ButtonsMacro>?> fetchButtonGridFromAssets(BuildContext context) async {
    final String data = await DefaultAssetBundle.of(context).loadString("assets/json/step4 GET_BUTTONS.json");
    return parseBtnModel(data);
  }

  static Future<List<ButtonsMacro>?> fetchButtonGridFromURL(BuildContext context) async {
    final http.Response response = await http.get(Uri.parse(URLS.URL_MOCK_GET__BUTTONS));
    try {
      if (response.statusCode == 200) {
        List<ButtonsMacro>? list = parseBtnModel(response.body);
        return list;
      } else {
        throw Exception(MESSAGES.INTERNET_ERROR);
      }
    } catch (e) {
      throw Exception(MESSAGES.INTERNET_ERROR);
    }
  }

  static List<ButtonsMacro>? parseBtnModel(String responseBody) {
    Map<String, dynamic> parsed = json.decode(responseBody);
    List<ButtonsMacro>? lstButton = ButtonsGridModel.fromJson(parsed).buttons;
    lstButton?.sort((a, b) =>a.positonABS().compareTo(b.positonABS()) );
    lstButton?.forEach((x) => logger.w( "x: ${x.positionX} y: ${x.positionY}"    ));
    return lstButton;
    /*
// lstButton?.sort((a, b) => a.positionY!.compareTo(b.positionY!)   );
    lstButton?.sort((a, b) {
      return a.positionY! >  b.positionY! ? 1:0 ;
    } );
*/

  }
}

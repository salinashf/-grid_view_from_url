import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:grid_view_from_url/widget/fancy_button/FancyButton.dart';
import '../model/buttons_model_screen.dart';

class CellFancyLu extends StatelessWidget {
  const CellFancyLu(this.cellModel, {super.key});
  @required
  final ButtonsMacro cellModel;
  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0, top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FancyButton(
              size: 23,
              color: Colors.grey.shade800,
              onPressed: () {},
              child: Image.memory(
                  const Base64Decoder()
                      .convert(cellModel.iconBase64.toString()),
                  width: 40.0,
                  height: 40.0,
                  alignment: Alignment.center,
                  fit: BoxFit.fill),
            ),
          ],
        ),
      ),
    );
  }
}

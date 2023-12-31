import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:grid_view_from_url/util/custom_logger.dart';
import 'package:grid_view_from_url/widget/module/fancy_button_control/FancyButton.dart';
import '../model/buttons_grid_model.dart';
import '../util/string_ext.dart';

class CellButton extends StatelessWidget {
  const CellButton(this.cellModel, {super.key});
  @required
  final ButtonsMacro cellModel;
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
              onPressed: () {
                logger.e('click button ${cellModel.positonABS()}  X:: ${cellModel.positionX}   Y:: ${cellModel.positionY}') ;
              },
              child: Image.memory(
                  const Base64Decoder().convert(
                      cellModel.iconBase64.toString().isNullOrEmpty()
                          ? cellModel.labelBase64.toString()
                          : cellModel.iconBase64.toString()),
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

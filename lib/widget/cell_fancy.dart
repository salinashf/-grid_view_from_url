import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grid_view_from_url/widget/fancy_button/FancyButton.dart';
import '../model/cell_model.dart';

class CellFancy extends StatelessWidget {
  const CellFancy(this.cellModel, {super.key});
  @required
  final CellModel cellModel;
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
              color: Color.fromARGB(255, 54, 131, 75),
              onPressed: () {},
              child: Image.network(cellModel.thumbnailUrl,
                  width: 50.0,
                  height: 50.0,
                  alignment: Alignment.center,
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                cellModel.title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*

child: FancyButton(
        size: 88,
        color: const Color(0xFFCA3034),
        onPressed: () {},
        child: Text(
          cellModel.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 8,
            fontFamily: 'Gameplay',
          ),
        ),
      ),
 */
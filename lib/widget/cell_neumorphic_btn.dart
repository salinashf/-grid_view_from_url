import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';
import '../model/cell_model.dart';

class CellNeumorphic extends StatelessWidget {
  const CellNeumorphic(this.cellModel, {super.key});
  @required
  final CellModel cellModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: NeumorphicButton(
        onTap: () {},
        bottomRightShadowBlurRadius: 15,
        bottomRightShadowSpreadRadius: 1,
        borderWidth: 5,
        backgroundColor: Colors.grey.shade900,
        topLeftShadowBlurRadius: 15,
        topLeftShadowSpreadRadius: 1,
        topLeftShadowColor: Colors.grey.shade800,
        bottomRightShadowColor: Colors.black,
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(50),
        bottomRightOffset: const Offset(5, 5),
        topLeftOffset: const Offset(-5, -5),
        child: Image.network(cellModel.thumbnailUrl,
            width: 50.0,
            height: 50.0,
            alignment: Alignment.center,
            fit: BoxFit.fill),
      ),
    );
  }
}

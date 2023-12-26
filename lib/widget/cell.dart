import 'package:flutter/material.dart';
import '../model/cell_model.dart';

class Cell extends StatelessWidget {
  const Cell(this.cellModel, {super.key});
  @required
  final CellModel cellModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0, top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(cellModel.thumbnailUrl,
                width: 50.0,
                height: 50.0,
                alignment: Alignment.center,
                fit: BoxFit.fill),
            Padding(
              padding: const  EdgeInsets.all(16.0),
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

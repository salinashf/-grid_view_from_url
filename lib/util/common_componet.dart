import 'package:flutter/material.dart';
import 'package:grid_view_from_url/model/buttons_grid_model.dart';
import 'package:grid_view_from_url/widget/cell_button.dart';
import 'constants.dart';

class ComComp {
  static CircularProgressIndicator loadDataCircularProgress() {
    return const CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(COLORS.APP_THEME_COLOR),
    );
  }

  static TextButton connectionRetryButton(Function fetch) {
    return TextButton(
      child: const Text(
        MESSAGES.INTERNET_ERROR_RETRY,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
      onPressed: () => fetch(),
    );
  }

  static Padding buttonsGrid(AsyncSnapshot<List<ButtonsMacro>?> snapshot, Function gridClicked) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0, top: 30.0),
      child: RotatedBox(
          quarterTurns: 1,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10, crossAxisSpacing: 1.0, mainAxisSpacing: 0.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: CellButton(snapshot.data![index]),
                onTap: () => gridClicked(context, snapshot.data![index]),
              );
            },
          )),
    );
  }
}

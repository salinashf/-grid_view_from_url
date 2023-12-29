import 'package:flutter/material.dart';
import 'package:grid_view_from_url/model/buttons_model_grid.dart';
import 'package:grid_view_from_url/widget/cell_button.dart';
import 'constants.dart';

class ComComp {
  static AppBar getAppBar(Color color, String title) {
    return AppBar(
      backgroundColor: COLORS.APP_THEME_COLOR,
      title: Center(
        child: Text(title.toUpperCase()),
      ),
      actions: const <Widget>[],
    );
  }

  static CircularProgressIndicator circularProgress() {
    return const CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(COLORS.APP_THEME_COLOR),
    );
  }

  static Padding homeGrid(
      AsyncSnapshot<List<ButtonsMacro>?> snapshot, Function gridClicked) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, bottom: 20.0, top: 30.0),
      child: RotatedBox(
          quarterTurns: 1,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data?.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8, crossAxisSpacing: 1.0, mainAxisSpacing: 0.0),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: CellButton(snapshot.data![index]),
                onTap: () => gridClicked(context, snapshot.data![index]),
              );
            },
          )),
    );
  }

  static TextButton retryButton(Function fetch) {
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

  static Padding text(String text, FontWeight fontWeight, double fontSize,
      List padding, Color color, TextOverflow overflow) {
    return Padding(
      padding: EdgeInsets.only(
          left: padding[0],
          right: padding[1],
          top: padding[2],
          bottom: padding[3]),
      child: Text(
        text,
        textAlign: TextAlign.left,
        overflow: overflow,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }

  static GestureDetector internetErrorText(Function pcallback) {
    return GestureDetector(
      //onTap: pcallback,
      child: const Center(
        child: Text(MESSAGES.INTERNET_ERROR),
      ),
    );
  }
}

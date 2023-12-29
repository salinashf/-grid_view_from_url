import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import '../../model/buttons_model_grid.dart';
import '../../repository/services_buttons.dart';
import '../../util/common_componet.dart';
class GridButtonsScreen extends StatefulWidget {
  const GridButtonsScreen({Key? key}) : super(key: key);
  @override
  GridButtonsState createState() => GridButtonsState();
}
class GridButtonsState extends State<GridButtonsScreen> {
  late bool isHomeDataLoading;
  @override
  void initState() {
    super.initState();
    isHomeDataLoading = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      //appBar: ComComp.getAppBar(COLORS.APP_THEME_COLOR, "Home"),
      body: Center(
        child: FutureBuilder<List<ButtonsMacro>?>(
          future: ServicesButtons.fetchButtonGridFromAssets(context),
          builder: (context, snapshot) {
            //logger.e(snapshot);
            return snapshot.connectionState == ConnectionState.done
                ? snapshot.hasData
                    ? ComComp.buttonsGrid(snapshot, gridClicked)
                    : ComComp.connectionRetryButton(fetch)
                : ComComp.loadDataCircularProgress();
          },
        ),
      ),
    );
  }
  setLoading(bool loading) {
    setState(() {
      isHomeDataLoading = loading;
    });
  }
  fetch() {
    setLoading(true);
  }
}
gridClicked(BuildContext context, ButtonsMacro cellModel) {
  if (kDebugMode) {
    //logger.d('cell press ${cellModel.positionX}');
  }
  Vibration.vibrate(duration: 1000);
  // Grid Click
}

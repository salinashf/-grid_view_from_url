import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'model/cell_model.dart';
import 'util/custom_logger.dart';
import 'util/common_componet.dart';
import 'util/constants.dart';
import 'repository/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late bool isHomeDataLoading;

  @override
  void initState() {
    super.initState();
    isHomeDataLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: ComComp.getAppBar(COLORS.APP_THEME_COLOR, "Home"),
      body: Center(
        child: FutureBuilder<List<CellModel>>(
          future: Services.fetchHomeData(),
          builder: (context, snapshot) {
            return snapshot.connectionState == ConnectionState.done
                ? snapshot.hasData
                    ? ComComp.homeGrid(snapshot, gridClicked)
                    : ComComp.retryButton(fetch)
                : ComComp.circularProgress();
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

gridClicked(BuildContext context, CellModel cellModel) {
  if (kDebugMode) {
    logger.d('cell press ${cellModel.id}');
  }
  // Grid Click
}

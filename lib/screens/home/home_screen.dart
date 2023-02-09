import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:testo/screens/tab_selector.dart';
import 'package:testo/store/app.state.dart';
import 'package:testo/store/image/image.action.dart';
import 'package:testo/store/image/image.middleware.dart';
import 'package:testo/store/image/image.state.dart';
import 'package:testo/tabs/active_tab.dart';

import '../../models/app_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    return ActiveTab(builder: (BuildContext context, AppTab activeTab) {
      return Scaffold(
        // TODO: Вынести каждый таб в отдельный Скаффолд
        appBar: getAppBarByAppTab(activeTab),
        body: Column(
          children: [
            getAppWidgetByAppTab(activeTab),
            Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.all(16),
              child: StoreConnector<AppState, AppState>(
                converter: (store) => store.state,
                builder: (context, vm) => vm.imageState.image,
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.all(16),
              child: StoreConnector<AppState, AppState>(
                converter: (store) => store.state,
                builder: (context, vm) => vm.appBarByTabState.appBar,
              ),
            ),
            ElevatedButton(
              child: Text('получить'),
              onPressed: () => store.dispatch(GetImageAction()),
            )
          ],
        ),
        bottomNavigationBar: const TabSelector(),
      );
    });
  }
}

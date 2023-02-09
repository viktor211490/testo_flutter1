import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:testo/store/app.state.dart';

import '../models/app_tab.dart';

class ActiveTab extends StatelessWidget {
  final ViewModelBuilder<AppTab> builder;
  const ActiveTab({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppTab>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.activeTab,
      distinct: true,
    );
  }
}

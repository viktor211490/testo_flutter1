import 'package:redux/redux.dart';

import '../app.state.dart';

Middleware<AppState> getAppBarByTab() {
  return (Store<AppState> store, action, NextDispatcher dispatch) async {
    dispatch(action);
    try {
      // TODO: Write here your middleware logic and api calls
    } catch (error) {
      // TODO: API Error handling
      print(error);
    }
  };
}

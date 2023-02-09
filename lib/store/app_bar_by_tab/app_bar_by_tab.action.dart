import 'package:flutter/material.dart';

import 'app_bar_by_tab.state.dart';

class GetAppWidgetByAppTabAction {}

class LoadedAppWidgetByAppTabAction {
  final AppBarByTabState appBar;

  LoadedAppWidgetByAppTabAction(this.appBar);
}

class AppBarByTabAction {
  @override
  String toString() {
    return 'AppBarByTabAction { }';
  }
}

class AppBarByTabSuccessAction {
  final int isSuccess;

  AppBarByTabSuccessAction({required this.isSuccess});
  @override
  String toString() {
    return 'AppBarByTabSuccessAction { isSuccess: $isSuccess }';
  }
}

class AppBarByTabFailedAction {
  final String error;

  AppBarByTabFailedAction({required this.error});

  @override
  String toString() {
    return 'AppBarByTabFailedAction { error: $error }';
  }
}

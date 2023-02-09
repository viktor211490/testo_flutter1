import 'package:flutter/material.dart';
import 'package:testo/store/image/image.state.dart';

import '../models/app_tab.dart';

class TabAction {
  @override
  String toString() {
    return 'TabActionsAction { }';
  }
}

class TabSuccessAction {
  final int isSuccess;

  TabSuccessAction({required this.isSuccess});
  @override
  String toString() {
    return 'TabSuccessAction { isSuccess: $isSuccess }';
  }
}

class TabsFailedAction {
  final String error;

  TabsFailedAction({required this.error});

  @override
  String toString() {
    return 'TabActionsFailedAction { error: $error }';
  }
}

class UpdateTabAction {
  final AppTab newTab;

  UpdateTabAction(this.newTab);

  @override
  String toString() {
    return 'UpdateTabAction{newTab: $newTab}';
  }
}

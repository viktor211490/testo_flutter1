import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:testo/redux/actions.dart';
import 'package:testo/redux/pub_state.dart';
import 'dart:async';

void loaderMiddleware(
    Store<AppState> store, dynamic action, NextDispatcher nextDispatcher) {
  if (action is GetImageAction) {}

  nextDispatcher(action);
}

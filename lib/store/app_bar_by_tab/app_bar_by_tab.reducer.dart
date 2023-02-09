import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:testo/store/app_bar_by_tab/app_bar_by_tab.action.dart';
import './app_bar_by_tab.state.dart';

final appbarbytabReducer = combineReducers<AppBarByTabState>([
  TypedReducer<AppBarByTabState, GetAppWidgetByAppTabAction>(_getImageReducer),
  TypedReducer<AppBarByTabState, LoadedAppWidgetByAppTabAction>(
      _loadedImageReducer),
]);

AppBarByTabState _getImageReducer(
        AppBarByTabState widget, GetAppWidgetByAppTabAction action) =>
    AppBarByTabState(AppBar(title: CircularProgressIndicator()));

AppBarByTabState _loadedImageReducer(
        AppBarByTabState widget, LoadedAppWidgetByAppTabAction action) =>
    AppBarByTabState(AppBar(title: CircularProgressIndicator()));

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:testo/redux/pub_state.dart';

import 'actions.dart';

AppState reducer(AppState state, dynamic action) => AppState(
      counter: _counterReducer(state.counter, action),
      text: _textReducer(state.text, action),
      widget: _widgetReducer(state.widget, action),
    );

Reducer<int> _counterReducer = combineReducers([
  TypedReducer<int, IncrementCounterAction>(_incrementCounterReducer),
  TypedReducer<int, DecrementCounterAction>(_decrementCounterReducer),
]);

Reducer<String> _textReducer = combineReducers([
  TypedReducer<String, SetTextAction>(_setTextReducer),
  TypedReducer<String, RemoveTextAction>(_resetTextReducer),
]);

Reducer<Widget> _widgetReducer = combineReducers([
  TypedReducer<Widget, GetImageAction>(_getImageReducer),
  TypedReducer<Widget, LoadedImageAction>(_loadedImageReducer),
]);
String _setTextReducer(String text, SetTextAction action) => action.text;
String _resetTextReducer(String text, RemoveTextAction action) => "";
int _incrementCounterReducer(int count, IncrementCounterAction action) =>
    count + 1;
int _decrementCounterReducer(int count, DecrementCounterAction action) =>
    count - 1;

Widget _getImageReducer(Widget widget, GetImageAction action) =>
    const Center(child: CircularProgressIndicator());

Widget _loadedImageReducer(Widget widget, LoadedImageAction action) =>
    action.widget;

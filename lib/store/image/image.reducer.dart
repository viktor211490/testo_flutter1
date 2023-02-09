import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import '../tabs.action.dart';
import './image.state.dart';
import 'image.action.dart';

final imageReducer = combineReducers<ImageState>([
  TypedReducer<ImageState, GetImageAction>(_getImageReducer),
  TypedReducer<ImageState, LoadedImageAction>(_loadedImageReducer),
]);
ImageState _getImageReducer(ImageState widget, GetImageAction action) =>
    ImageState(Center(child: CircularProgressIndicator()));

ImageState _loadedImageReducer(ImageState widget, LoadedImageAction action) =>
    action.widget;

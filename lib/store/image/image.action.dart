import 'package:flutter/material.dart';
import 'package:testo/store/image/image.state.dart';

class GetImageAction {}

class LoadedImageAction {
  final ImageState widget;

  LoadedImageAction({required this.widget});
}

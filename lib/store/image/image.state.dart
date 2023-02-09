import 'package:flutter/material.dart';

class ImageState {
  final Widget image;

  ImageState(
    this.image,
  );

  factory ImageState.initial() => ImageState(
        Icon(Icons.image),
      );

  ImageState copyWith() => ImageState(
        image ?? this.image,
      );

  Widget getWidget() => image;

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is ImageState &&
          runtimeType == other.runtimeType &&
          image == other.image;

  @override
  int get hashCode => super.hashCode ^ runtimeType.hashCode ^ image.hashCode;

  @override
  String toString() => "ImageState { image: $image}";
}

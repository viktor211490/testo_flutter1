import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarByTabState {
  final Widget appBar;

  AppBarByTabState(this.appBar);

  factory AppBarByTabState.initial() => AppBarByTabState(AppBar());

  AppBarByTabState copyWith({Widget? appBar}) => AppBarByTabState(
        appBar ?? this.appBar,
      );

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is AppBarByTabState &&
          runtimeType == other.runtimeType &&
          appBar == other.appBar;

  @override
  int get hashCode => super.hashCode ^ runtimeType.hashCode ^ appBar.hashCode;
}

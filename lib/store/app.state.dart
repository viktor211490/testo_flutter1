import './app_bar_by_tab/app_bar_by_tab.state.dart';
import './image/image.state.dart';
import 'package:testo/models/app_tab.dart';

class AppState {
final AppBarByTabState appBarByTabState;
  final ImageState imageState;
  final AppTab activeTab;

  AppState({required this.appBarByTabState,
    required this.imageState,
    this.activeTab = AppTab.menu,
  });

  factory AppState.initial() => AppState(appBarByTabState: AppBarByTabState.initial(),
        imageState: ImageState.initial(),
      );

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType && appBarByTabState == other.appBarByTabState  &&
          imageState == other.imageState &&
          activeTab == other.activeTab;
  @override
  int get hashCode => super.hashCode ^ appBarByTabState.hashCode  ^ imageState.hashCode ^ activeTab.hashCode;
  @override
  String toString() {
    return "AppState { appBarByTabState: $appBarByTabState imageState: $imageState activeTabState: $activeTab }";
  }
}

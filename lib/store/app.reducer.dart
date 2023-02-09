import './app_bar_by_tab/app_bar_by_tab.reducer.dart';
import './image/image.reducer.dart';
import 'package:testo/store/tabs.reducer.dart';

import './app.state.dart';

AppState appReducer(AppState state, action) {
  return AppState(appBarByTabState: appbarbytabReducer(state.appBarByTabState, action),imageState: imageReducer(state.imageState, action),
    activeTab: tabsReducer(state.activeTab, action),
  );
}

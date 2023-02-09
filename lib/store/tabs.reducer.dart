import 'package:redux/redux.dart';
import 'package:testo/models/app_tab.dart';
import 'package:testo/store/tabs.action.dart';

final tabsReducer = combineReducers<AppTab>(
    [TypedReducer<AppTab, UpdateTabAction>(_activeTabReducer)]);

AppTab _activeTabReducer(AppTab activeTab, UpdateTabAction action) {
  return action.newTab;
}

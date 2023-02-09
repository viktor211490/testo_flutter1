import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:testo/models/app_tab.dart';
import 'package:testo/store/app.state.dart';
import 'package:testo/store/tabs.action.dart';
import 'package:testo/tabs/active_tab.dart';

import '../models/keys.dart';

class TabSelector extends StatelessWidget {
  const TabSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    return StoreConnector<AppState, AppState>(
      distinct: true,
      converter: (store) => store.state,
      builder: (context, vm) {
        return NavigationBar(
          backgroundColor: Theme.of(context).navigationBarTheme.backgroundColor,
          key: ArchSampleKeys.tabs,
          selectedIndex: AppTab.values.indexOf(vm.activeTab),
          onDestinationSelected: (value) =>
              store.dispatch(UpdateTabAction(AppTab.values[value])),
          elevation: Theme.of(context).navigationBarTheme.elevation,
          destinations: AppTab.values.map((tab) {
            return NavigationDestination(
              icon: getIconByAppTab(tab),
              label: getAppTitleByAppTab(tab),
            );
          }).toList(),
        );
      },
    );
  }
}

// class _ViewModel {
//   final AppTab activeTab;
//   final Function(int) onTabSelected;
//
//   _ViewModel(@required this.activeTab, @required this.onTabSelected);
//
//   static _ViewModel fromStore(Store<AppState> store) {
//     return _ViewModel(store.state.activeTab, (index) {
//       store.dispatch(UpdateTabAction((AppTab.values[index])));
//     });
//   }
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is _ViewModel &&
//           runtimeType == other.runtimeType &&
//           activeTab == other.activeTab;
//
//   @override
//   int get hashCode => activeTab.hashCode;
// }

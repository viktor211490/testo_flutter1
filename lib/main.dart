import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:testo/app.dart';
import 'package:testo/store/app.middleware.dart';
import 'package:testo/store/app.reducer.dart';
import 'package:testo/store/app.state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Store<AppState> store = Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: appMiddleware(),
  );
  runApp(ReduxApp(
    store: store,
  ));
}

// class _Counter extends StatelessWidget {
//   String inputText = "";
//   @override
//   Widget build(BuildContext context) {
//     final Store<AppState> store = StoreProvider.of<AppState>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(S.of(context).app_bar_title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 150,
//               height: 150,
//               margin: const EdgeInsets.all(16),
//               child: StoreConnector<AppState, AppState>(
//                 converter: (store) => store.state,
//                 builder: (context, vm) => vm.widget,
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () => store.dispatch(GetImageAction()),
//                 child: Text("getImage")),
//             Container(
//               width: 200,
//               child: TextField(
//                 onChanged: (value) => inputText = value,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             StoreConnector<AppState, AppState>(
//                 converter: (store) => store.state,
//                 builder: (context, vm) => Text(vm.text)),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                     onPressed: () => store.dispatch(RemoveTextAction()),
//                     child: Text("remove")),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 ElevatedButton(
//                     onPressed: () =>
//                         store.dispatch(SetTextAction(text: inputText)),
//                     child: Text("Set")),
//               ],
//             ),
//             StoreConnector<AppState, AppState>(
//                 converter: (store) => store.state,
//                 builder: (context, vm) => Text(
//                       vm.counter.toString(),
//                       style: TextStyle(fontSize: 30),
//                     )),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 FloatingActionButton(
//                     onPressed: () => store.dispatch(DecrementCounterAction()),
//                     child: const Icon(Icons.remove)),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 FloatingActionButton(
//                     onPressed: () => store.dispatch(IncrementCounterAction()),
//                     child: const Icon(Icons.add)),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

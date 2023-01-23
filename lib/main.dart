import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:testo/redux/actions.dart';
import 'package:testo/redux/middleware.dart';
import 'package:testo/redux/pub_state.dart';
import 'package:testo/redux/reducers.dart';
import 'generated/l10n.dart';
import 'generated_code/testo_api.swagger.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() async {
  final testoApi =
      TestoApi.create(baseUrl: Uri.parse('https://admin.testo-dubna.ru'));
  await testoApi.apiRestaurantGet().then((value) => {
        print('${value.body}'),
      });
  final Store<AppState> store = Store(reducer,
      middleware: [loaderMiddleware],
      initialState: AppState(counter: 0, text: "", widget: Icon(Icons.image)));
  runApp(StoreProvider(
    store: store,
    child: MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: _Counter(),
    ),
  ));
}

class _Counter extends StatelessWidget {
  String inputText = "";
  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).app_bar_title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.all(16),
              child: StoreConnector<AppState, AppState>(
                converter: (store) => store.state,
                builder: (context, vm) => vm.widget,
              ),
            ),
            ElevatedButton(
                onPressed: () => loadImageThunkAction(store),
                child: Text("getImage")),
            Container(
              width: 200,
              child: TextField(
                onChanged: (value) => inputText = value,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            StoreConnector<AppState, AppState>(
                converter: (store) => store.state,
                builder: (context, vm) => Text(vm.text)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => store.dispatch(RemoveTextAction()),
                    child: Text("remove")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () =>
                        store.dispatch(SetTextAction(text: inputText)),
                    child: Text("Set")),
              ],
            ),
            StoreConnector<AppState, AppState>(
                converter: (store) => store.state,
                builder: (context, vm) => Text(
                      vm.counter.toString(),
                      style: TextStyle(fontSize: 30),
                    )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    onPressed: () => store.dispatch(DecrementCounterAction()),
                    child: const Icon(Icons.remove)),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                    onPressed: () => store.dispatch(IncrementCounterAction()),
                    child: const Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

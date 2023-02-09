import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';
import 'package:testo/store/image/image.action.dart';
import 'package:testo/store/image/image.state.dart';

import '../app.state.dart';

Middleware<AppState> getImage() {
  return (Store<AppState> store, dynamic action,
      NextDispatcher dispatch) async {
    try {
      if (action is GetImageAction) {
        _loadImage('https://picsum.photos/200/300').then((value) =>
            store.dispatch(LoadedImageAction(widget: ImageState(value))));
      }
    } catch (error) {
      // TODO: API Error handling
      print(error);
    }
    dispatch(action);
  };
}

Future<Widget> _loadImage(String url) async {
  return Image.network(url);
}

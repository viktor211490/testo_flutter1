import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:testo/generated_code/testo_api.swagger.dart';

class IncrementCounterAction {}

class DecrementCounterAction {}

class SetTextAction {
  final String text;

  SetTextAction({required this.text});
}

class RemoveTextAction {}

class GetImageAction {}

class LoadedImageAction {
  final Widget widget;

  LoadedImageAction({required this.widget});
}

ThunkAction loadImageThunkAction = (Store store) async {
  store.dispatch(GetImageAction());
  _loadImage('https://picsum.photos/200/300')
      .then((value) => store.dispatch(LoadedImageAction(widget: value)));
};

Future<Widget> _loadImage(String url) async {
  final testoApi =
      TestoApi.create(baseUrl: Uri.parse('https://admin.testo-dubna.ru'));
  RestaurantCodeGenDto gg = new RestaurantCodeGenDto();
  await testoApi.apiRestaurantGet().then((value) => gg = value.body!.first);
  await Future.delayed(Duration(seconds: 3));
  print(gg.name);
  return Image.network(url);
}

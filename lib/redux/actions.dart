import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  List<Card> cardList = [];
  final testoApi =
      TestoApi.create(baseUrl: Uri.parse('https://admin.testo-dubna.ru'));
  testoApi
      .apiAuthRequestCodePost(
          body: RequestCodeCommand(phoneNumber: "+79969419868"))
      .then((value) => {
            print(value.body),
          });
  await testoApi.apiRestaurantGet().then((value) => {
        value.body!.forEach((element) {
          cardList.add(Card(
            child: Text(element.name!),
          ));
        })
      });
  return Column(
    children: cardList,
  );
}

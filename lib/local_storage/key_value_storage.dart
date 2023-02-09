import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testo/local_storage/restaurants_repository.dart';

import '../generated_code/testo_api.swagger.dart';

class KeyValueStorage implements RestaurantRepository {
  final String key;
  final SharedPreferences store;
  final JsonCodec codec;

  const KeyValueStorage(this.key, this.store, [this.codec = json]);

  @override
  Future<List<RestaurantCodeGenDto>> loadRestaurants() async {
    const JsonDecoder decoder = JsonDecoder();
    var data = store.getString(key);
    var result = codec
        .decode(data!)['todos']
        .cast<Map<String, dynamic>>()
        .map<RestaurantCodeGenDto>(RestaurantCodeGenDto.fromJson)
        .toList(growable: false);
    return result;
  }

  @override
  Future<bool> saveRestaurants(List<RestaurantCodeGenDto> todos) {
    return store.setString(
      key,
      codec.encode({
        'todos': todos.map((todo) => todo.toJson()).toList(),
      }),
    );
  }
}

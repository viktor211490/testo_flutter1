// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'dart:async';
import 'dart:core';

import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';
import 'package:testo/generated_code/testo_api.swagger.dart';
import 'package:testo/local_storage/restaurants_repository.dart';

/// A class that glues together our local file storage and web client. It has a
/// clear responsibility: Load Todos and Persist todos.
class LocalStorageRepository implements RestaurantRepository {
  final RestaurantRepository localStorage;

  const LocalStorageRepository({
    required this.localStorage,
  });

  /// Loads todos first from File storage. If they don't exist or encounter an
  /// error, it attempts to load the Todos from a Web Client.
  @override
  Future<List<RestaurantCodeGenDto>> loadRestaurants() async {
    final TestoApi testoApi =
        TestoApi.create(baseUrl: Uri.parse('https://admin.testo-dubna.ru'));

    try {
      return await localStorage.loadRestaurants();
    } catch (e) {
      final testoApi =
          TestoApi.create(baseUrl: Uri.parse('https://admin.testo-dubna.ru'));
      final todos = await testoApi.apiRestaurantGet();

      await localStorage.saveRestaurants(todos.body!);

      return todos.body!;
    }
  }

  // Persists todos to local disk and the web
  @override
  Future saveRestaurants(List<RestaurantCodeGenDto> todos) {
    return Future.wait<dynamic>([
      localStorage.saveRestaurants(todos),
    ]);
  }
}

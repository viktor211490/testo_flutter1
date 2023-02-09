import '../generated_code/testo_api.swagger.dart';

abstract class RestaurantRepository {
  Future<List<RestaurantCodeGenDto>> loadRestaurants();

  Future saveRestaurants(List<RestaurantCodeGenDto> restaurants);
}

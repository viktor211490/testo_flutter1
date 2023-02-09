import 'package:testo/generated_code/testo_api.swagger.dart';

abstract class ReactiveCartItemRepository {
  Future<void> addIteToCart(ProductCodeGenDto product);
  Future<void> removeIteToCart(List<String> idList);

  Stream<List<ProductCodeGenDto>> cartItems();
}

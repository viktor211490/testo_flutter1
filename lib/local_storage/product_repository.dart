import '../generated_code/testo_api.swagger.dart';

abstract class ProductRepository {
  Future<List<ProductCodeGenDto>> loadProducts();

  Future saveProducts(List<ProductCodeGenDto> products);
}

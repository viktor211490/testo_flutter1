import 'package:testo/generated_code/testo_api.swagger.dart';

abstract class UserRepository {
  Future<ApplicationUserCodeGenDto> login();
}

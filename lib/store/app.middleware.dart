import 'package:redux/redux.dart';
import 'package:testo/store/image/image.middleware.dart';
import './app.state.dart';

List<Middleware<AppState>> appMiddleware() {
  return [getImage()];
}

import 'core/global_listener/global_listener.dart';
import 'core/module/module.dart';
import 'core/res/global_listener_constants.dart';
import 'di/di.dart';

class GlobalModule extends Module {
  @override
  void registerDependencies() {}

  @override
  void close() {
    super.close();
    inject<GlobalListener>().close();
  }

  @override
  void registerGlobalListeners() {}
}

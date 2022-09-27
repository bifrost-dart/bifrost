import 'package:bifrost/common.dart';
import 'package:heimdall/core.dart';

class Bifrost {
  late Heimdall app;
  late Module _rootModule;

  Bifrost(Module mod) {
    app = Heimdall();
    _rootModule = mod;

    registerModules();
  }

  void enableCors() {
    app.enableCors();
  }

  Heimdall createPortal() {
    return app;
  }

  void registerModules() {
    _rootModule.controller.router;

    this
        .app
        .useRouter(_rootModule.controller.name, _rootModule.controller.router);
  }

  void listen(int port) {
    app.listen(port);
    print("Bifrost running on portal $port");
  }
}

import 'package:heimdall/core.dart';

class Bifrost {
  late Heimdall app;
  late Type _rootModule;

  Bifrost(Type rootModule) {
    app = Heimdall();
    _rootModule = rootModule;

    // registerModules();
  }

  void enableCors() {
    app.enableCors();
  }

  Heimdall createPortal() {
    return app;
  }

  void listen(int port) {
    app.listen(port);
    print("Bifrost running on portal $port");
  }
}

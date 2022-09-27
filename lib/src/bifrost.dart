import 'package:heimdall/core.dart';

class Bifrost {
  late Heimdall app;

  Bifrost() {
    app = Heimdall();
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

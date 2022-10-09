import 'package:heimdall/router.dart';

abstract class IController {
  config() {}
}

class Controller {
  late IController _controller;
  late String name;
  late Router router;

  Controller(String controllerName, IController controller) {
    name = controllerName;
    _controller = controller;

    router = Router();

    router.get("/hello", (ctx) {
      ctx.res.send({"hello", "yes"});
    });
  }
}

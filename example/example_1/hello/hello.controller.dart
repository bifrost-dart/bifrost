import 'package:bifrost/common.dart';

class HelloController implements IController {
  @override
  config() {}
}

var helloController = Controller("/hello", HelloController());

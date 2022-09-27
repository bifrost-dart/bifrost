import 'package:bifrost/core.dart';
import 'package:bifrost/src/controller.dart';

abstract class IModule {
  config() {}
}

class Module {
  late Controller controller;

  Module(IModule mod, Controller controller) {
    controller = controller;
  }
}

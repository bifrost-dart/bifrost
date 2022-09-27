import 'package:bifrost/common.dart';
import './hello.controller.dart';

class HelloModule implements IModule {
  @override
  config() {}
}

var module = Module(HelloModule(), helloController);

import 'dart:ffi';

import 'package:bifrost/core.dart';
import 'package:bifrost/common.dart';

import 'app/app.module.dart';

void main() {
  var app = Bifrost(AppModule);

  app.listen(3001);
}

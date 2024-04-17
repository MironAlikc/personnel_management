import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:personnel_management/resources/resources.dart';

void main() {
  test('app_pngs assets test', () {
    expect(File(AppPngs.splashImage).existsSync(), isTrue);
  });
}

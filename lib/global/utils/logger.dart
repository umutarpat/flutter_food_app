// ignore_for_file: avoid_print
import 'package:flutter/foundation.dart';

const kLOG_TAG = "[Mobile]";
void logger(dynamic data) {
  DateTime now = DateTime.now();
  if (kDebugMode)
    print(
        "[${now.hour.toString() + ":" + now.minute.toString()}]$kLOG_TAG${data.toString()}");
}
